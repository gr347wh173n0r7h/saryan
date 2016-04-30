class PlannerController < ApplicationController
  def index
    if  !logged_in?
      redirect_to login_path
    else
      @academic = Academic.where(:user_id => current_user.id)
      if @academic.empty?
        redirect_to academics_new_path
      else
        @academic = @academic.take
        @school = School.find(@academic.school_id)
        @major = Major.find(@academic.major_id)
        @catalog = Catalog.find(@academic.catalog_id)
        @courses = @catalog.courses
      end
    end
  end

  def new
    if  !logged_in?
      redirect_to login_path
    else
      @academic = Academic.where(:user_id => current_user.id)
      if @academic.empty?
        redirect_to academics_new_path
      else
        @academic = @academic.take
        @school = School.find(@academic.school_id)
        @major = Major.find(@academic.major_id)
        @catalog = Catalog.find(@academic.catalog_id)
        @courses = @catalog.courses
        @plans = SavedPlan.where(:major => @major.name).all
        # --------------------------
        @planner = Planner.new
      end
    end
  end

  def show
    if  !logged_in?
      redirect_to login_path
    else
      @academic = Academic.where(:user_id => current_user.id)
      if @academic.empty?
        redirect_to academics_new_path
      else
        @academic = @academic.take
        @school = School.find(@academic.school_id)
        @major = Major.find(@academic.major_id)
        @catalog = Catalog.find(@academic.catalog_id)
        @courses = @catalog.courses

        @plans = SavedPlan.where(:major => @major.name).all

        @plan = SavedPlan.find(params[:id])
        @semester = @plan.semesters
        @sem_courses = []
        @semester.each do |sem|
          sem.courses.each do |c|
            @sem_courses.push c
          end
        end
      end
    end
  end

  def create
    @user = current_user
    @planner = Planner.new()
    @planner[:user_id] = @user[:id]
    @planner[:name] = planner_params[:name]
    planner_params[:plan_string].split(',').each do |p|
      ident = p.split('-')
      if ident[0] == 'S'
        @sem = @planner.semesters.build(name: ident[1])
        @sem.save
      else
        @course = Course.find(ident[1])
        @sem.courses << @course
        @sem.save
      end
    end
    if @planner.save
      flash[:success] = "Preferences Set"
      redirect_to @user
    else
      flash[:failure] = "Error Cccured"
      render @user
    end
  end

  private

  def planner_params
    params.require(:planner).permit( :name, :plan_string)
  end

end

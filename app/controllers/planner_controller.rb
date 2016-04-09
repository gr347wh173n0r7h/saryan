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
        @plan = SavedPlan.find(params[:id])
        # @semester = @plan.semesters
        # @sem_courses = SavedPlan.courses

        @academic = @academic.take
        @school = School.find(@academic.school_id)
        @major = Major.find(@academic.major_id)
        @catalog = Catalog.find(@academic.catalog_id)
        @courses = @catalog.courses
      end
    end
  end

end

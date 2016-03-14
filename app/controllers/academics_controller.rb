class AcademicsController < ApplicationController
  def index
    @school = School.all
    @dep = Department.all
    @major = Major.all
    @catalog = Catalog.all
  end

  def new
    @user = current_user
    @school = School.all
    @dep = Department.all
    @major = Major.all
    @catalog = Catalog.all

    @academic = Academic.new
  end

  def create
    @user = current_user
    @academic = Academic.new()
    @academic[:user_id] = @user[:id]
    @academic[:school_id] = academic_params[:school_id]
    @academic[:department_id] = academic_params[:department_id]
    @academic[:major_id] = academic_params[:major_id]
    @academic[:catalog_id] = academic_params[:catalog_id]
    if @academic.save
      flash[:success] = "Preferences Set"
      redirect_to @user
    else
      flash[:failure] = "Error Cccured"
      render 'new'
    end
  end

  private

  def academic_params
    params.require(:academic).permit( :school_id, :department_id, :major_id, :catalog_id)
  end

end

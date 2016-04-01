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
        # @dep = School.find(@academic.department_id)
        @catalog = Catalog.find(@academic.catalog_id)
        @courses = @catalog.courses
        # @sup_cat = @catalog.super_cats
        # @cat = @sup_cat.categories
        # @sub_cat = @cat.sub_categories
      end
    end
  end

  def new
    if  !logged_in?
      redirect_to login_path
    end
  end
end

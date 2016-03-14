class PlannerController < ApplicationController
  def index

    if  !logged_in?
      redirect_to login_path
    end
    @academic = Academic.where(:user_id => current_user.id)
    if @academic.empty?
      redirect_to academics_new_path
    else
      @academic = @academic.take
      @courses = Catalog.find(@academic.catalog_id).courses
    end

  end

  def new
    if  !logged_in?
      redirect_to login_path
    end
  end
end

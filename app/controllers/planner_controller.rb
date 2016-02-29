class PlannerController < ApplicationController
  def index
    if  !logged_in?
      redirect_to login_path
    end
  end

  def new
    if  !logged_in?
      redirect_to login_path
    end
  end
end

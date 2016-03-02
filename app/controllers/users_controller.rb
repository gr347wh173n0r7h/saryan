class UsersController < ApplicationController
	before_action :logged_in_user, only: [:show]
	before_action :not_logged_in_user, only: [:new]

	def show
			if session[:user_id].to_s == params[:id].to_s
				@user = User.find(params[:id])
			else
				redirect_to current_user
			end
	end

	def new
			@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			flash[:success] = "Welcome to the SARYAN"
			redirect_to @user
		else
			flash[:failure] = "Error occured"
			render 'new'
		end
	end

	private

		def user_params
      		params.require(:user).permit(:name, :email, :status, :password,
                                   :password_confirmation)
		end

		def logged_in_user
			unless logged_in?
				redirect_to login_path
			end
		end

		def not_logged_in_user
			unless !logged_in?
				redirect_to root_path
			end
		end

end

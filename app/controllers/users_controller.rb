class UsersController < ApplicationController
	before_action :logged_in_user, only: [:show]
	before_action :not_logged_in_user, only: [:new]

	helper_method :user_status

	def show
		if session[:user_id].to_s == params[:id].to_s
			@user = User.find(params[:id])
			# testing lines up to else.
			@academic = Academic.where(user_id: params[:id])
			@academic = @academic.take
			@major = Major.find(@academic.major_id)
			user_status
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
			redirect_to academics_new_path
		else
			flash[:failure] = "Error occured"
			render 'new'
		end
	end

	def edit
		if session[:user_id].to_s == params[:id].to_s
			@user = User.find(params[:id])
			render action: "edit"
		else
			redirect_to current_user
		end
  end

  def update
   #   sign_in @user
    @user = User.find_by_id(params[:id])
		if @user.update_attributes(params[:user])
   # @user.update_attributes(params[:user])

		flash[:success] = "Profile updated"
	#	redirect_to current_user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed"
    redirect_to users_path
  end

	def user_status
		if @user.status == 'S'
			$user_status = "Student"
		else $user_status = "Advisor"
		end
	end

	private

		def user_params
      		params.require(:user).permit(:name, :email, :status, :password,
                                   :password_confirmation, :profilephoto)
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

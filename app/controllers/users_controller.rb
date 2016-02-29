class UsersController < ApplicationController
	def show
		# WRITE PROTECT AFTER DEV!!!
		@user = User.find(params[:id])
	end

  	def new
			if  logged_in?
				redirect_to root_path
			elsif
  			@user = User.new
			end
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

end

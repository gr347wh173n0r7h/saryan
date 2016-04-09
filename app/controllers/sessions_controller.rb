class SessionsController < ApplicationController
	
	def new
		if  logged_in?
			redirect_to root_path
		end
	end

	def create
	    user = User.find_by(email: params[:session][:email].downcase)
    	if user && user.authenticate(params[:session][:password])
    		log_in user
	      	params[:session][:remember_me] == '1' ? remember(user) : forget(user)
    		# redirect_to user
				redirect_to planner_new_path
		else
			flash.now[:danger] = 'Invalid email or password'
			render 'new'
		end

	end

	def destroy
		log_out if logged_in?
		redirect_to root_url
	end

end

class SessionsController < ApplicationController

	def new
	end

	def destroy
		sign_out
		redirect_to root_path
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			#sign in the user and redirect to user homepage
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = "Invalid email/password combination"
			render "new"
			#create an error message and re render the signup form
		end
	end
end

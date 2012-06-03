class SessionsController < ApplicationController

	def new
	end

	def create
	end

	def destroy
	end

	def create
		user = User.find_by_email(params[:session][:email])
		if user && user.user.authenticate(params[:session][:password])
			#sign in the user and redirect to user homepage
		else
			flash.now[:error] = "Invalid email/password combination"
			render "new"
			#create an error message and re render the signup form
		end
	end
end

class SessionsController < ApplicationController
	skip_before_action :ensure_user_signed_in, only: [:new, :create]

	# Present login form
	def new
	end

	# Create Session
	def create
		user = User.where(email: params[:email]).first

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect to sekret_person_path
		else
			redirect_to new_sessions_path, alert: 'Unable to authenticate'
		end
	end

	# Logout
	def destroy
		reset_session
		redirect_to root_path
	end

end
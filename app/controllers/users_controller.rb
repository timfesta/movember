class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to profile_page
		else
			redirect_to signup_page
		end
	end

	def show
		@current_user = User.find(session[:user_id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		
		
	end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end

end

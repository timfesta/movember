class UsersController < ApplicationController

	def index
		render :index
	end
	
	def new
		if current_user
			redirect_to profile_path
		else
			@user = User.new
		end
		
	end

	def create
		if current_user
			redirect_to current_user
		else
			user = User.new(user_params)
			if user.save
				session[:user_id] = user.id
				redirect_to profile_path
			else
				redirect_to signup_path
			end
		end
		
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		render :show
	end

	# def show
	# 	@current_user = User.find(session[:user_id])
	# end

	# def update
	# 	@user = User.find(params[:id])
	# end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end

end

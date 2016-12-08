class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@posts = Post.new
	end

	def create
		@posts = Post.new(post_params)
		if @posts.save
			redirect_to post_path(@posts)
		else
			redirect_to new_post_path
		end
	end

	def show
		@posts = Post.find(params[:id])
	end

	private
	def post_params
		 params.require(:post).permit(:description, :image)
	end
end

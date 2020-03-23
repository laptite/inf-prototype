class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy, :new_post_section]

	def index
		
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		if @post.save
			redirect_to @post, notice: 'Post successfully created!'
		else
			respond_to { |format| format.js { render layout: false} }
		end
	end

	def show
	end

	def edit
	end

	def new_post_section
		@new_section = @post.sections.build
		respond_to { |format| format.js { render layout: false} }
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: 'Post successfully updated!'
		else
			respond_to { |format| format.js { render layout: false} }
		end
	end

	def destroy
		@pic.destroy
		redirect_to pics_path, notice: 'Post successfully deleted!'
	end

	private

		def find_post
			@post = Post.find(params[:id])
		end

		def post_params
			params.require(:post)
				.permit(:category_id, :author, :title, :teaser, :images_credit, 
					:sections, sections_attributes: [:id, :text, :_destroy])
		end
end

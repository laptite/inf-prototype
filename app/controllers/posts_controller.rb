class PostsController < ApplicationController
	before_action :find_post, only: [
		:show, :edit, :update, :destroy, :add_post_section, :add_post_credit]
	before_action :authenticate_admin!, only: [:edit]

	def index
		@posts = Post.order(created_at: :desc)
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
				.permit([
					:category_id, :title, :image, :teaser, :sections, 
					sections_attributes: [:id, :section_image, :body, :_destroy], 
					post_contributors_attributes: [:id, :post_id, :contributor_id, :_destroy]
				])
		end
end
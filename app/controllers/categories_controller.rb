class CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]

	def index
		@categories = Category.order(created_at: :desc)
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)
		if @category.save
			redirect_to @category, notice: 'Category succesfully created!'
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		
	end

	def destroy
		
	end

	private

		def find_category
			@category = Category.find(params[:id])
		end

		def category_params
			params.require(:category).permit(:name)
		end
end

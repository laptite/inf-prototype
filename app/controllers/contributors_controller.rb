class ContributorsController < ApplicationController
	before_action :find_contributor, only: [:show, :edit, :update, :destroy]

	def index
		@contributors = Contributor.all
	end

	def new
		@contributor = Contributor.new
	end

	def create
		@contributor = Contributor.create(contributor_params)

		if @contributor.save
			redirect_to @contributor, notice: 'Contributor successfully added!'
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if @contributor.update(contributor_params)
			redirect_to @contributor, notice: 'Contributor successfully updated!'
		else
			render :edit
		end
	end

	def destroy
		@contributor.destroy
		redirect_to contributors_path, notice: 'Contributor successfully deleted!'
	end

	private

		def contributor_params
			params.require(:contributor).permit(:name, :bio)
		end

		def find_contributor
			@contributor = Contributor.find(params[:id])
		end
end

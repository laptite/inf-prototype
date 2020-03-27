class CreatorsController < ApplicationController
	before_action :find_creator, only: [:show, :edit, :update, :destroy]

	def index
		@creators = Creator.all
	end

	def new
		@creator = Creator.new
	end

	def create
		@creator = Creator.create(creator_params)

		if @creator.save
			redirect_to @creator, notice: 'Creator successfully added!'
		else
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
		if @creator.update(creator_params)
			redirect_to @creator, notice: 'Creator successfully updated!'
		else
			render :edit
		end
	end

	def destroy
		@creator.destroy
		redirect_to creators_path, notice: 'Creator successfully deleted!'
	end

	private

		def creator_params
			params.require(:creator).permit(:name, :bio)
		end

		def find_creator
			@creator = Creator.find(params[:id])
		end
end

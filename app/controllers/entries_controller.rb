class EntriesController < ApplicationController
	
	def new 
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
		render "new"
	end






	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries

		render 'index'
	end

	def create

	end
	
end

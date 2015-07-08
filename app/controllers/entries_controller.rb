class EntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries

		render 'index'
	end
end

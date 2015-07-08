class ProjectsController < ApplicationController




	def index
		@projects = Project.last_created(10)		
		render('index')
	end
	def show

		@project = Project.find_by(:id => params[:id])
		if @project.nil? 
			render( :status => 404)
		else
			render 'show'
		end
	end
end

class EntriesController < ApplicationController
	
	
	def new 
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
		render "new"
	end

	def edit 
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		render "edit"
	end

	def update
		
		@entry = Entry.find(params[:id])

		if @entry.update_attributes(entry_params)
			flash[:notice] = "Updated!"
			redirect_to action: 'index'
		else
			render 'edit'
		end


	end

	def destroy
		
		@entry = Entry.find(params[:id])
		@entry.destroy
		flash[:alert] = "DELETED!"
		redirect_to(project_entries_path)
	end



	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries
		

		render 'index'
	end

	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new(entry_params)

		if @entry.save 
			flash[:notice] = "Added new entry!"
			redirect_to action: 'index', controller: 'entries', project_id: @project.id
		else 
			flash[:alert] = "Creation Failed."
			render 'new'
		end
	end

	private 
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date, :comment)
	end

end

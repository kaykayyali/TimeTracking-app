class Project < ActiveRecord::Base
has_many :entries
 
 	validates :name, uniqueness: true, presence: true, length: {maximum:30}


	def self.show_all
		projects = Project.all
		
	end
	def self.last_created(n)
		return Project.order(:created_at => :asc).limit(n)
	end

	def self.clean_old
		projects = Project.where("created_at < ?", Date.today - 1.week).destroy_all

	end


	def total_hours_in_month(month, year)
		start_date = DateTime.new(year, month, 1)
		end_date = DateTime.new(year, month + 1, 1)
		entries = self.entries.where("date > ?",start_date).where(" date < ? ",end_date)
		hours = entries.reduce(0) {|sym, entry| sym + entry.hours}
		
		
	end

	def total_minutes_in_month(month, year)
		start_date = DateTime.new(year, month, 1)
		end_date = DateTime.new(year, month + 1, 1)
		entries = self.entries.where("date > ?",start_date).where(" date < ? ",end_date)
		
		minutes = entries.reduce(0) {|sym, entry| sym + entry.minutes}
		
	end

	
end

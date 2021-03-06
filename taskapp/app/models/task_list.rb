class TaskList < ActiveRecord::Base
	has_many :tasks
	validates :name, :description, presence: true
	validates :name, uniqueness: true
end

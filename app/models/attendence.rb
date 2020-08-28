class Attendence < ApplicationRecord
	belongs_to :user
	belongs_to :task_content
end

class Attendence < ApplicationRecord
	belongs_to :user
	belongs_to :task_content
	enum is_attended: { not_exit: false, exit: true }
end

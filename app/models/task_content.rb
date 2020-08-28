class TaskContent < ApplicationRecord
	belongs_to :class_task
	has_many :attendences
end

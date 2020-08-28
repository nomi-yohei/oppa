class ClassTask < ApplicationRecord
    has_many :task_contents, dependent: :destroy
    has_many :centers,dependent: :destroy
end

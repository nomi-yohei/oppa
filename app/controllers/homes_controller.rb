class HomesController < ApplicationController
  def top
  	@class_task =ClassTask.all

  	# @task =TaskContent.find_by(task_times: @id)
  end
  def about
  end
end

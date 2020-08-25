class Admin::ClassTasksController < ApplicationController
  def new
  	@class_task =ClassTask.new
  end
  def create
  	@class_task =ClassTask.new(task_params)
  	# binding.pry
  		@class_task.save
  		b =params[:class_task][:times].to_date
  		12.times do |n|
			TaskContent.create!(
				class_task_id: @class_task,
				name: @class_task.name + "#{n + 1}回目" ,
				task_times: b,
				)
			b += 7
		end
		binding.pry

	binding.pry
	end
  private
  def task_params
  	params.require(:class_task).permit(:name,:teacher_name)
  end
end

class Admin::ClassTasksController < ApplicationController
  before_action :authenticate_admin_admin_user!
  def new
  	@class_task =ClassTask.new
  end
  def create
  	@class_task =ClassTask.new(task_params)
  		@class_task.save
  		b =params[:class_task][:times].to_date
      v =params[:class_task][:start].to_datetime.in_time_zone('Tokyo').to_datetime
      z =params[:class_task][:finish].to_datetime.in_time_zone('Tokyo').to_datetime
  		12.times do |n|
			 TaskContent.create!(
				class_task_id: @class_task.id,
				name: @class_task.name + ":#{n + 1}回目" ,
				task_times: b,
        start_time: v,
        finish_time: z
				)
        b += 7
        v += 7
        z += 7
		  end
      def show
        @task =TaskContent.find_by(task_times: params[:id])
      end
    redirect_to admin_homes_top_path
	end
  private
  def task_params
  	params.require(:class_task).permit(:name,:teacher_name)
  end
end

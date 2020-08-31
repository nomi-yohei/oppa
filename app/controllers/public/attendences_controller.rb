class Public::AttendencesController < ApplicationController
	def update
		@attend =Attendence.find(params[:id])
		@attend.update(attend_params)
		redirect_to request.referer
	end
	def show
		@task =TaskContent.find_by(task_times:params[:task],class_task_id:params[:class])
		@attend =Attendence.find_by(user_id: current_user.id,task_content_id: @task.id)
	end
	private
	def attend_params
		params.require(:attendence).permit(:task_content_id,:is_attended,:user_id)
  	end
end

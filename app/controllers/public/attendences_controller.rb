class Public::AttendencesController < ApplicationController
	def update
		@attend =Attendence.find(params[:id])
		@attend.update(attend_params)
		redirect_to public_class_task_path(@attend)
	end
	private
	def attend_params
		params.require(:attendence).permit(:task_content_id,:is_attended,:user_id)
  	end
end

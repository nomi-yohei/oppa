class Public::AttendencesController < ApplicationController
	def create
		@attend =Attendence.new(attend_params)
		@attend.save
		redirect_to request.referer
	end
	private
	def attend_params
		params.require(:attendence).permit(:task_content_id,:is_attended,:user_id)
  	end
end

class Public::CentersController < ApplicationController
	before_action :authenticate_user!
	def create
		@center =Center.new(order_params)
		@center.user = current_user
		if @center.save
			@center.class_task.task_contents.each do |f|
				Attendence.create!(
				task_content_id: f.id,
				user_id: current_user.id,
				is_attended: false
				)
			end
		end
		redirect_to request.referer
	end
	def update
	end
	def all_up
		@tasks =ClassTask.all
			@tasks.each do |f|
				@center =Center.new
				@center.user = current_user
				@center.class_task_id = f.id
				if @center.save
					@center.class_task.task_contents.each do |z|
						Attendence.create!(
						task_content_id: z.id,
						user_id: current_user.id,
						)
					end
				end
			end
		redirect_to public_users_path
	end
	def order_params
    	params.require(:center).permit(:class_task_id)
    end
end

class Public::CentersController < ApplicationController
	def create
		if current_user.centers.find_by(class_task_id: params[:center][:class_task_id]).present?
		else
		@center =Center.new(order_params)
		@center.user = current_user
		@center.save
		end
		redirect_to public_users_path


	end
	def update
	end

	  # @cart = current_end_user.cart_items.find_by(item_id: params[:cart_item][:item_id]).present?
	def all_up
		@tasks =ClassTask.all
			@tasks.each do |f|
				@center =Center.new
				@center.user = current_user
				@center.class_task_id = f.id
				@center.save
			end
			redirect_to public_users_path
	end
	 def order_params
#      params.require(:order).permit(:item, color, :complete)
      params.require(:center).permit(:class_task_id)
    end
end

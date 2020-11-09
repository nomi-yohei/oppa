class Public::UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		@tasks = current_user.centers.all
	  	@end_user = current_user
	end
	def edit
		@user =current_user
	end
	def update
		@user =current_user
		@user.update(user_params)
		redirect_to users_path
	end
	def user_params
		params.require(:user).permit(:name,:eamil,:my_number,:my_grade)
	end
end

class Public::UsersController < ApplicationController
	before_action :authenticate_user!
	def show
		@tasks = current_user.centers.all
	  	@end_user = current_user
	end
end

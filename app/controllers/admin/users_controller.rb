class Admin::UsersController < ApplicationController
	before_action :authenticate_admin_admin_user!
  def index
  	@users =User.all.order(my_number: "ASC")
  end
  def show
  	@user =User.find(params[:id])
  	@class_task =ClassTask.all
  end

end

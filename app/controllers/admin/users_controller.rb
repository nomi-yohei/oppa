class Admin::UsersController < ApplicationController
  def index
  	@users =User.all.order(my_number: "ASC")
  end
  def show
  	@user =User.find(params[:id])
  	@class_task =ClassTask.all
  end

end

class Public::ClassTasksController < ApplicationController
	before_action :authenticate_user!
  def index
  	@center =Center.all
  	@p =ClassTask.first
  	@c =ClassTask.last
  	@class_task =ClassTask.all
  end

  def show
    @id =params[:id]
  	@task =TaskContent.find_by(task_times: @id)
  end
end

class Public::ClassTasksController < ApplicationController
  def index
  	@center =Center.all
  	@p =ClassTask.first
  	@c =ClassTask.last
  	@class_task =ClassTask.all
  end

  def show
  	@task =TaskContent.find_by(task_times: "2020-09-01")
  end
end

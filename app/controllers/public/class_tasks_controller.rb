class Public::ClassTasksController < ApplicationController
  def index
  	@center =Center.all
  	@p =ClassTask.first
  	@c =ClassTask.last
  	@class_task =ClassTask.all
  end

  def show
  end
  
end

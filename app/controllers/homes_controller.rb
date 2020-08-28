class HomesController < ApplicationController
  def top
  	@class_task =ClassTask.all
  end
  def about
  end
end

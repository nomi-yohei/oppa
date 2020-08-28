class Admin::HomesController < ApplicationController
  def top
  	@class_task =ClassTask.all
  end
end

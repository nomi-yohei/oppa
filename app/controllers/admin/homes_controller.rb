class Admin::HomesController < ApplicationController
	before_action :authenticate_admin_admin_user!
  def top
  	@class_task =ClassTask.all
  end
end

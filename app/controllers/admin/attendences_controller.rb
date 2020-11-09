class Admin::AttendencesController < ApplicationController
  def show
  	@task =TaskContent.find_by(task_times:params[:task],class_task_id:params[:class])
  end
end

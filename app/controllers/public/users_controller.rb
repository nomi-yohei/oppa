class Public::UsersController < ApplicationController
  def show
  	@tasks = current_user.centers.all
  end
end

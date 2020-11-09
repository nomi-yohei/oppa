# frozen_string_literal: true

class Public::Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end
  before_action :configure_permitted_parameters, if: :devise_controller?
  # GET /resource/sign_up
  # def new
  #   super
  # end
# unless @end_user =EndUser.where(is_vaild: false)
  def after_sign_in_path_for(resource)
  users_path
 end
  def after_sign_out_path_for(resource)
  root_path
  end

private

 def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_in, keys: [:my_number,:password])
   end
  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

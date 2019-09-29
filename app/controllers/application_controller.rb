class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?





  protected
  #以下の:name部分は追加したカラム名に変える
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :name,
      :nickname,
      :adress,
      :age,
      :sex,
      :image_id
      ])
  end




end

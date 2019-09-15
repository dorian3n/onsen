# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

    private
    # ログイン後にマイページへ遷移するpathを設定
    def after_sign_in_path_for(resource)
      user_path(resource)
    end

    # ログアウト後に温泉のインデックスへ遷移するpathを設定
    def after_sign_out_path_for(resource)
      root_path
    end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

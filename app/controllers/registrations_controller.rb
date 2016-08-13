class RegistrationsController < Devise::RegistrationsController
  # def new
  #   redirect_to new_session_path, notice: 'Регистрация пока не открыта, но рекомендуем вам перепроверить 1 декабря'
  # end

  def create
    # redirect_to new_session_path, notice: 'Регистрация пока не открыта, но рекомендуем вам перепроверить 1 декабря'

    if verify_recaptcha
      super
    else
      build_resource(sign_up_params)
      clean_up_passwords(resource)
      flash.now[:alert] = 'Подтвердите, что Вы не робот'
      flash.delete :recaptcha_error
      render :new
    end
  end

  protected

  def after_sign_up_path_for(resource)
    edit_user_path(current_user)
  end

  private

  def sign_up_params
    params.require(:user).permit(:phone_number, :email, :password, :password_confirmation)
  end
end

class Api::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private
    def sign_up_parmas
      params.permit(:name, :email, :company, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :email, :company)
    end
end

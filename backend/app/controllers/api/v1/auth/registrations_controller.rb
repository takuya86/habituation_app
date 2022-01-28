class Api::V1::Auth::RegistrationsController < ApplicationController
  private

  def sign_up_params
    params.require(:registration).permit(:email, :password, :name)
  end
end

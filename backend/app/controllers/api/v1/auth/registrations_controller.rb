class Api::V1::Auth::RegistrationsController < ApplicationController
  def edit
    user = User.find_by(params[:id])
  end
  private

  def sign_up_params
    params.require(:registration).permit(:email, :password, :last_name, :first_name)
  end
end

class StaticPagesController < ApplicationController
  protect_from_forgery with: :null_session

  def home
  end
  def send_mail
    MessageMailer.welcome_email(params).deliver_now
    render json: {}, status: 200
  end
end

class MessageMailer < ApplicationMailer
  default from: 'a301633@uach.mx'

  def welcome_email(data)
    @data = data
    mail(to: 'h1.solis.castillo.ramiro@gmail.com', subject: 'Mensaje de mi portafolio')
  end
end

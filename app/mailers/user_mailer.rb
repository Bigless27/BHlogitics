class UserMailer < ApplicationMailer


  def welcome_email(user)
    @user = user
    mail(to: "lessonryan@yahoo.com", subject: 'Welcome to My Awesome Site')

    binding.pry
    mg_client = Mailgun::Client.new ENV['mail_api_key']
    message_params = {:from    => "ryan@example.com",
                      :to      => "lessonryan@gmail.com",
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    mg_client.send_message ENV['domain'], message_params
  end

end

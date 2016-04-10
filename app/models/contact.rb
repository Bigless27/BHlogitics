class Contact < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :phone
  attribute :city
  attribute :state
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "ryan_lesson@yahoo.com",
      :from => %("#{first_name}", #{last_name} <#{email}>)
    }
  end
end
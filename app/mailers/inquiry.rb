class Inquiry < ActionMailer::Base
  def send_message(user)
    @user = user
    mail from: user.email, to: 'rpritzlaff.tba@gmail.com', subject: user.subject
  end
end

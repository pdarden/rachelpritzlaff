class Inquiry < ActionMailer::Base
  def send_message(user)
    @user = user
    @name = "#{@user.first_name} #{@user.last_name}"
    @message = @user.message
    mail from: @user.email, to: 'rpritzlaff.tba@gmail.com', subject: @user.subject
  end
end

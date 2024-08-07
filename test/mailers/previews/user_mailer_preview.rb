class UserMailerPreview < ActionMailer::Preview
  def password_reset
    UserMailer.with(user: User.last).password_reset
  end

  def email_verification
    UserMailer.with(user: User.last).email_verification
  end
end

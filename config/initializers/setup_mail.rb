ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "sandwichusamah@gmail.com",
  :password             => "12121232",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

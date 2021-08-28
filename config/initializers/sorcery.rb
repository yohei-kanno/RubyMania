Rails.application.config.sorcery.submodules = %i[remember_me user_activation reset_password]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.remember_me_for = 1_209_600
    user.user_activation_mailer = UserMailer
    user.reset_password_mailer = UserMailer
  end

  config.user_class = 'User'
end

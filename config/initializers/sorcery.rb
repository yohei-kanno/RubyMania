Rails.application.config.sorcery.submodules = %i[remember_me user_activation reset_password external]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.remember_me_for = 1_209_600
    user.user_activation_mailer = UserMailer
    user.reset_password_mailer = UserMailer
    user.authentications_class = Authentication
  end

  config.user_class = 'User'
  config.external_providers = [:github]
  config.github.key = Rails.application.credentials.dig(:github, :key)
  config.github.secret = Rails.application.credentials.dig(:github, :secret)
  config.github.callback_url = Rails.application.credentials.dig(:github, :callback_url)
  config.github.user_info_mapping = {email: "email", name: "login", remote_avatar_url: "avatar_url"}
  config.github.scope = "user:email"
end

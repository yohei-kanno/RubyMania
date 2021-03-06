Rails.application.config.sorcery.submodules = %i[external]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.authentications_class = Authentication
  end

  config.user_class = 'User'
  config.external_providers = [:github]
  
  if  Rails.env.production?
    config.github.key = Rails.application.credentials.dig(:github_production, :key)
    config.github.secret = Rails.application.credentials.dig(:github_production, :secret)
    config.github.callback_url = Rails.application.credentials.dig(:github_production, :callback_url)
  else
    config.github.key = Rails.application.credentials.dig(:github_development, :key)
    config.github.secret = Rails.application.credentials.dig(:github_development, :secret)
    config.github.callback_url = Rails.application.credentials.dig(:github_development, :callback_url)
  end
  
  config.github.user_info_mapping = {email: "email", name: "login", remote_avatar_url: "avatar_url"}
  config.github.scope = "user:email"
end

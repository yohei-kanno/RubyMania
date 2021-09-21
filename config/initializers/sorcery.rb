Rails.application.config.sorcery.submodules = %i[external]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.authentications_class = Authentication
  end

  config.user_class = 'User'
  if  Rails.env.production?
    config.github.key = Rails.application.credentials.dig(:github_productioin, :key)
    config.github.secret = Rails.application.credentials.dig(:github_productioin, :secret)
    config.github.callback_url = Rails.application.credentials.dig(:github_productioin, :callback_url)
  end
  
  config.external_providers = [:github]
  config.github.user_info_mapping = {email: "email", name: "login", remote_avatar_url: "avatar_url"}
  config.github.scope = "user:email"
end

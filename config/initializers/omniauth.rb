# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, ENV.fetch('CLIENT_ID', nil), ENV.fetch('CLIENT_SECRET', nil)
	else
    provider:github,
    Rails.application.credentials.github[:client_id],
    Rails.application.credentials.github[:client_secret]
  end
end




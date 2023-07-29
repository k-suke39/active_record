Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
      provider :github, "957579ec16ff78777096", "3b1cb35dde4711428594cf2cf8497fe876468a19"
    else
      provider :github,
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
  end

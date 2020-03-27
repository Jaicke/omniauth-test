Rails.application.config.middleware.use OmniAuth::Builder do
  provider :apple, ENV['APPLE_CLIENT_ID'], '',
		{
			scope: 'email name',
			team_id: ENV['APPLE_TEAM_ID'],
			key_id: ENV['APPLE_KEY_ID'],
			pem: ENV['APPLE_PRIVATE_KEY']
		}
	
	provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
	provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end

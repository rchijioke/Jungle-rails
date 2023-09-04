if Rails.env == "production"
  Rails.application.config.middleware.use Rack::Auth::Basic do |username, password|
    [username, password] == [ENV['ADMIN_USERNAME'], ENV['ADMIN_PASSWORD']]
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_streams

  def get_streams
    @twitch = Twitch.new({
      :client_id => "ssw4acxez1olxtuyy0hcc6ycfqaw2q8",
      :secret_key => "jlbm0mn3lgzonln7zf5y25x5ii9l1g"
    })
    @streams = @twitch.getStreams(:game => "Counter-Strike: Global Offensive", :limit => 10)[:body]
  end
end

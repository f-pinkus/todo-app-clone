class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  skip_before_action :verify_authenticity_token
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
end

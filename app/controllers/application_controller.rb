class ApplicationController < ActionController::Base
  def index
    render json: {message: "HI! How's everyone's day going?"}
  end
  allow_browser versions: :modern
end

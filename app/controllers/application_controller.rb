class ApplicationController < ActionController::Base
  def index
    render json: { message: "HI! How's everyone's day going? Hi everyone!" }
  end
  allow_browser versions: :modern
end

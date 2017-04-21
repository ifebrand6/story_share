class ApplicationController < ActionController::Base
  layout false
  protect_from_forgery with: :exception
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  ####### QUICK DIRTY FOR EMBER.JS DEMO #######
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }
end

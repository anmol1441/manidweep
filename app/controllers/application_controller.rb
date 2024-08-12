# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :set_locale

  def change_locale
    I18n.locale = params[:locale] || I18n.default_locale
    cookies[:locale] = I18n.locale
    redirect_back(fallback_location: root_path)
  end

  private

  def set_locale
    I18n.locale = cookies[:locale] || I18n.default_locale
  end
end

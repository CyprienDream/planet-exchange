class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: %i[home search]
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :not_authorized

  # after_action :verify_authorized, except: [:index, :show] , unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: [:index, :show], unless: :skip_pundit?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :bio, :photo, :city, { interest_ids: [] }])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: %i[username bio photo])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def not_authorized
    flash[:alert] = "Log in as admin"
    redirect_back fallback_location: root_path
  end

  # def message_link(message)
  #   chatroom_path(chatroom.message, anchor: "message-#{message.i}")
  # end

  # def after_sign_in_path_for(resource)
  #   user_path(current_user) # your path
  # end

  # def after_sign_up_path_for(resource)
  #   user_path(current_user) # your path
  # end

end

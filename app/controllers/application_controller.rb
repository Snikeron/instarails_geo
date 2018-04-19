class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # added in Class
  before_action :authenticate_user!

  def after_sign_in_path_for user
    # return path eg. 'profile/edit'
    # profile_edit_path if user.profile.nil?

    if user.profile.nil?
      profile_edit_path
    else
      pages_home_path
    end
  end

end

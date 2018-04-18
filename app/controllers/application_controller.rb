class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # added in Class
  before_action :authenticate_user!

  def after_sign_in_path_for user
    # return path eg. 'profile/edit'
    profile_edit_path if user.profile.nil?
  end

end

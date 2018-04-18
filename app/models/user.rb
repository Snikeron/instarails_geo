class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Added in class
  # Example codes for querying user from profile:
  # -- current_user.profile.first_name
  # -- User.find(2).profile.first_name
  # "Makes your method singular"
  has_one :profile

end

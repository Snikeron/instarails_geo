# Created in class from scratch
class ProfilesController < ApplicationController

    def show
        # unless user is signed in, 'show' redirects to root page
        redirect_to :root unless user_signed_in?
            # @profile = current_user.profile # what I thought it was (should work too)
            @profile = Profile.find(user: current_user) # alternative way you can use
    end

    def edit
        # if current_user.profile.exists?
        #     @profile = Profile.find(user: current_user)
        # else
        #     @profile = Profile.new
        # end

        @profile = Profile.find_or_initialize_by(user: current_user)
        @profile.user = current_user
    end

    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user
    end

    # Gets form profile and fills in the fields.
    def profile_params
        params.require(:profile).permit([
            :first_name,
            :last_name,
            :street_address,
            :city,
            :state,
            :postcode,
            :country_code
        ])
    end

end
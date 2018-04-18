class PagesController < ApplicationController

    # Skips authentication requirement only for pages#home
    # skip_before_action :authenticate_user!, only: [:home]

    def home

    end
end

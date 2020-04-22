class UserBarsController < ApplicationController

    def index
        @userBars = UserBar.all
        render json: @userBars, except: [:created_at, :updated_at]
    end

end

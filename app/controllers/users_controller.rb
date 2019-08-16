class UsersController < ApplicationController

    def show
        @user = User.all 
        @find_user = User.find(params[:id])
    end
end

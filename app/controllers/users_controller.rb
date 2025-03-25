class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        @users = User.all
    end

    def create
        @user = User.create(username: params[:username], email: params[:email], first_name: params[:first_name], last_name: params[:last_name])
        # render the create.jbuilder file
        render 'users/create'
    end
end

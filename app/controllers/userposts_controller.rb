class UserpostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @userposts = Userpost.all
    end

    def create
        @userpost = Userpost.create(content: params[:content], user_id: params[:user_id])
        # render the create.jbuilder file
        render 'userposts/create'
    end

    def show
        @userpost = Userpost.find(params[:id])
    end
    
end

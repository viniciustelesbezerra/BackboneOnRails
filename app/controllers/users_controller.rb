class UsersController < ApplicationController
    def index
        respond_with @users = User.all
    end

    def show
        respond_with @user = User.find params[:id]
    end

    def new
        respond_with @user = User.new
    end

    def edit
        respond_with @user = User.find params[:id]
    end

    def create
        @user = User.new params[:user]
        set_falsh_message 'User was successfully created.', 'notice' if @user.save
        repond_with @user
    end

    def update
        @user = User.find params[:id]
        set_falsh_message 'User was successfully updated.', 'notice' if @user.update_attributes params[:user]
        repond_with @user
    end

    def destroy
        @user = User.find params[:id]
        set_falsh_message 'User was successfully destroyed.', 'notice' if @user.destroy
        respond_with @user     
    end
end
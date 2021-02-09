class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def create
        user = User.create(user_params)
        render json: user, status: 201
    end

    def destroy
        userId = @user.id
        @user.destroy
        render json: {message:"Zap! User deleted", userId:userId}
    end

    def update
        @user.update(user_params)
        render json: @user, status: 200
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end

end
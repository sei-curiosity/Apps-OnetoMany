class ImagesController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @images = @user.images
    end
    def show
        @user = User.find(params[:user_id])
        @image = @user.images.find(params[:id])
    end
    def destroy
        @user = User.find(params[:user_id])
        @image = @user.images.find(params[:id])
        @image.destroy
        redirect_to user_images_path(@user)
    end
    def new
        @user = User.find(params[:user_id])
        @image = @user.images.new
    end
    def create
        @user = User.find(params[:user_id])
        @image = @user.images.create(image_params)
        redirect_to user_image_path(@user, @image)
    end
    def edit
        @user = User.find(params[:user_id])
        @image = @user.images.find(params[:id])
    end
    def update
        @user = User.find(params[:user_id])
        @image = @user.images.update(image_params)
        redirect_to user_image_path(@user, @image)
    end
    private
    def image_params
        params.require(:image).permit(:url)
    end
end
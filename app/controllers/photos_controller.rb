class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if !@photo.save
      flash[:error] = @photo.errors.full_messages.to_sentence
      redirect_to new_photo_path
    else
      redirect_to photos_path
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :url)
  end
end

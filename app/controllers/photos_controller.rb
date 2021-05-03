class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: "Photo was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def photo_params
    params.permit(:title, :description, :url)
  end
end

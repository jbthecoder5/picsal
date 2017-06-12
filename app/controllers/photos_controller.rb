class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.new(post_params)

  	if @photo.save
  		redirect_to root_url
    else
      redirect_to root_url, notice: 'File upload error'
    end
  end


  private

  def post_params
  	require(:photo).permit(:name, :description)
  end

end

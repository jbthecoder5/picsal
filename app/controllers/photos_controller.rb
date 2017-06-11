class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.new

  	if @photo.save
  		redirect_to root_url
    end
  end

=begin
  private

  def post_params
  	require(:photo).permit(:name, :description, :image)
  end
=end

end

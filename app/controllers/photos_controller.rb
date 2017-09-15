class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
    @photos.order('asc')

    @photo = Photo.new
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def search
    @photo = Photo.where("name", params[:search_string])
  end
  
  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.new(post_params)

  	if @photo.save
  		redirect_to root_url, notice: 'Photo Upload successful'
    else
      redirect_to root_url, alert: 'Photo upload error'
    end
  end



  def about

  end

  def help

  end


  private

  def post_params
  	params.require(:photo).permit(:name, :description, :image)
  end

end

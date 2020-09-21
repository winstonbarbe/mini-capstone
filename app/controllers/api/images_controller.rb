class Api::ImagesController < ApplicationController

  def index
    @images = Image.all
    render "index.json.jb"
  end

  def show
    @image = Image.find(params[:id])
    render "show.json.jb"
  end

  def create
    @image = Image.create(
        url: params[:url],
        product_id: params[:product_id]
    )
  
    render "show.json.jb"
  end

  def update
    @image = Image.find(params[:id])

    @image.url = params[:url] || @image.url
    @image.product_id = params[:product_id] || @image.product_id

    if @image.save
      render "show.json.jb"  
    else
      render json: {errors: @image.errors.full_messages}, status: 422
    end

  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    render json: {message: "This image has been deleted."}
  end

end
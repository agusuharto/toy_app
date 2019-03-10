class ProductController < ApplicationController
  protect_from_forgery :except => [:new_post]

  def new_post
    begin
      json_request = JSON.parse(request.body.read)
      product = Product.new
      product.attributes = {
        barcode: json_request['barcode'],
        name: json_request['name'],
        price: json_request['price'],
        ingredients: json_request['ingredients'],
        is_halal: json_request['is_halal'],
        is_public: json_request['is_public'],
        image_url: json_request['image_url']}
      product.save
      result = {is_success: true}
      render :json => result
    rescue => error
      result = {is_success: false}
      render :json => result
    end
  end

  def list
    render :json => Product.where(is_public: true).order("id DESC").limit(50)
  end

  def find_barcode
      results = Product.where(barcode: params[:id]).where(is_public: true).order("id DESC").limit(50)
      if results == nil
        render :json => []
      else
        render :json => results
      end
  end

  def find_name
      results = Product.where(name: params[:name]).where(is_public: true).order("id DESC").limit(50)
      if results == nil
        render :json => []
      else
        render :json => results
      end
  end
end

class ProductController < ApplicationController
  def new
    product = Product.new
    product.attributes = {barcode_id: 234, name: "ヨーグルト", price:432, ingredients: "乳化剤", is_halal: false}
    product.save
    result = {is_success: true}
    render :json => result
  end

  def new_post
    json_request = JSON.parse(request.body.read)

    puts '@@@@'
    puts json_request
    puts '@@@@'

    product = Product.new
    product.attributes = {barcode_id: json_request['barcode_id'], name: json_request['name'], price: json_request['price'], ingredients: json_request['ingredients'], is_halal: json_request['is_halal']}
    product.save
    result = {is_success: true}
    render :json => result
  end

  def list
    render :json => Product.all
  end
end

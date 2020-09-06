class ProductsController < ApplicationController
  def index
    products = Product.all
    respond_to do |format|
      format.json do
        render json: {
          html: products.map(&:title).split(',').join("<br />")
        }.to_json
      end
    end
  end
end
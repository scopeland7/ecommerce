class StorefrontController < ApplicationController
  def all_items
  	@products = Product.order(:name)
  end

  def items_by_category
  	@products = Product.where(category: params[:cat_id])
  end

  def items_by_brand
  	#
  	@products = Product.where(brand: params[:brand])
  end
end

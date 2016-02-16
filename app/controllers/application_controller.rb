class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  before_filter :categories, :brand

  def brand
  	@brands = Product.pluck(:brand).sort.uniq!
  	if @brands == nil
  		@brands = Product.pluck(:brand).sort
  	end
  end

  def categories
  	@categories = Category.order(:name).uniq!
  end



end

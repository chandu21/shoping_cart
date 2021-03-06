class ProductsController < ApplicationController
	#before_filter :authenticate_user!

  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	#render :text => params[:product].inspect and return false
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to products_path
  	else
  		render "new"
  	end
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update_attributes(product_params)
  		redirect_to products_path
  	else
  		render "new"
  	end
  end

  def show
  	@product = Product.find(params[:id])
  end

  def destroy
  	@product = Product.find(params[:id])
  	if @product.destroy
  		redirect_to products_path
  	end
  end

  private
  def product_params
  	params.require(:product).permit(:name , :brand_id )
  end
end

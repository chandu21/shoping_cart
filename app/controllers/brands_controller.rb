class BrandsController < ApplicationController

  def index
  	@brands = Brand.all
  end

  def new
  	@brand = Brand.new
  end

  def create
  	@brand = Brand.new(params[:brands])
  	if @brand.save
    	redirect_to brands_path
  	else
    	render 'new'
  	end
  end

  def edit
  	@brand = Brand.find(params[:id])
  end

  def show
  	
  end

  # private
  # def brand_params
  # 	params.require(:brand).permit(:name)
  # end

  def destroy
	  @brand = Brand.find(params[:id])
	  @brand.destroy
	 redirect_to brands_path
	end
end

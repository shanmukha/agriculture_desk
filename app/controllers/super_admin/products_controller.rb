class SuperAdmin::ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new 
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to super_admin_products_path
    else
      render :new
    end    
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to super_admin_products_path
    else
      render :edit
    end     
  end
  
  def destroy
   @product = Product.find(params[:id])
   @product.destroy
   redirect_to super_admin_products_path
  end
end

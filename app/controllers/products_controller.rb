class ProductsController < ApplicationController
  def index
    @product = Product.search(params[:search])
  end

  def show
    @product = Product.search(params[:search])
  end

  def search
    if params[:name].present?
      @products = Product.where('name LIKE ?', "%#{params[:name]}%")
    else
      @products = Product.none
    end
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.create!(product_params)
    redirect_to "/products/new"
  end

  def update
    @products = Product.find(params[:id])
    @products.update!(product_params)
  end

  def destroy
    @products = Product.find(params[:id])
    @products.destroy!
  end

  private
      def product_params
        params.require(:product).permit(:name, :quantity, :nominal, :color, :size, :import_number, :export_number)
      end
end

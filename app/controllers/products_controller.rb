# frozen_string_literal: true

# Controller for the products. Contains methods used for manipulating the products.
class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  before_action :initialize_session

  # GET /products or /products.json
  def index
    @current_user = current_user
    @prod_categories = ProdCategory.all

    if params[:search]
      @products = Product.where(["name LIKE ? or categoryId LIKE ?", "%#{params[:search]}%",
                                 "%#{params[:categoryId]}%"]).page(params[:page])
      @products = Kaminari.paginate_array(@products).page(params[:page]).per(10)
    else
      @products = Product.page(params[:page])
    end
  end

  def add_to_cart
    id = params[:id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to cart_path
    flash[:notice] = "Item added to cart"
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to cart_path
    flash[:notice] = "Item was removed from cart"
  end

  # GET /products/1 or /products/1.json
  def show; end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  # def product_params
  #   params.require(:product).permit(:name, categories.name, :manufacturer, :search, :categoryId)
  # end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html do
          redirect_to product_url(@product)
        end
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html do
          redirect_to product_url(@product), notice: "Product was successfully updated."
        end
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:id, :name, :manufacturer, :price,
                                    :stock, :description, :weight, :categoryId, :image)
  end
end

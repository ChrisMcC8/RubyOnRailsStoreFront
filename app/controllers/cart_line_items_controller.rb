class CartLineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart_line_item, only: %i[ show edit update destroy ]
  before_action :set_cart, only: [:create]

  # GET /cart_line_items or /cart_line_items.json
  def index
    @cart_line_items = CartLineItem.all
  end

  # GET /cart_line_items/1 or /cart_line_items/1.json
  def show
  end

  # GET /cart_line_items/new
  def new
    @cart_line_item = CartLineItem.new
  end

  # GET /cart_line_items/1/edit
  def edit
  end

  # POST /cart_line_items or /cart_line_items.json
  def create
    @product = Product.find(params[:product_id])
    @cart_line_item = @shopping_cart.add_product(@product)

    respond_to do |format|
      if @cart_line_item.save
        format.html { redirect_to @cart_line_item.shopping_cart, notice: "Product was added to cart." }
        format.json { render :show, status: :created, location: @cart_line_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_line_items/1 or /cart_line_items/1.json
  def update
    respond_to do |format|
      if @cart_line_item.update(cart_line_item_params)
        format.html { redirect_to cart_line_item_url(@cart_line_item), notice: "Cart line item was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_line_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_line_items/1 or /cart_line_items/1.json
  def destroy
    @shopping_cart = ShoppingCart.find(session[:ShoppingCart_id])
    @cart_line_item.destroy

    respond_to do |format|
      format.html { redirect_to shopping_cart_path(@shopping_cart), notice: "Cart line item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_line_item
      @cart_line_item = CartLineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_line_item_params
      params.require(:cart_line_item).permit(:product_id, :ShoppingCart_id)
    end
end

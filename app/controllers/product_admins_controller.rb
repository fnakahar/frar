class ProductAdminsController < ApplicationController
  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  # createのとき、どうしてインスタンス変数にしないのか==>たぶん、この変数を渡すviewがないから
  def create
    product = Product.new(product_params)
    product.save!
    redirect_to product_admins_url, notice: "製品名 : 「#{product.product_name} 」を登録しました。"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update!(product_params)
    redirect_to product_admin_url, notice: "製品名 : 「#{product.product_name} 」を更新しました。"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to product_admins_url, alert: "製品名 : 「#{product.product_name} 」を削除しました。"
  end


  private

  def product_params
    params.require(:product).permit(:product_image, :product_name, :product_subtitle, :product_hl_description, :product_ll_description, :product_rating, :frar_comment, :product_price,  :review_title, :review_content, :product_category, :product_url)
  end
end

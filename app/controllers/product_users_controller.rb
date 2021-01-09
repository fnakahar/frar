class ProductUsersController < ApplicationController
  def index
    @product_althaeaoio = Product.where(product_category: "エルテオ")
    @product_altvenus = Product.where(product_category: "エルヴィナス")
    @product_reandna = Product.where(product_category: "リアンディーナ")
    @product_bsodin = Product.where(product_category: "ビーソディン")
    @product_appb = Product.where(product_category: "アップビー")
    @product_mirus = Product.where(product_category: "ミラス")
  end

  def show
    @product = Product.find(params[:id])
  end
end

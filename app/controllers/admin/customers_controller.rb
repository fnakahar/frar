class Admin::CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def edit
  end

  def show
  end

  def index
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to admin_customers_url, notice: "「#{@customer.name}」様のお客様登録が完了いたしました。"
    else
      render :new
    end
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :age_range, :gender, :email, :password, :password_confirmation)
  end

end

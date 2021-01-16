class Admin::CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customer = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to admin_customers_url, notice: "「#{@customer.name}」様のお客様登録が完了いたしました。"
    else
      render :new
    end
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      redirect_to admin_customer_url(@customer), notice: "「#{@customer.name}」様の登録情報を変更いたしました。"
    else
      render :edit
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to admin_customer_url, notice: "「#{@customer.name}」様の登録情報を削除いたしました。"
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :age_range, :gender, :email, :password, :password_confirmation, :admin)
  end

end

class SessionsController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by(email: session_params[:email])

    if customer&.authenticate(session_params[:password])
      session[:customer_id] = customer.id
      redirect_to root_url, notice: 'ログインしました。'
    else
      flash.now[:alert] = "ログインに失敗しました"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'ログアウトしました。'
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end

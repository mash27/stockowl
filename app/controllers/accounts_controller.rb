class AccountsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

def show
    set_user
  end

  def edit
    set_user
  end

  def update
    @account.update(account_params)
    if @account.save
      redirect_to account_path(@account)
    else
      render :edit
    end
  end

  private

  def account_params
    params.require(:user).permit(:first_name, :last_name, :username, :email)
  end

  def set_user
    @account = current_user
  end
end

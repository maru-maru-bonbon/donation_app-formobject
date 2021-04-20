class DonationsController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(donation_params)
    if @user.save
      redirect_to action: :index
    else
      render action: :new
    end
  end
end

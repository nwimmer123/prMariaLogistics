class TransportsController < ApplicationController

  before_action :current_transport, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    @transports = Transport.all
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(cargo_params)
    @transport.user = current_user
    @transport.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @transport.update_attributes(cargo_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @reviews = Review.where(cargo_id: @transport.id)
    @reviews.each do |review|
      review.destroy
    end
    @transport.destroy
    redirect_to user_path(@user.id)
  end

  private

  def transport_params
    params.require(:transport).permit(:role, :range, :capacity, :name, :avaliability, :funding, :hub)
  end

  def current_transport
    @transport = Transport.find_by_id(params[:id])
  end
end

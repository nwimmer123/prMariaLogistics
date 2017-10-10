class WarehousesController < ApplicationController

  before_action :current_warehouse, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    @warehouses = Warehouse.all
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    @warehouse.user = current_user
    @warehouse.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @warehouse.update_attributes(warehouse_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @warehouse.destroy
    redirect_to user_path(@user.id)
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:capacity, :avaliability, :funding, :location)
  end

  def current_warehouse
    @warehouse = Warehouse.find_by_id(params[:id])
  end
end

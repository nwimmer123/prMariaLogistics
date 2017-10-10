class CargosController < ApplicationController

  before_action :current_cargo, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    @cargos = Cargo.all
  end

  def new
    @cargo = Cargo.new
  end

  def create
    @cargo = Cargo.new(cargo_params)
    @cargo.user = current_user
    @cargo.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @cargo.update_attributes(cargo_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @cargo.destroy
    redirect_to user_path(@user.id)
  end

  private

  def cargo_params
    params.require(:cargo).permit(:goods, :state, :city, :quantity, :weight, :size)
  end

  def current_cargo
    @cargo = Cargo.find_by_id(params[:id])
  end

end

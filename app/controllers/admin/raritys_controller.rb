class Admin::RaritysController < ApplicationController
before_action :authenticate_admin!

  def index
    @raritys = Rarity.all
    @rarity = Rarity.new
  end

  def show
    redirect_to edit_admin_rarity_path(params[:id])
  end

  def create
    @rarity = Rarity.new(rarity_params)
    @raritys = Rarity.all
    if @rarity.save
      flash[:notice] = "ジャンルを追加しました。"
      redirect_to admin_raritys_path
    else
      flash.now[:alert] = "ジャンルの追加に失敗しました。"
      render :index
    end
  end

  def edit
    @rarity = Rarity.find(params[:id])
  end


  def update
    @rarity = Rarity.find(params[:id])
    if @rarity.update(rarity_params)
      flash[:notice] = "ジャンルを変更しました。"
      redirect_to admin_raritys_path
    else
      flash.now[:alert] = "ジャンルの変更に失敗しました。"
      render :edit
    end
  end


private

  def rarity_params
    params.require(:rarity).permit(:name)
  end
end

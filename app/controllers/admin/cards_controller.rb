class Admin::CardsController < ApplicationController
  before_action :authenticate_admin!
  before_action :nul_card, only: [:edit, :update, :show]

  def index
    @card_data = Card.search(params[:q]).by_rarity(params[:rarity_id]).by_store(params[:store_id]).send(sort_order)
    @cards = Kaminari.paginate_array(@card_data).page(params[:page]).per(24)
  end

  def show
    @card = Card.find(params[:id])
    @card_comment = CardComment.new
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      flash[:notice] = "変更しました。"
      redirect_to admin_card_path(@card.id)
    else
      flash.now[:alert] = "変更に失敗しました。"
      render :edit
    end
  end

  private

  def card_params
    params.require(:card).permit(:rarity_id, :store_id, :title, :body, :price, :is_active, :image)
  end

  def nul_card
    if params[:id]
      @card = Card.find_by(id: params[:id])
      if @card.nil?
        render 'layouts/notfind'
      end
    end
  end

  def sort_order
    case params[:sort_by]
    when 'latest'
      :latest
    when 'old'
      :old
    when 'high_price'
      :high_price
    when 'low_price'
      :low_price
    else
      :latest
    end
  end
end

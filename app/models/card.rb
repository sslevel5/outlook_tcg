class Card < ApplicationRecord
  has_one_attached :image
  belongs_to :rarity, optional: true
  belongs_to :store, optional: true
  belongs_to :customer
  has_many :card_comments
  has_many :favorites, dependent: :destroy

  validates :rarity, presence: { message: "を選択してください" }
  validates :store, presence: { message: "を選択してください" }
  validates :price, presence: true
  validates :title, presence: true, length: { maximum: 30 }
  validates :image, presence: true
  validates :body, presence: true, length: { maximum: 70 }

  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

  scope :search, ->(query) {
    where("title LIKE ?", "%#{query}%") if query.present?
  }

  scope :by_rarity, ->(rarity_id) {
    where(rarity_id: rarity_id) if rarity_id.present?
  }

  scope :by_store, ->(store_id) {
    where(store_id: store_id) if store_id.present?
  }

  scope :latest, -> {order(created_at: :desc)}
  scope :old, -> {order(created_at: :asc)}
  scope :high_price, -> {order(price: :desc)}
  scope :low_price, -> {order(price: :asc)}

end

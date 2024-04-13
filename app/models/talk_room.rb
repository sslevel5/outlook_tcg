class TalkRoom < ApplicationRecord
  belongs_to :sender, class_name: "Customer"
  belongs_to :recipient, class_name: "Customer"
  has_many :talk_room_messages
  has_many :customers

  # 送信者を取得するメソッドを定義
  def senders
    Customer.where(id: sender_id)
  end

  # 送信したときの処理
  def self.sendhoge(sender_id,recipient_id)
    # sender_id, recipient_id を指定して TalkRoom を作成
    TalkRoom.create(sender_id: sender_id, recipient_id: recipient_id)
  end

  # 送信していれば true を返す
  def sending?(customer)
    sender == customer
  end

  # 送信者または受信者の名前を返すメソッドを定義
  def name(current_customer)
    if sender == current_customer
      recipient.name
    elsif recipient == current_customer
      sender.name
    else
      "Unknown"
    end
  end
  
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or find_or_create_by!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by!(name: 'Luke', movie: movies.first)

Admin.find_or_create_by!(email: 'tcg@tcg') do |admin|
  admin.password = 'tcgtcg'
  admin.password_confirmation = 'tcgtcg'
end

# レアリティ
Rarity.find_or_create_by!(name: "C")
Rarity.find_or_create_by!(name: "UC")
Rarity.find_or_create_by!(name: "R")
Rarity.find_or_create_by!(name: "AR")
Rarity.find_or_create_by!(name: "RR")
Rarity.find_or_create_by!(name: "RRR")
Rarity.find_or_create_by!(name: "SR")
Rarity.find_or_create_by!(name: "SAR")
Rarity.find_or_create_by!(name: "HR")
Rarity.find_or_create_by!(name: "UR")

# 店舗名
Store.find_or_create_by!(name: "ポンジョー")
Store.find_or_create_by!(name: "晴れてるね")
Store.find_or_create_by!(name: "カードいっぱい")
Store.find_or_create_by!(name: "ドラゴンテール")
Store.find_or_create_by!(name: "老舗カード")
Store.find_or_create_by!(name: "神紙カード")

Customer.find_or_create_by!(
  email: "aaa@aaa",
  name: "User 1"
) do |customer|
  customer.password = "aaaaaa"
  customer.password_confirmation = "aaaaaa"
end

Customer.find_or_create_by!(
  email: "bbb@bbb",
  name: "User 2"
) do |customer|
  customer.password = "bbbbbb"
  customer.password_confirmation = "bbbbbb"
end

Customer.find_or_create_by!(
  email: "ccc@ccc",
  name: "User 3"
) do |customer|
  customer.password = "cccccc"
  customer.password_confirmation = "cccccc"
end

Customer.find_or_create_by!(
  email: "ddd@ddd",
  name: "User 4"
) do |customer|
  customer.password = "dddddd"
  customer.password_confirmation = "dddddd"
end

Customer.find_or_create_by!(
  email: "fff@fff",
  name: "User 5"
) do |customer|
  customer.password = "ffffff"
  customer.password_confirmation = "ffffff"
end

Customer.find_or_create_by!(
  email: "eee@eee",
  name: "User 6"
) do |customer|
  customer.password = "eeeeee"
  customer.password_confirmation = "eeeeee"
end

Customer.find_or_create_by!(
  email: "ggg@ggg",
  name: "User 7"
) do |customer|
  customer.password = "gggggg"
  customer.password_confirmation = "gggggg"
end

Card.find_or_create_by!(
  title: "鉄壁の縦",
  conversion_title: "てっぺきなたて",
  body: "1枚は欲しいな",
  price: 370,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "eee@eee").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
end

Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに1枚は欲しい",
  price: 100,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 500,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 700,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 400,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 4000,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜UR.png')), filename: 'すごい竜UR.png')
end

Card.find_or_create_by!(
  title: "破壊的な斧",
  conversion_title: "はかいてきなおの",
  body: "環境カード",
  price: 200,
  rarity_id: Rarity.find_by(name: "C").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '破壊的な斧.png')), filename: '破壊的な斧.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "やすくない！？",
  price: 100,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "デッキに1枚は欲しい",
  price: 170,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "PSA10!",
  price: 27000,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜ローダー.png')), filename: 'すごい竜ローダー.png')
end

Card.find_or_create_by!(
  title: "古の竜",
  conversion_title: "いにしえのりゅう",
  body: "デッキに1枚は欲しい",
  price: 100,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '古の竜.png')), filename: '古の竜.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "デッキに1枚は欲しい",
  price: 170,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "破壊的な斧",
  conversion_title: "はかいてきなおの",
  body: "環境カード",
  price: 400,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '破壊的な斧.png')), filename: '破壊的な斧.png')
end

Card.find_or_create_by!(
  title: "すごい竜のデッキ",
  conversion_title: "すごいりゅうのでっき",
  body: "環境デッキ",
  price: 14000,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜のデッキ.png')), filename: 'すごい竜のデッキ.png')
end

card=
  Card.find_or_create_by!(
    title: "鉄壁の縦",
    conversion_title: "てっぺきなたて",
    body: "環境デッキ",
    price: 340,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "晴れてるね").id,
    customer_id: Customer.find_by(email: "ddd@ddd").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
  end
card.created_at=1.day.ago
card.save

card1=
  Card.find_or_create_by!(
    title: "光のパワー",
  conversion_title: "ひかりのぱわー",
    body: "イラストがいい",
    price: 3400,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "ポンジョー").id,
    customer_id: Customer.find_by(email: "eee@eee").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
  end
card1.created_at=3.day.ago
card1.save

Card.find_or_create_by!(
  title: "草のパワー",
  conversion_title: "くさのぱわー",
  body: "イラストがいい。レアリティ揃えたい！",
  price: 3000,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '草のパワー.png')), filename: '草のパワー.png')
end

Card.find_or_create_by!(
  title: "火のパワー",
  conversion_title: "ひのぱわー",
  body: "イラストがいい。レアリティあげたい！",
  price: 3900,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '火のパワー.png')), filename: '火のパワー.png')
end

card2=
  Card.find_or_create_by!(
    title: "白のデッキ",
  conversion_title: "しろのでっき",
    body: "tire1に勝てる！",
    price: 11100,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "ggg@ggg").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '白のデッキ.png')), filename: '白のデッキ.png')
  end
card2.created_at=3.day.ago
card2.save

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "自分用メモ",
  price: 111,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "ggg@ggg").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境ですごいカード",
  price: 500,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "光のパワー",
  conversion_title: "ひかりのぱわー",
  body: "イラストがいい",
  price: 3600,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "ggg@ggg").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
end

card3=
  Card.find_or_create_by!(
    title: "白のデッキ",
  conversion_title: "しろのでっき",
    body: "tire1に勝つる！",
    price: 11300,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "ggg@ggg").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '白のデッキ.png')), filename: '白のデッキ.png')
  end
card3.created_at=1.day.ago
card3.save

card4=
  Card.find_or_create_by!(
    title: "光のパワー",
  conversion_title: "ひかりのぱわー",
    body: "イラストがうつくしい",
    price: 3800,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "ポンジョー").id,
    customer_id: Customer.find_by(email: "bbb@bbb").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
  end
card4.created_at=2.day.ago
card4.save

Card.find_or_create_by!(
  title: "つるぎ",
  body: "なんいでもはいる",
  price: 150,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end

card5=
  Card.find_or_create_by!(
    title: "すごい竜",
    conversion_title: "すごいりゅう",
    body: "環境カード",
    price: 4500,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "bbb@bbb").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜UR.png')), filename: 'すごい竜UR.png')
  end
card5.created_at=4.day.ago
card5.save

Card.find_or_create_by!(
  title: "鉄壁の縦",
  conversion_title: "てっぺきなたて",
  body: "環境ですごいカード",
  price: 1500,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "eee@eee").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
end

card6=
Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに1枚は欲しい",
  price: 120,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end
card6.created_at=1.day.ago
card6.save

card7=
Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに2枚は欲しい",
  price: 120,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end
card7.created_at=1.day.ago
card7.save

Card.find_or_create_by!(
  title: "鉄壁の縦",
  conversion_title: "てっぺきなたて",
  body: "1枚は欲しいな",
  price: 330,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "eee@eee").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
end

Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに1枚は欲しい",
  price: 80,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 450,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 600,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 300,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境カード",
  price: 3600,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜UR.png')), filename: 'すごい竜UR.png')
end

Card.find_or_create_by!(
  title: "破壊的な斧",
  conversion_title: "はかいてきなおの",
  body: "環境カード",
  price: 150,
  rarity_id: Rarity.find_by(name: "C").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '破壊的な斧.png')), filename: '破壊的な斧.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "やすくない！？",
  price: 90,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "デッキに1枚は欲しい",
  price: 120,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "PSA10!",
  price: 26000,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜ローダー.png')), filename: 'すごい竜ローダー.png')
end

Card.find_or_create_by!(
  title: "古の竜",
  conversion_title: "いにしえのりゅう",
  body: "デッキに1枚は欲しい",
  price: 120,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '古の竜.png')), filename: '古の竜.png')
end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "デッキに1枚は欲しい",
  price: 270,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "破壊的な斧",
  conversion_title: "はかいてきなおの",
  body: "環境カード",
  price: 430,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '破壊的な斧.png')), filename: '破壊的な斧.png')
end

Card.find_or_create_by!(
  title: "すごい竜のデッキ",
  conversion_title: "すごいりゅうのでっき",
  body: "環境デッキ",
  price: 11000,
  rarity_id: Rarity.find_by(name: "RR").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜のデッキ.png')), filename: 'すごい竜のデッキ.png')
end

  Card.find_or_create_by!(
    title: "鉄壁の縦",
    conversion_title: "てっぺきなたて",
    body: "環境デッキ",
    price: 310,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "晴れてるね").id,
    customer_id: Customer.find_by(email: "ddd@ddd").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
  end

  Card.find_or_create_by!(
    title: "光のパワー",
  conversion_title: "ひかりのぱわー",
    body: "イラストがいい",
    price: 2900,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "ポンジョー").id,
    customer_id: Customer.find_by(email: "eee@eee").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
  end

Card.find_or_create_by!(
  title: "草のパワー",
  conversion_title: "くさのぱわー",
  body: "イラストがいい。レアリティ揃えたい！",
  price: 2900,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '草のパワー.png')), filename: '草のパワー.png')
end

Card.find_or_create_by!(
  title: "火のパワー",
  conversion_title: "ひのぱわー",
  body: "イラストがいい。レアリティあげたい！",
  price: 3200,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "ドラゴンテール").id,
  customer_id: Customer.find_by(email: "fff@fff").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '火のパワー.png')), filename: '火のパワー.png')
end

  Card.find_or_create_by!(
    title: "白のデッキ",
  conversion_title: "しろのでっき",
    body: "tire1に勝てる！",
    price: 11200,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "ggg@ggg").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '白のデッキ.png')), filename: '白のデッキ.png')
  end

Card.find_or_create_by!(
  title: "斧を使うもの",
  conversion_title: "おのをつかうもの",
  body: "自分用メモ",
  price: 121,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "ggg@ggg").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '斧を使うもの.png')), filename: '斧を使うもの.png')
end

Card.find_or_create_by!(
  title: "すごい竜",
  conversion_title: "すごいりゅう",
  body: "環境ですごいカード",
  price: 400,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "ccc@ccc").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜.png')), filename: 'すごい竜.png')
end

Card.find_or_create_by!(
  title: "光のパワー",
  conversion_title: "ひかりのぱわー",
  body: "イラストがいい",
  price: 3100,
  rarity_id: Rarity.find_by(name: "UR").id,
  store_id: Store.find_by(name: "カードいっぱい").id,
  customer_id: Customer.find_by(email: "ggg@ggg").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
end

  Card.find_or_create_by!(
    title: "白のデッキ",
  conversion_title: "しろのでっき",
    body: "tire1に勝つる！",
    price: 11200,
    rarity_id: Rarity.find_by(name: "RR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "ggg@ggg").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '白のデッキ.png')), filename: '白のデッキ.png')
  end

  Card.find_or_create_by!(
    title: "光のパワー",
  conversion_title: "ひかりのぱわー",
    body: "イラストがうつくしい",
    price: 3200,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "ポンジョー").id,
    customer_id: Customer.find_by(email: "bbb@bbb").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '光のパワー.png')), filename: '光のパワー.png')
  end

Card.find_or_create_by!(
  title: "つるぎ",
  body: "なんいでもはいる",
  price: 110,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "ポンジョー").id,
  customer_id: Customer.find_by(email: "ddd@ddd").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end

  Card.find_or_create_by!(
    title: "すごい竜",
    conversion_title: "すごいりゅう",
    body: "環境カード",
    price: 4100,
    rarity_id: Rarity.find_by(name: "UR").id,
    store_id: Store.find_by(name: "カードいっぱい").id,
    customer_id: Customer.find_by(email: "bbb@bbb").id
  ) do |card|
    # カードに画像を添付する
    card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'すごい竜UR.png')), filename: 'すごい竜UR.png')
  end

Card.find_or_create_by!(
  title: "鉄壁の縦",
  conversion_title: "てっぺきなたて",
  body: "環境ですごいカード",
  price: 1100,
  rarity_id: Rarity.find_by(name: "HR").id,
  store_id: Store.find_by(name: "老舗カード").id,
  customer_id: Customer.find_by(email: "eee@eee").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', '鉄壁の縦.png')), filename: '鉄壁の縦.png')
end

Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに11枚は欲しい",
  price: 120,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "神紙カード").id,
  customer_id: Customer.find_by(email: "aaa@aaa").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end

Card.find_or_create_by!(
  title: "つるぎ",
  body: "デッキに1枚は欲しい",
  price: 110,
  rarity_id: Rarity.find_by(name: "R").id,
  store_id: Store.find_by(name: "晴れてるね").id,
  customer_id: Customer.find_by(email: "bbb@bbb").id
) do |card|
  # カードに画像を添付する
  card.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'つるぎ.png')), filename: 'つるぎ.png')
end
# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  category   :integer          default("other"), not null
#  content    :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  has_many :comments

  enum category: {
    # その他
    other: 1,
    # スポーツ
    sports: 2,
    # 政治
    politics: 3,
    # エンタメ
    entertainment: 4,
    # 科学
    science: 5,
    # 健康
    health: 6,
    # ビジネス
    business: 7,
    # 教育
    education: 8,
    # 旅行
    travel: 9,
    # 食べ物
    food: 10,
    # ファッション
    fashion: 11,
    # ライフスタイル
    lifestyle: 12,
    # 音楽
    music: 13,
    # 映画
    movies: 14,
    # 本
    books: 15,
    # 芸術
    art: 16,
    # 写真
    photography: 17,
    # デザイン
    design: 18,
    # 美容
    beauty: 19,
    # フィットネス
    fitness: 20,
    # 育児
    parenting: 21,
    # 家
    home: 22,
    # 庭
    garden: 23,
    # 結婚
    wedding: 24,
    # 不動産
    real_estate: 25,
    # 自動車
    automotive: 26,
    # ペット
    pets: 27,
    # アウトドア
    outdoors: 28,
    # 趣味
    hobbies: 29,
    # DIY
    diy: 30,
    # テクノロジー
    technology: 31
  }, _prefix: true
end

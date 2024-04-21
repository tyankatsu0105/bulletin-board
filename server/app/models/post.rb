class Post < ApplicationRecord
  has_many :comments

  enum category: {
    # テクノロジー
    technology: 1,
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
    lifestyle: 12,
    music: 13,
    movies: 14,
    books: 15,
    art: 16,
    photography: 17,
    design: 18,
    beauty: 19,
    fitness: 20,
    parenting: 21,
    home: 22,
    garden: 23,
    wedding: 24,
    real_estate: 25,
    automotive: 26,
    pets: 27,
    outdoors: 28,
    hobbies: 29,
    diy: 30,
    other: 31,
  }, _prefix: true
end

class Address < ApplicationRecord
  # usersテーブルとのアソシエーション
  belongs_to :user

  # アクティブハッシュとのアソシエーション
  belongs_to :prefecture
end

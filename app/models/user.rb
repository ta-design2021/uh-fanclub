class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # addressesテーブルとのアソシエーション
  has_one :addresses
  # membership_plansテーブルとのアソシエーション
  # belongs_to :membership_plan

  with_options presence: true do
    validates :nickname,         length: { maximum: 40 }
    validates :password,         format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :family_name,      format: { with: /\A[^ -~｡-ﾟ]+\z/ }
    validates :first_name,        format: { with: /\A[^ -~｡-ﾟ]+\z/ }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_kana,  format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth_date
    validates :gender_id
    validates :phone_number
  end
end

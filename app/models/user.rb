class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: :true  #バリデーションとはデータ登録の際に一定の制約を設けること
                                   #validates :カラム名, バリデーションの種類presence :trueは空のカラムを受付ない

  has_many :room_users
  has_many :users, through: :room_users
end

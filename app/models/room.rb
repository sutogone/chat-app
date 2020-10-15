class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy    #throughオプション has_many :テーブル名, through: :中間テーブル名
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
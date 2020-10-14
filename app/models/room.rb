class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users    #throughオプション has_many :テーブル名, through: :中間テーブル名
end
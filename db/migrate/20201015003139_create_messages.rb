class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :room, foreign_key: true #referencesを使うと自動でテーブル内に"テーブル名_id"を作ってくれる
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.index :name
      t.references :product, foreign_key: true
      t.integer :all_number, null: false
      t.integer :sold_number, null: false
      t.integer :remain_number
      t.string :image
      t.text :memo
      t.timestamps
    end
  end
end

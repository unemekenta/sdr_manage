class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.index :name
      t.string :image
      t.text :description
      t.text :memo
      t.date :start
      t.date :end
      t.timestamps
    end
  end
end

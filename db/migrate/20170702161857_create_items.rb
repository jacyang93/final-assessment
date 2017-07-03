class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :titile
      t.string :description
      t.string :category
      t.string :condition
      t.integer :price
      t.string :location
      t.timestamps
    end
  end
end

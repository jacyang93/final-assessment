class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :category_id
      t.decimal :min_price
      t.decimal :max_price
      t.integer :location

      t.timestamps
    end
  end
end

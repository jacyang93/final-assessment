class RemoveCategoryFromItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :category
  end
end

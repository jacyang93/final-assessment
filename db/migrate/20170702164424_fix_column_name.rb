class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :titile, :title
  end
end

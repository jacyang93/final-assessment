class AddPicturesToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :pictures, :json
  end
end

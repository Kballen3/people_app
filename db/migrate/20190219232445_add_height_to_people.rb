class AddHeightToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :height, :string
  end
end

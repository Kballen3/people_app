class RemoveRaceFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :race, :string
  end
end

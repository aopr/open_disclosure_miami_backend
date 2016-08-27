class RemoveLastNameFromMonies < ActiveRecord::Migration[5.0]
  def change
    remove_column :monies, :last_name, :string
  end
end

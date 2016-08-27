class RemoveFirstNameFromMonies < ActiveRecord::Migration[5.0]
  def change
    remove_column :monies, :first_name, :string
  end
end

class AddNameToMonies < ActiveRecord::Migration[5.0]
  def change
    add_column :monies, :name, :string
  end
end

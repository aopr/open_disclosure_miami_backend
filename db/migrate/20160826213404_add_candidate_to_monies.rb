class AddCandidateToMonies < ActiveRecord::Migration[5.0]
  def change
    add_column :monies, :candidate, :string
  end
end

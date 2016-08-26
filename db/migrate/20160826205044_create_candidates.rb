class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.string :city
      t.string :office
      t.string :status

      t.timestamps
    end
  end
end

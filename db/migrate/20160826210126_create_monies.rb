class CreateMonies < ActiveRecord::Migration[5.0]
  def change
    create_table :monies do |t|
      t.string :date
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :contributor_type
      t.string :occupation
      t.string :item_type
      t.string :amount

      t.timestamps
    end
  end
end

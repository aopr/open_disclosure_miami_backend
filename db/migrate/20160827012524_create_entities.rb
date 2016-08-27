class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :state
      t.string :city
      t.string :entity_type
      t.string :occupation
      t.float :donated_amount, default: 0
      t.float :paid_amount, default: 0
    end
  end
end

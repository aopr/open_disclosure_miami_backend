class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :address
      t.string :entity_type
      t.string :donated_amount
      t.string :paid_amount
      t.string :donation_type
    end
  end
end

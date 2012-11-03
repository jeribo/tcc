class CreatePlacements < ActiveRecord::Migration
  def change
    create_table :placements do |t|
      t.string :type_address
      t.string :address
      t.string :city
      t.string :district
      t.string :complement
      t.string :zip
      t.string :state
      t.belongs_to :person

      t.timestamps
    end
    add_index :placements, :person_id
  end
end

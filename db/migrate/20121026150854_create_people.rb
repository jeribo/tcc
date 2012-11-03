class CreatePeople < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :slug, null: false
      t.string :name
      t.string :last_name
      t.string :type_person
      t.string :federal_reg
      t.string :state_reg
      t.date :born
      t.string :email_person
      t.boolean :active
      t.string :phone_1
      t.string :phone_2

      t.timestamps
    end
    add_index :people, :slug, unique: true

  end
end

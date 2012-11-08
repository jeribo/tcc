class AddConfirmableToDevise < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      t.datetime :confirmed_at
    end    
  end
end

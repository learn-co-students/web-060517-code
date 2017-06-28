class CreatePets < ActiveRecord::Migration[4.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
    end
  end
end

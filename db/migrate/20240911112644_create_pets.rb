class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.references "boy"
      t.string "animal"
      t.integer "age"

      t.timestamps
    end
  end
end

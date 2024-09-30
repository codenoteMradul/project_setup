class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string "patient"

      t.timestamps
    end
  end
end

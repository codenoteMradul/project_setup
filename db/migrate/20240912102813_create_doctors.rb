class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string "doctor"

      t.timestamps
    end
  end
end

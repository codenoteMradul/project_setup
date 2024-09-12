class CreateMen < ActiveRecord::Migration[7.1]
  def change
    create_table :men do |t|
      t.string "name"

      t.timestamps
    end
  end
end

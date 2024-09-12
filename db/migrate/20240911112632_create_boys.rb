class CreateBoys < ActiveRecord::Migration[7.1]
  def change
    create_table :boys do |t|
      t.string "name"

      t.timestamps
    end
  end
end

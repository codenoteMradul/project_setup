class CreateDresses < ActiveRecord::Migration[7.1]
  def change
    create_table :dresses do |t|
      t.references "man"
      t.string "shirt"
      t.string "jeans"

      t.timestamps
    end
  end
end

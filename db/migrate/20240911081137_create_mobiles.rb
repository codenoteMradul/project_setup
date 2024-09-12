class CreateMobiles < ActiveRecord::Migration[7.1]
  def change
    create_table :mobiles do |t|
      t.references "person"
      t.string "company"
      t.integer "price"

      t.timestamps
    end
  end
end

class CreatePersonalDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_details do |t|

      t.timestamps
    end
  end
end

class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.belongs_to "course"
      t.belongs_to "student"
       t.integer "grade"

      t.timestamps
    end
  end
end

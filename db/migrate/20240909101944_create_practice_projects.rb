class CreatePracticeProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :practice_projects do |t|

      t.timestamps
    end
  end
end

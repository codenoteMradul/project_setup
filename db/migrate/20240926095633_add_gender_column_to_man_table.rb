class AddGenderColumnToManTable < ActiveRecord::Migration[7.1]
  def change
    add_column  :men,:gender,:string 
  end
end

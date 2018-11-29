class ChangeDateTypesOnPeople < ActiveRecord::Migration
  def change
  end

  def up
  	remove_column :people, :reskey1
  	remove_column :people, :reskey2
  	remove_column :people, :reskey3
  	change_column :people, :startdate, :date
  	change_column :people, :graddate, :date
  end

  def down
  	add_column :people, :reskey1, :string
  	add_column :people, :reskey2, :string
  	add_column :people, :reskey3, :string
  	change_column :people, :startdate, :datetime
  	change_column :people, :graddate, :datetime
  end
end

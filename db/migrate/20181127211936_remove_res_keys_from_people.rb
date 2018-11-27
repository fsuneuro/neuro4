class RemoveResKeysFromPeople < ActiveRecord::Migration
  def change
  	remove_column :people, :reskey1
  	remove_column :people, :reskey2
  	remove_column :people, :reskey3
  	remove_column :people, :startdate
  	remove_column :people, :graddate
  end
end

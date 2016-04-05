class AddLabwebToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :labweb, :string
  end
end

class AddSearchToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :search, :boolean
  	add_column :people, :lab_name, :string
  end
end

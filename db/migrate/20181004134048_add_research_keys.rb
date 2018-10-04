class AddResearchKeys < ActiveRecord::Migration
  def change
  	add_column :people, :reskey1, :string
  	add_column :people, :reskey2, :string
  	add_column :people, :reskey3, :string
  	add_column :people, :startdate, :datetime
  	add_column :people, :graddate, :datetime
  end
end

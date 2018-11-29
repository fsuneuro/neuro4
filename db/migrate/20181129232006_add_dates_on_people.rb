class AddDatesOnPeople < ActiveRecord::Migration
  def change
  	add_column :people, :startdate, :date
  	add_column :people, :graddate, :date
  end
end

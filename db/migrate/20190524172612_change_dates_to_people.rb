class ChangeDatesToPeople < ActiveRecord::Migration
  def change
  	change_column :people, :startdate, :string
  	change_column :people, :graddate, :string
  end
end

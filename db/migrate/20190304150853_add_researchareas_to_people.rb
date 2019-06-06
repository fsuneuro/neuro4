class AddResearchareasToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :ra_cs, :boolean
  	add_column :people, :ra_hn, :boolean
  	add_column :people, :ra_mg, :boolean
  	add_column :people, :ra_nb, :boolean
  	add_column :people, :ra_ne, :boolean
  end
end

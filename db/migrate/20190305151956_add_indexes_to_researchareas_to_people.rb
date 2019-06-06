class AddIndexesToResearchareasToPeople < ActiveRecord::Migration
  def change
  	add_index :people, :ra_cs
  	add_index :people, :ra_hn
  	add_index :people, :ra_mg
  	add_index :people, :ra_nb
  	add_index :people, :ra_ne
  end
end

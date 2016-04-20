class AddBiblioToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :biblio, :string
  end
end

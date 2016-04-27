class AddCitlinksToPeople < ActiveRecord::Migration
  def change
  	rename_column :people, :biblio, :pubmed
  	add_column :people, :scholar, :string
  	add_column :people, :sci_index, :string
  end
end

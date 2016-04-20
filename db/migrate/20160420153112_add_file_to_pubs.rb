class AddFileToPubs < ActiveRecord::Migration
  def change
  	add_column :pubs, :file, :string
  end
end

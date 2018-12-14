class AddKeysToPeople < ActiveRecord::Migration
  def change
 	 add_column :people, :reskeyID, :integer
  end
end

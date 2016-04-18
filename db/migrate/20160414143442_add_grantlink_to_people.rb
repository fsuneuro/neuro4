class AddGrantlinkToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :grantlink, :string
  end
end

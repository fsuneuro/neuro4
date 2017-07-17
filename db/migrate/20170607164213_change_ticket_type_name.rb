class ChangeTicketTypeName < ActiveRecord::Migration
  def change
  	rename_column :tickets, :type, :category
  	rename_column :tickets, :subtype, :subcategory
  end
end

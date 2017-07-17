class ChangeTicketDateType < ActiveRecord::Migration
  def change
  	change_column :tickets, :requested_by, :text
  end
end

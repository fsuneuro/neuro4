class AddDefaultToTicketStatus < ActiveRecord::Migration
  def change
  	change_column :tickets, :status, :string, default: "New"
  end
end

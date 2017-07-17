class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :type
      t.string :requestor_name
      t.string :requestor_lab
      t.string :contact
      t.datetime :created_at
      t.datetime :updated_at
      t.text :request
      t.datetime :requested_by
      t.string :subtype

      t.timestamps null: false
    end
  end
end

class CreateDisgrads < ActiveRecord::Migration
  def change
    create_table :disgrads do |t|
      t.string :fname
      t.string :lname
      t.integer :year
      t.string :mprof
      t.string :current_location
      t.string :link

      t.timestamps null: false
    end
  end
end

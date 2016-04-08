class ChangeBosstoBossId < ActiveRecord::Migration
  def change
  	rename_column :people, :boss, :boss_id
  end
end

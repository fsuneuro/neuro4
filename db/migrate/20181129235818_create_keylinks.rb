class CreateKeylinks < ActiveRecord::Migration
  def change
    create_table :keylinks do |t|
    	t.integer :keylinkid
    	t.string :keytype
    	t.integer :keywordid
    	t.integer :personID
    end
  end
end

class AddIndexesToVariousTables < ActiveRecord::Migration
  def change
  	add_index :people, :reskeyID
  	add_index :keywords, :keywordid
  	add_index :keylinks, :keylinkid
  end
end

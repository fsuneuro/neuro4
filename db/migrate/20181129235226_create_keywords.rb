class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :tag
      t.integer :keywordid
    end
  end
end

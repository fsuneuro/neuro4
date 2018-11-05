class CreateFacKeys < ActiveRecord::Migration
  def change
    create_table :fac_keys do |t|
    	t.integer	:fac_key_id
    	t.string	:fk_type
    	t.integer	:keyword_id
    end
  end
end

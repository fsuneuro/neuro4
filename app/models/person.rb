class Person < ActiveRecord::Base
	has_many :pubs
	default_scope { order('lname') }
	belongs_to :boss, class_name: 'Person'
	has_many :subordinates, class_name: 'Person', foreign_key: 'boss_id'
	has_many :key_links
	has_many :key_words, through: :key_links


    validates_presence_of :user_name, :position, :fname, :lname # Needed for friendly URLs
end


class Keyword < ActiveRecord::Base
	has_many :key_links
	has_many :people, through: :key_links
end
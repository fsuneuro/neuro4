class KeyLink < ActiveRecord::Base
	belongs_to :person
	belongs_to :keyword
end
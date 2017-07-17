class Ticket < ActiveRecord::Base
	validates_presence_of :category, :requestor_name, :requestor_lab, :contact, :request, :requested_by
end

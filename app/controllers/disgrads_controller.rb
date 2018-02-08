class DisgradsController < ApplicationController

	def index
		@disgrads = Disgrad.all
	end

end

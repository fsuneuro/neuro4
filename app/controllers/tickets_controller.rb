class TicketsController < ApplicationController

	def index
		@ticket = Ticket.all
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			flash[:notice] = "Ticket created successfully!"
			redirect_to '/support/supporthub'
		else
			render :new, status: :unprocessable_entity
		end
	end

	def show
		@ticket = Ticket.find(params[:id])
	end


	private
	def ticket_params
		params.require(:ticket).permit(
			:category, :requestor_name, :requestor_lab, :contact, :request,
			 :requested_by)
		
	end

end
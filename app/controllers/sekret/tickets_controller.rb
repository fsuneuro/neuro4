class Sekret::TicketsController < SekretController

	def index
		@tickets = Ticket.all

		if params[:filter_by]
    		@people = Ticket.where(:category => params[:filter_by])
  		else
    		@people = Ticket.all
  		end
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	def new
		@ticket = Ticket.new
	end

	def create
		
		@ticket = Ticket.all

		if @ticket.save
			flash[:notice] = "Ticket created successfully!"
			redirect_to sekret_ticket_path(@ticket)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])

		if @ticket.update(ticket_params)
			redirect_to sekret_ticket_path(@ticket)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		ticket = Ticket.find(params[:id])
		ticket.destroy
		redirect_to sekret_ticket_path
	end




	private
	def ticket_params
		params.require(:ticket).permit(
			:type, :requestor_name, :requestor_lab, :contact, :request,
			 :requested_by, :subtype, :status, :notes) 
	end



end
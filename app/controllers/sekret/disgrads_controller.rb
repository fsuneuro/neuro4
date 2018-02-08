class Sekret::DisgradsController < SekretController

	def index
		@disgrads = Disgrad.all
	end

	def show
		@disgrad = Disgrad.find(params[:id])
	end

	def new
		@disgrad = Disgrad.new
	end

	def create
		
		@disgrad = Disgrad.new(disgrad_params)

		if @disgrad.save
			flash[:notice] = "Disgrad created successfully!"
			redirect_to sekret_disgrad_path(@disgrad)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@disgrad = Disgrad.find(params[:id])
	end

	def update
		@disgrad = Disgrad.find(params[:id])

		if @disgrad.update(disgrad_params)
			redirect_to sekret_disgrad_path(@disgrad)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		disgrad = Disgrad.find(params[:id])
		disgrad.destroy
		redirect_to sekret_disgrad_path
	end




	private
	def disgrad_params
		params.require(:disgrad).permit(
			:fname, :lname, :year, :mprof, :current_location, :link
			) 
	end

	
end
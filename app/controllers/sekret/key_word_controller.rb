class Sekret::Key_WordsController < SekretController

	def index
		@keywords = Keyword.all
	end

	def show
		@keyword = Keyword.find(params[:id])
	end

	def new
		@keyword = Keyword.new
	end

	def create
		
		@keyword = Keyword.new(disgrad_params)

		if @keyword.save
			flash[:notice] = "Keyword created successfully!"
			redirect_to sekret_disgrad_path(@keyword)
		else
			render :new, status: :unprocessable_entity
		end
	end

	def edit
		@keyword = Keyword.find(params[:id])
	end

	def update
		@keyword = Keyword.find(params[:id])

		if @keyword.update(keyword_params)
			redirect_to sekret_keyword_path(@keyword)
		else
			render :edit, status: :unprocessable_entity
		end
	end

	def destroy
		keyword = Keyword.find(params[:id])
		keyword.destroy
		redirect_to sekret_keyword_path
	end




	private
	def keyword_params
		params.require(:keyword).permit(
			:tag
			) 
	end

	
end
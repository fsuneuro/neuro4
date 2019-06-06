class PeopleController < ApplicationController


	def index
	  if params[:filter_by].present?
	    case params[:filter_by]
	    when 'ra_cs'
	      @people = Person.where(ra_cs: true)
	    when 'ra_hn'
	      @people = Person.where(ra_hn: true)
	    when 'ra_mg'
	      @people = Person.where(ra_mg: true)
	    when 'ra_nb'
	      @people = Person.where(ra_nb: true)
	    when 'ra_ne'
	      @people = Person.where(ra_ne: true)
	    when 'search'
	      @people = Person.where(search: true)
	    else
	      @people = Person.where(position: params[:filter_by])
	    end
	  else
	    @people = Person.all
	  end
	end 

	def show
		if params[:id]
	    	@person = Person.find(params[:id])
	    else
	    	@person = Person.find_by(position: params[:position], user_name: params[:user_name])
	    end
	end

	

	private
	def person_params
		params.require(:person).permit(
			:fname, :lname, :user_name, :auth_id, :school, :building, 
			:office, :phone, :pi1, :pi2, :boss_id, :interest, :research,
			:search, :lab_name, :position, :title, :prefix, :focus1, :focus2,
			:focus3, :labweb, :grantlink, :pubmed, :email, :scholar, :sci_index,
			:startdate, :graddate, :ra_cs, :ra_hn, :ra_mg, :ra_nb, :ra_ne) 
	end
end

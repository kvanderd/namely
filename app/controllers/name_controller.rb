class NameController < ApllicationController 

	def index
    names = Name.all
    respond_with(names) do |format|
	    format.json {render :json => names.to_json}
     end 
	end

end
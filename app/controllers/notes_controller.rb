class NotesController < ApplicationController
	def new
		@note = Note.new
	end

	def index
		@notes = Note.all
	end	

	def show 
		@note = Note.find(params[:id])
	end

	def create
		@note = Note.new(strong_params)

		if @note.save
			redirect_to notes_path(@note)
		else
			render :new
		end
	end

	def strong_params
		params.require(:note).permit(:name, :info)
	end
end

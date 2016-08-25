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
		@note = Note.new(note_params)

		if @note.save
			redirect_to notes_path(@note)
		else
			render :new
		end
	end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])

		if @note.update(note_params)
			redirect_to note_path(@note)
		else
			render :edit
		end
	end

	def note_params
		params.require(:note).permit(:name, :info)
	end
end

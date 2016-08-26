class NotesController < ApplicationController
	before_action :set_note, only:[:show, :edit, :update, :destroy]

	def new
		@note = Note.new
	end

	def index
		@notes = Note.all
	end	

	def show 
		
	end

	def create
		@note = Note.new(note_params)

		if @note.save
			flash[:success] = 'Successfull'
			redirect_to notes_path(@note)
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if @note.update(note_params)
			redirect_to note_path(@note)
		else
			render :edit
		end
	end

	def destroy
		@note.destroy
		redirect_to notes_path
	end

	private

	def note_params
		params.require(:note).permit(:name, :info)
	end

	def set_note
		@note = Note.find(params[:id])
	end
end

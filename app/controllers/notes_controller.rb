class NotesController < ApplicationController
  before_action :find_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    Note.create(note_params)
    redirect_to notes_path, notice: "Note created successfully"
  end

  def show
  end

  def edit
  end

  def update
    @note.update(note_params)
    redirect_to notes_path, notice: "Note updated successfully" 
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: "Note deleted successfully"
  end

  private
  def note_params
    params.require(:note).permit(:title, :body, :tag_list)
  end

  def find_note
    @note = Note.find(params[:id])
  end
end

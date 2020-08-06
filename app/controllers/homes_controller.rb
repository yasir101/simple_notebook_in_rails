class HomesController < ApplicationController
  
  before_action :set_project, only:[:show, :edit, :update, :destroy]

  def index
    @note = Note.new
    @notes = Note.all.order('id desc')
  end
  
  def create
    raise
    @note = Note.new(note_params)
    if @note.save 
      redirect_to notes
    end
  end
  

  private

  def set_note
    @note = Note.find(params[:id]);
  end

  def note_params
    params.require(:note).permit(:title, :note)
  end
  

end

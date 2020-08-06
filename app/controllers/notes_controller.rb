class NotesController < ApplicationController
    before_action :set_note, only:[:show, :edit, :update, :destroy]

  def index
    @note = Note.new
    @notes = Note.all.order('id desc')
  end
  
  def create
    # raise
    @note = Note.new(note_params)
    if @note.save 
      redirect_to root_path
    end
  end

  def edit
    @notes = Note.all.order('id desc')
  end

  def update
    if @note.update(note_params)
      redirect_to root_path  
    else
      render :edit
    end
  end
  
  
  
  def destroy
    @note.destroy
    redirect_to root_path
  end
  

  private

  def set_note
    @note = Note.find(params[:id]);
  end

  def note_params
    params.require(:note).permit(:title, :note)
  end
    
end

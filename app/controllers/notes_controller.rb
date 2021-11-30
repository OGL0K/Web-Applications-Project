class NotesController < ApplicationController
  before_action :set_song, only:[:new, :create]
  before_action :set_note, only: %i[ show edit update destroy ]
  # GET /notes or /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1 or /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = @song.notes.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes or /notes.json
  def create
    @note = @song.notes.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: "You have successfully created your note." }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: "You have successfully updated your note." }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: "You have successfully destroyed your note." }
      format.json { head :no_content }
    end
  end

  private

    def set_song
      @song = Song.find_by(id: params[:song_id]) ||
      Song.find(note_params[:song_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:song_id, :note)
    end
end

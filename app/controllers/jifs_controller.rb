class JifsController < ApplicationController
  before_action :set_jif, only: [:show, :edit, :update, :destroy]

  # GET /jifs
  # GET /jifs.json
  def index
    @jifs = Jif.all
  end

  # GET /jifs/1
  # GET /jifs/1.json
  def show
  end

  # GET /jifs/new
  def new
    @jif = Jif.new
  end

  # POST /jifs
  # POST /jifs.json
  def create
    @jif = Jif.new(jif_params)

    respond_to do |format|
      if @jif.save
        format.html { redirect_to jifs_url, notice: 'Jif was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jif
      @jif = Jif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jif_params
      params.require(:jif).permit([:name, :image])
    end
end

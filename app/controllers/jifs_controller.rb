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

  # GET /jifs/1/edit
  def edit
  end

  # POST /jifs
  # POST /jifs.json
  def create
    @jif = Jif.new(jif_params)

    respond_to do |format|
      if @jif.save
        format.html { redirect_to @jif, notice: 'Jif was successfully created.' }
        format.json { render :show, status: :created, location: @jif }
      else
        format.html { render :new }
        format.json { render json: @jif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jifs/1
  # PATCH/PUT /jifs/1.json
  def update
    respond_to do |format|
      if @jif.update(jif_params)
        format.html { redirect_to @jif, notice: 'Jif was successfully updated.' }
        format.json { render :show, status: :ok, location: @jif }
      else
        format.html { render :edit }
        format.json { render json: @jif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jifs/1
  # DELETE /jifs/1.json
  def destroy
    @jif.destroy
    respond_to do |format|
      format.html { redirect_to jifs_url, notice: 'Jif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jif
      @jif = Jif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jif_params
      params.require(:jif).permit(:name)
    end
end

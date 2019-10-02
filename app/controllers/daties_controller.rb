class DatiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_daty, only: [:show, :edit, :update, :destroy]

  # GET /daties
  # GET /daties.json
  def index
    @daties = Daty.all
  end

  # GET /daties/1
  # GET /daties/1.json
  def show
  end

  # GET /daties/new
  def new
    @daty = Daty.new
  end

  # GET /daties/1/edit
  def edit
  end

  # POST /daties
  # POST /daties.json
  def create
    @daty = current_user.daties.build(daty_params)

    respond_to do |format|
      if @daty.save
        format.html { redirect_to @daty, notice: 'Daty was successfully created.' }
        format.json { render :show, status: :created, location: @daty }
      else
        format.html { render :new }
        format.json { render json: @daty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daties/1
  # PATCH/PUT /daties/1.json
  def update
    respond_to do |format|
      if @daty.update(daty_params)
        format.html { redirect_to @daty, notice: 'Daty was successfully updated.' }
        format.json { render :show, status: :ok, location: @daty }
      else
        format.html { render :edit }
        format.json { render json: @daty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daties/1
  # DELETE /daties/1.json
  def destroy
    @daty.destroy
    respond_to do |format|
      format.html { redirect_to daties_url, notice: 'Daty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daty
      @daty = Daty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daty_params
      params.require(:daty).permit(:start_date, :end_date, :localisation)
    end
end

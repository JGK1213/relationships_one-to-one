class SalmonsController < ApplicationController
  before_action :set_salmon, only: [:show, :edit, :update, :destroy]

  # GET /salmons
  # GET /salmons.json
  def index
    @salmons = Salmon.all
  end

  # GET /salmons/1
  # GET /salmons/1.json
  def show
  end

  # GET /salmons/new
  def new
    @salmon = Salmon.new
  end

  # GET /salmons/1/edit
  def edit
  end

  # POST /salmons
  # POST /salmons.json
  def create
    @salmon = Salmon.new(salmon_params)

    respond_to do |format|
      if @salmon.save
        format.html { redirect_to @salmon, notice: 'Salmon was successfully created.' }
        format.json { render :show, status: :created, location: @salmon }
      else
        format.html { render :new }
        format.json { render json: @salmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salmons/1
  # PATCH/PUT /salmons/1.json
  def update
    @salmon = Salmon.find(params[:id])
    if River.first
      @salmon.river = River.first
    end
    respond_to do |format|
      if @salmon.update(salmon_params)
        format.html { redirect_to @salmon, notice: 'Salmon was successfully updated.' }
        format.json { render :show, status: :ok, location: @salmon }
      else
        format.html { render :edit }
        format.json { render json: @salmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salmons/1
  # DELETE /salmons/1.json
  def destroy
    @salmon.destroy
    respond_to do |format|
      format.html { redirect_to salmons_url, notice: 'Salmon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salmon
      @salmon = Salmon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salmon_params
      params.require(:salmon).permit(:name, :location)
    end
end

class BearsController < ApplicationController
  before_action :set_bear, only: [:show, :edit, :update, :destroy]

  # GET /bears
  # GET /bears.json
  def index
    @bears = Bear.all
  end

  # GET /bears/1
  # GET /bears/1.json
  def show
  end

  # GET /bears/new
  def new
    @bear = Bear.new
  end

  # GET /bears/1/edit
  def edit
  end

  # POST /bears
  # POST /bears.json
  def create
    @bear = Bear.new(bear_params)

    respond_to do |format|
      if @bear.save
        format.html { redirect_to @bear, notice: 'Bear was successfully created.' }
        format.json { render :show, status: :created, location: @bear }
      else
        format.html { render :new }
        format.json { render json: @bear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bears/1
  # PATCH/PUT /bears/1.json
  def update
    respond_to do |format|
      if @bear.update(bear_params)
        format.html { redirect_to @bear, notice: 'Bear was successfully updated.' }
        format.json { render :show, status: :ok, location: @bear }
      else
        format.html { render :edit }
        format.json { render json: @bear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bears/1
  # DELETE /bears/1.json
  def destroy
    @bear.destroy
    respond_to do |format|
      format.html { redirect_to bears_url, notice: 'Bear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bear
      @bear = Bear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bear_params
      params[:bear]
    end
end

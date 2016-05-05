class GolvesController < ApplicationController
  before_action :set_golf, only: [:show, :edit, :update, :destroy]

  # GET /golves
  # GET /golves.json
  def index
    @golves = Golf.all
  end

  # GET /golves/1
  # GET /golves/1.json
  def show
  end

  # GET /golves/new
  def new
    @golf = Golf.new
  end

  # GET /golves/1/edit
  def edit
  end

  # POST /golves
  # POST /golves.json
  def create
    @golf = Golf.new(golf_params)

    respond_to do |format|
      if @golf.save
        format.html { redirect_to @golf, notice: 'Golf was successfully created.' }
        format.json { render :show, status: :created, location: @golf }
      else
        format.html { render :new }
        format.json { render json: @golf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golves/1
  # PATCH/PUT /golves/1.json
  def update
    respond_to do |format|
      if @golf.update(golf_params)
        format.html { redirect_to @golf, notice: 'Golf was successfully updated.' }
        format.json { render :show, status: :ok, location: @golf }
      else
        format.html { render :edit }
        format.json { render json: @golf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golves/1
  # DELETE /golves/1.json
  def destroy
    @golf.destroy
    respond_to do |format|
      format.html { redirect_to golves_url, notice: 'Golf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golf
      @golf = Golf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golf_params
      params.require(:golf).permit(:description, :status)
    end
end

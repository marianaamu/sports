class SurvesController < ApplicationController
  before_action :set_surf, only: [:show, :edit, :update, :destroy]

  # GET /surves
  # GET /surves.json
  def index
    @surves = Surf.all
  end

  # GET /surves/1
  # GET /surves/1.json
  def show
  end

  # GET /surves/new
  def new
    @surf = Surf.new
  end

  # GET /surves/1/edit
  def edit
  end

  # POST /surves
  # POST /surves.json
  def create
    @surf = Surf.new(surf_params)

    respond_to do |format|
      if @surf.save
        format.html { redirect_to @surf, notice: 'Surf was successfully created.' }
        format.json { render :show, status: :created, location: @surf }
      else
        format.html { render :new }
        format.json { render json: @surf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surves/1
  # PATCH/PUT /surves/1.json
  def update
    respond_to do |format|
      if @surf.update(surf_params)
        format.html { redirect_to @surf, notice: 'Surf was successfully updated.' }
        format.json { render :show, status: :ok, location: @surf }
      else
        format.html { render :edit }
        format.json { render json: @surf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surves/1
  # DELETE /surves/1.json
  def destroy
    @surf.destroy
    respond_to do |format|
      format.html { redirect_to surves_url, notice: 'Surf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surf
      @surf = Surf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surf_params
      params.require(:surf).permit(:description, :status)
    end
end

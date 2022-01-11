class DesiplinesController < ApplicationController
  before_action :set_desipline, only: %i[ show edit update destroy ]

  # GET /desiplines or /desiplines.json
  def index
    @desiplines = Desipline.all
  end

  # GET /desiplines/1 or /desiplines/1.json
  def show
  end

  # GET /desiplines/new
  def new
    @desipline = Desipline.new
  end

  # GET /desiplines/1/edit
  def edit
  end

  # POST /desiplines or /desiplines.json
  def create
    @desipline = Desipline.new(desipline_params)

    respond_to do |format|
      if @desipline.save
        format.html { redirect_to desipline_url(@desipline), notice: "Desipline was successfully created." }
        format.json { render :show, status: :created, location: @desipline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desiplines/1 or /desiplines/1.json
  def update
    respond_to do |format|
      if @desipline.update(desipline_params)
        format.html { redirect_to desipline_url(@desipline), notice: "Desipline was successfully updated." }
        format.json { render :show, status: :ok, location: @desipline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desiplines/1 or /desiplines/1.json
  def destroy
    @desipline.destroy

    respond_to do |format|
      format.html { redirect_to desiplines_url, notice: "Desipline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desipline
      @desipline = Desipline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desipline_params
      params.require(:desipline).permit(:name)
    end
end

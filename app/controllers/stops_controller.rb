class StopsController < ApplicationController
  before_action :set_stop, only: %i[ show edit update destroy ]

  # GET /stops or /stops.json
  def index
    @stops = Stop.all
    @categories = @stop&.category
  end

  # GET /stops/1 or /stops/1.json
  def show
  end

  # GET /stops/new
  def new
    @stop = Stop.new
  end

  # GET /stops/1/edit
  def edit
  end

  # POST /stops or /stops.json
  def create
    @stop = Stop.new(stop_params)
    @category = Category.find_by(id: params[:category_id])

    respond_to do |format|
      if @stop.save
        format.html { redirect_to @stop, notice: "Stop was successfully created." }
        format.json { render :show, status: :created, location: @stop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stops/1 or /stops/1.json
  def update
    respond_to do |format|
      if @stop.update(stop_params)
        format.html { redirect_to @stop, notice: "Stop was successfully updated." }
        format.json { render :show, status: :ok, location: @stop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stops/1 or /stops/1.json
  def destroy
    @stop.destroy!

    respond_to do |format|
      format.html { redirect_to stops_path, status: :see_other, notice: "Stop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stop_params
      params.require(:stop).permit(:Stop_Name, :GPS_X, :GPS_Y, :Front_Of_Card, :Back_Of_Card, :Hidden_Card, :category_id)
    end
end

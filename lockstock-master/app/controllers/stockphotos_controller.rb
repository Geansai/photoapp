class StockphotosController < ApplicationController
  before_action :set_stockphoto, only: [:show, :edit, :update, :destroy]

  # GET /stockphotos
  # GET /stockphotos.json
  def index
    @stockphotos = Stockphoto.all
  end

  # GET /stockphotos/1
  # GET /stockphotos/1.json
  def show
  end

  # GET /stockphotos/new
  def new
    @stockphoto = Stockphoto.new
  end

  # GET /stockphotos/1/edit
  def edit
  end

  # POST /stockphotos
  # POST /stockphotos.json
  def create
    @stockphoto = Stockphoto.new(stockphoto_params)

    respond_to do |format|
      if @stockphoto.save
        format.html { redirect_to @stockphoto, notice: 'Stockphoto was successfully created.' }
        format.json { render :show, status: :created, location: @stockphoto }
      else
        format.html { render :new }
        format.json { render json: @stockphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockphotos/1
  # PATCH/PUT /stockphotos/1.json
  def update
    respond_to do |format|
      if @stockphoto.update(stockphoto_params)
        format.html { redirect_to @stockphoto, notice: 'Stockphoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @stockphoto }
      else
        format.html { render :edit }
        format.json { render json: @stockphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockphotos/1
  # DELETE /stockphotos/1.json
  def destroy
    @stockphoto.destroy
    respond_to do |format|
      format.html { redirect_to stockphotos_url, notice: 'Stockphoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockphoto
      @stockphoto = Stockphoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stockphoto_params
      params.require(:stockphoto).permit(:title, :description, :price, :image_url, :category, :photographer, :tags)
    end
end

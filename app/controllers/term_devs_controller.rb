class TermDevsController < ApplicationController
  before_action :set_term_dev, only: [:show, :edit, :update, :destroy]

  # GET /term_devs
  # GET /term_devs.json
  def index
    @term_devs = TermDev.all
  end

  # GET /term_devs/1
  # GET /term_devs/1.json
  def show
  end

  # GET /term_devs/new
  def new
    @term_dev = TermDev.new
  end

  # GET /term_devs/1/edit
  def edit
  end

  # POST /term_devs
  # POST /term_devs.json
  def create
    @term_dev = TermDev.new(term_dev_params)

    respond_to do |format|
      if @term_dev.save
        format.html { redirect_to @term_dev, notice: 'Term dev was successfully created.' }
        format.json { render :show, status: :created, location: @term_dev }
      else
        format.html { render :new }
        format.json { render json: @term_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_devs/1
  # PATCH/PUT /term_devs/1.json
  def update
    respond_to do |format|
      if @term_dev.update(term_dev_params)
        format.html { redirect_to @term_dev, notice: 'Term dev was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_dev }
      else
        format.html { render :edit }
        format.json { render json: @term_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_devs/1
  # DELETE /term_devs/1.json
  def destroy
    @term_dev.destroy
    respond_to do |format|
      format.html { redirect_to term_devs_url, notice: 'Term dev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_dev
      @term_dev = TermDev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_dev_params
      params.require(:term_dev).permit(:name, :type, :RackID)
    end
end

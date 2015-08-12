class PdoctorsController < ApplicationController
  before_action :set_pdoctor, only: [:show, :edit, :update, :destroy]

  # GET /pdoctors
  # GET /pdoctors.json
  def index
    @pdoctors = Pdoctor.all
  end

  # GET /pdoctors/1
  # GET /pdoctors/1.json
  def show
  end

  # GET /pdoctors/new
  def new
    @pdoctor = Pdoctor.new
  end

  # GET /pdoctors/1/edit
  def edit
  end

  # POST /pdoctors
  # POST /pdoctors.json
  def create
    @pdoctor = Pdoctor.new(pdoctor_params)

    respond_to do |format|
      if @pdoctor.save
        format.html { redirect_to @pdoctor, notice: 'Pdoctor was successfully created.' }
        format.json { render :show, status: :created, location: @pdoctor }
      else
        format.html { render :new }
        format.json { render json: @pdoctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdoctors/1
  # PATCH/PUT /pdoctors/1.json
  def update
    respond_to do |format|
      if @pdoctor.update(pdoctor_params)
        format.html { redirect_to @pdoctor, notice: 'Pdoctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdoctor }
      else
        format.html { render :edit }
        format.json { render json: @pdoctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdoctors/1
  # DELETE /pdoctors/1.json
  def destroy
    @pdoctor.destroy
    respond_to do |format|
      format.html { redirect_to pdoctors_url, notice: 'Pdoctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdoctor
      @pdoctor = Pdoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdoctor_params
      params.require(:pdoctor).permit(:nameofpet, :type, :breed, :age, :weight, :dateofvist)
    end
end

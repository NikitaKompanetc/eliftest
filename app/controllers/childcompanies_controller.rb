class ChildcompaniesController < ApplicationController
  before_action :set_childcompany, only: [:show, :edit, :update, :destroy]

  # GET /childcompanies
  # GET /childcompanies.json
  def index
    @childcompanies = Childcompany.all
  end

  # GET /childcompanies/1
  # GET /childcompanies/1.json
  def show
  end

  # GET /childcompanies/new
  def new
    @childcompany = Childcompany.new
  end

  # GET /childcompanies/1/edit
  def edit
  end

  # POST /childcompanies
  # POST /childcompanies.json
  def create
    @childcompany = Childcompany.new(childcompany_params)

    respond_to do |format|
      if @childcompany.save
        format.html { redirect_to @childcompany, notice: 'Childcompany was successfully created.' }
        format.json { render :show, status: :created, location: @childcompany }
      else
        format.html { render :new }
        format.json { render json: @childcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /childcompanies/1
  # PATCH/PUT /childcompanies/1.json
  def update
    respond_to do |format|
      if @childcompany.update(childcompany_params)
        format.html { redirect_to @childcompany, notice: 'Childcompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @childcompany }
      else
        format.html { render :edit }
        format.json { render json: @childcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childcompanies/1
  # DELETE /childcompanies/1.json
  def destroy
    @childcompany.destroy
    respond_to do |format|
      format.html { redirect_to childcompanies_url, notice: 'Childcompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_childcompany
      @childcompany = Childcompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def childcompany_params
      params.require(:childcompany).permit(:cost1, :cost2, :company)
    end
end

class CustomersessionsController < ApplicationController
  before_action :set_customersession, only: [:show, :edit, :update, :destroy]

  # GET /customersessions
  # GET /customersessions.json
  def index
    @customersessions = Customersession.all
  end

  # GET /customersessions/1
  # GET /customersessions/1.json
  def show
  end

  # GET /customersessions/new
  def new
    @customersession = Customersession.new
  end

  # GET /customersessions/1/edit
  def edit
  end

  # POST /customersessions
  # POST /customersessions.json
  def create
    @customersession = Customersession.new(customersession_params)

    respond_to do |format|
      if @customersession.save
        format.html { redirect_to @customersession, notice: 'Customersession was successfully created.' }
        format.json { render :show, status: :created, location: @customersession }
      else
        format.html { render :new }
        format.json { render json: @customersession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customersessions/1
  # PATCH/PUT /customersessions/1.json
  def update
    respond_to do |format|
      if @customersession.update(customersession_params)
        format.html { redirect_to @customersession, notice: 'Customersession was successfully updated.' }
        format.json { render :show, status: :ok, location: @customersession }
      else
        format.html { render :edit }
        format.json { render json: @customersession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customersessions/1
  # DELETE /customersessions/1.json
  def destroy
    @customersession.destroy
    respond_to do |format|
      format.html { redirect_to customersessions_url, notice: 'Customersession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customersession
      @customersession = Customersession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customersession_params
      params.require(:customersession).permit(:customeremail, :startdatetime, :enddatetime, :ip)
    end
end

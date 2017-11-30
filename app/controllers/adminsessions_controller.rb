class AdminsessionsController < ApplicationController
  before_action :set_adminsession, only: [:show, :edit, :update, :destroy]

  # GET /adminsessions
  # GET /adminsessions.json
  def index
    @adminsessions = Adminsession.all
  end

  # GET /adminsessions/1
  # GET /adminsessions/1.json
  def show
  end

  # GET /adminsessions/new
  def new
    @adminsession = Adminsession.new
  end

  # GET /adminsessions/1/edit
  def edit
  end

  # POST /adminsessions
  # POST /adminsessions.json
  def create
    @adminsession = Adminsession.new(adminsession_params)

    respond_to do |format|
      if @adminsession.save
        format.html { redirect_to @adminsession, notice: 'Adminsession was successfully created.' }
        format.json { render :show, status: :created, location: @adminsession }
      else
        format.html { render :new }
        format.json { render json: @adminsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminsessions/1
  # PATCH/PUT /adminsessions/1.json
  def update
    respond_to do |format|
      if @adminsession.update(adminsession_params)
        format.html { redirect_to @adminsession, notice: 'Adminsession was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminsession }
      else
        format.html { render :edit }
        format.json { render json: @adminsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminsessions/1
  # DELETE /adminsessions/1.json
  def destroy
    @adminsession.destroy
    respond_to do |format|
      format.html { redirect_to adminsessions_url, notice: 'Adminsession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminsession
      @adminsession = Adminsession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminsession_params
      params.require(:adminsession).permit(:username, :startdatetime, :enddatetime, :ip)
    end
end

class ProgrameventsController < ApplicationController
  before_action :set_programevent, only: [:show, :edit, :update, :destroy]

  # GET /programevents
  # GET /programevents.json
  def index
    @programevents = Programevent.all
  end

  # GET /programevents/1
  # GET /programevents/1.json
  def show
  end

  # GET /programevents/new
  def new
    @programevent = Programevent.new
  end

  # GET /programevents/1/edit
  def edit
  end

  # POST /programevents
  # POST /programevents.json
  def create
    @programevent = Programevent.new(programevent_params)

    respond_to do |format|
      if @programevent.save
        format.html { redirect_to @programevent, notice: 'Programevent was successfully created.' }
        format.json { render :show, status: :created, location: @programevent }
      else
        format.html { render :new }
        format.json { render json: @programevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programevents/1
  # PATCH/PUT /programevents/1.json
  def update
    respond_to do |format|
      if @programevent.update(programevent_params)
        format.html { redirect_to @programevent, notice: 'Programevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @programevent }
      else
        format.html { render :edit }
        format.json { render json: @programevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programevents/1
  # DELETE /programevents/1.json
  def destroy
    @programevent.destroy
    respond_to do |format|
      format.html { redirect_to programevents_url, notice: 'Programevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programevent
      @programevent = Programevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programevent_params
      params.require(:programevent).permit(:name, :description, :program_id)
    end
end

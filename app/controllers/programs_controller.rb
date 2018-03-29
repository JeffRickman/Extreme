class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  # GET /programs
  # GET /programs.json
  def index
   # define search using ransack gem
   @search = Program.search(params[:q])
   @programs = @search.result
   # @programs = Program.all
  end

  # GET /programs/1
  # GET /programs/1.json
  def show

  end

  # GET /programs/new
  def new
    @program = Program.new
    # adds an empty program event
    @program.programevents.build
  end

  # GET /programs/1/edit
  def edit
    @program.programevents.build
  end

  # POST /programs  CALLED AFTER NEW
  # POST /programs.json
  def create
    # set program attributes using strong parameters (whitelisted)
    # new program in memory ready to be saved
    @program = Program.new(program_params)
    # respond_to is a method of Active_Record and executes the block between d0..end
    # passing a responder back as the format hash (uses method missing?)
    respond_to do |format|
      # perform save as part of if statement
      if @program.save
        # render s view with message
        format.html { redirect_to @program, notice: 'Program was successfully created.' }
        format.json { render :show, status: :created, location: @program }
      else
         #Saving failed, we can inspect @program.errors for more information
         #errors displayed when rendering new action
        format.html { render :new }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programs/1   CALLED AFTER EDIT
  # PATCH/PUT /programs/1.json
  def update
    respond_to do |format|
      if @program.update(program_params)
        format.html { redirect_to @program, notice: 'Program was successfully updated.' }
        format.json { render :show, status: :ok, location: @program }
      else
        format.html { render :edit }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program.destroy
    respond_to do |format|
      format.html { redirect_to programs_url, notice: 'Program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_params
      params.require(:program).permit(:name, :description, :leader_id, :start_time, :finish_time, :program_start_date, :theme, :details, :status, 
        programevents_attributes: [ :id, :name, :description, :event_date, :leader_name, :address_line1, :address_line2, :details, :status, :_destroy ])
    end
    # Added nested table attributes

end

class CfilesController < ApplicationController
  before_action :set_cfile, only: [:show, :edit, :update, :destroy]
  # protect_from_forgery except: :update

  # GET /cfiles
  # GET /cfiles.json
  def index
    @cfiles = Cfile.all
  end

  # GET /cfiles/1
  # GET /cfiles/1.json
  def show
  end

  # GET /cfiles/new
  def new
    @cfile = Cfile.new
  end

  # GET /cfiles/1/edit
  def edit
  end

  # POST /cfiles
  # POST /cfiles.json
  def create
    # @contract = Contract.find(cfile_params[:contract_id])
    @cfile = Cfile.new(cfile_params)
    
    puts cfile_params.inspect

    # respond_to do |format|
      # if 
        @cfile.save
        puts @cfile.errors.full_messages
        
        # format.html { render "contracts/show", notice: 'Cfile was successfully created.' }
        # format.json { render :show, status: :created, location: @cfile }
      # else
        # format.html { render "contracts/show" }
        # format.json { render json: @cfile.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # PATCH/PUT /cfiles/1
  # PATCH/PUT /cfiles/1.json
  
  def update
    # @contract = Contract.find(cfile_params[:contract_id])

    puts cfile_params.inspect
    
    # respond_to do |format|
      # if 
        @cfile.update(cfile_params)
        puts @cfile.errors.full_messages
        
        # format.html { render "contracts/show", notice: 'Cfile was successfully updated.' }
        # format.json { render :show, status: :ok, location: @cfile }
      # else
        # format.html { render "contracts/show" }
        # format.json { render json: @cfile.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # DELETE /cfiles/1
  # DELETE /cfiles/1.json
  def destroy
    @cfile.destroy
    respond_to do |format|
      format.html { redirect_to cfiles_url, notice: 'Cfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfile
      @cfile = Cfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cfile_params
      #params.fetch(:cfile, {}).permit(:name, :document, :contract_id)
      params.require(:cfile).permit(:name, :document, :contract_id, :created_by, :updated_by)
    end
end

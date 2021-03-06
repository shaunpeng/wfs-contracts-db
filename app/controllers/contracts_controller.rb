class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :set_status_inactive]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.where("status <> 'I'").order(updated_at: :desc)
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    if @contract.cfile
      @cfile = @contract.cfile
    else
      @cfile = Cfile.new
    end
    # @lines = Line.where("status <> 'I'").order(updated_at: :desc)
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, success: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, warning: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  # PUT /contracts/1
  def set_status_inactive
      @contract = Contract.find params[:id]
      @contract.update(:status => "I")
      redirect_to contracts_url, danger: 'Contract was successfully deleted.'
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, danger: 'Contract was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:contract_nbr, :sales_rep, :supplier, :supplier_nbr, 
                    :status, :company, :market_id, :start_date, :end_date, :renew_type,
                    :formula_type, :pricing_cycle, :brand_type, :notes)
    end
    
end
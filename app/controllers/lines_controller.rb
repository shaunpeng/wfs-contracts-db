class LinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]

  # GET /lines
  # GET /lines.json
  # def index
  #   @lines = Line.where("status <> 'I'").order(updated_at: :desc)
  # end

  # GET /lines/1
  # GET /lines/1.json
  def show
  end

  # GET /lines/new
  def new
    @line = Line.new
    @contract = Contract.find(params[:contract])
  end

  # GET /lines/1/edit
  def edit
    @contract = Contract.find(@line.contract_id)
  end

  # POST /lines
  # POST /lines.json
  def create
    @line = Line.new(line_params)
    @contract = Contract.find(@line.contract_id)
      if @line.save
        redirect_to @line, success: 'Line was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /lines/1
  # PATCH/PUT /lines/1.json
  def update
  @contract = Contract.find(@line.contract_id)
    respond_to do |format|
      if @line.update(line_params)
        format.html { redirect_to @line, warning: 'Line was successfully updated.' }
        format.json { render :show, status: :ok, location: @line }
      else
        format.html { render :edit }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @line.destroy
    respond_to do |format|
      format.html { redirect_to lines_url, notice: 'Line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def set_status_inactive
      @line = Line.find params[:id]
      @contract = Contract.find(@line.contract_id)
      @line.update(:status => "I")
      redirect_to @contract, danger: 'Contract line was successfully deleted.'
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @line = Line.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:line).permit(:formula, :volume, :contract_id, :product_id, :prod_category_id,
                                    :city_id, :terminal_id, :cancel_date, :status, :payment_terms,
                                    :volume_variance, :volume_grossnet, :formula_description, 
                                    :formula_samepriorday, :pct_ethanol, :index_1, :adder_1, :pct_index_1,
                                    :index_2, :adder_2, :pct_index_2, :index_3, :adder_3, :pct_index_3,
                                    :adder_inout, :adder_schedule, :pct_rins_discount, :index_rins,
                                    :summer_rvp, :rack_discount, :rack_discount_policy, :rebate_policy,
                                    :penalty_policy, :short_list, :created_by, :updated_by)
    end
    
end

class InventoryScaffoldsController < ApplicationController
  before_action :set_inventory_scaffold, only: %i[ show edit update destroy ]

  # GET /inventory_scaffolds or /inventory_scaffolds.json
  def index
    @inventory_scaffolds = InventoryScaffold.all
  end

  # GET /inventory_scaffolds/1 or /inventory_scaffolds/1.json
  def show
  end

  # GET /inventory_scaffolds/new
  def new
    @inventory_scaffold = InventoryScaffold.new
  end

  # GET /inventory_scaffolds/1/edit
  def edit
  end

  # POST /inventory_scaffolds or /inventory_scaffolds.json
  def create
    @inventory_scaffold = InventoryScaffold.new(inventory_scaffold_params)

    respond_to do |format|
      if @inventory_scaffold.save
        format.html { redirect_to inventory_scaffold_url(@inventory_scaffold), notice: "Inventory scaffold was successfully created." }
        format.json { render :show, status: :created, location: @inventory_scaffold }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_scaffolds/1 or /inventory_scaffolds/1.json
  def update
    respond_to do |format|
      if @inventory_scaffold.update(inventory_scaffold_params)
        format.html { redirect_to inventory_scaffold_url(@inventory_scaffold), notice: "Inventory scaffold was successfully updated." }
        format.json { render :show, status: :ok, location: @inventory_scaffold }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_scaffolds/1 or /inventory_scaffolds/1.json
  def destroy
    @inventory_scaffold.destroy

    respond_to do |format|
      format.html { redirect_to inventory_scaffolds_url, notice: "Inventory scaffold was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_scaffold
      @inventory_scaffold = InventoryScaffold.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_scaffold_params
      params.require(:inventory_scaffold).permit(:upc, :sku, :item_desc, :unit_price, :quantity, :vendor)
    end
end

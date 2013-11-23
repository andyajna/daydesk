class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @supplier = Supplier.find(params[:supplier_id])
    @services = @supplier.services.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @supplier = Supplier.find(params[:supplier_id])
   
  end

  # GET /services/new
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
    @supplier = Supplier.find(params[:supplier_id])
  end

  # POST /services
  # POST /services.json
  def create
    @supplier = Supplier.find(params[:supplier_id])
    @service = @supplier.services.create(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to supplier_path(@supplier), notice: 'Service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to supplier_service_path(@supplier, @service), notice: 'Service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @supplier = Supplier.find(params[:supplier_id])
    @service.destroy
    respond_to do |format|
      format.html { redirect_to supplier_services_url(@supplier) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @supplier = Supplier.find(params[:supplier_id])
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:supplier_id, :desktype, :deskrate, :wifi, :wifilimit, :printing, :printingdesc, :sendfax, :receivefax)
    end
end

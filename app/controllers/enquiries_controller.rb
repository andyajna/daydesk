class EnquiriesController < ApplicationController
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]

  # GET /enquiries
  def index
    @enquiries = Enquiry.all
  end

  # GET /enquiries/1
  def show
  end

  # GET /enquiries/new
  def new
    @supplier = Supplier.find(params[:supplier])
    @enquiry = Enquiry.new
  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  def create
    @enquiry = Enquiry.new(enquiry_params)
    logger.info { @enquiry.supplier_id.to_s }
    respond_to do |format|
      if @enquiry.save
        EnquiryMailer.enquiry_email(@enquiry).deliver
        logger.info {"Sending email back to user"}
        EnquiryMailer.enquiry_received(@enquiry).deliver
        logger.info {"Sending notification email to Supplier"}
        format.html { redirect_to @enquiry, notice: 'Thankyou, your enquiry was successfully sent as follows:' }
        format.json { render action: 'show', status: :created, location: @enquiry }
      else
        format.html { render action: 'new' }
        format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enquiries/1
  def update
    if @enquiry.update(enquiry_params)
      redirect_to @enquiry, notice: 'Enquiry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /enquiries/1
  def destroy
    @enquiry.destroy
    redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:name, :email, :message, :supplier_id)
    end
end

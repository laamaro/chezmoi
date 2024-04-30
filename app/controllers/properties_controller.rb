class PropertiesController < ApplicationController
  before_action :set_property, only: %i[edit update show destroy]

  def index
    @properties = policy_scope(Property)
  end

  def show
    @booking = Booking.new
  end

  def new
    @property = Property.new
    @countries = Country.all

    authorize @property
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user

    authorize @property

    if @property.save
      redirect_to @property
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @countries = Country.all
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_path }
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :description, :address, :start_date, :end_date,
                                     :property_type, :bed_count, :bedroom_count, :smoking, :pet,
                                     :wifi, :minimum_stay, :maximum_guests, :country_id, :price_per_night,
                                     :fee_price, :children, :elevator, :smoke_detector, :parking, :check_in,
                                     :check_out, photos: [])
  end

  def set_property
    @property = Property.find(params[:id])

    authorize @property
  end
end

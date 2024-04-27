class BookingsController < ApplicationController
  before_action :set_property, only: %i[index new create]
  before_action :set_booking, only: %i[edit update show destroy]

  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.property = @property
    @booking.user = current_user

    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_path }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, )
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_property
    @property = Property.find(params[:property_id])
  end
end

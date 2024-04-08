class PropertiesController < ApplicationController
  before_action :set_property, only: %i[edit update show destroy]

  def index
    @properties = Property.all
  end

  def show; end

  def new
    @property = Property.new
    @countries = Country.all
  end

  def create
    @property = Property.new(property_params)

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
        format.html { redirect_to @property, notice: "Dados salvos com sucesso!" }
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
                                     :type, :bed_count, :bedroom_count, :smoking, :pet,
                                     :wifi, :minimum_stay, :maximum_guests, :country_id)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
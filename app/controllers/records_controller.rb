class RecordsController < ApplicationController

  def index
    @records = Record.all.order(:updated_at).reverse
  end

  def show
    @record = Record.find(params[:id])
  end

  def create
    @record = Record.new(record_params)
    if @record.save
    flash[:notice] = "Record successfully added!"
      redirect_to record_path(@record)
    else
      flash[:alert] = "Something went wrong, please try again."
      render :admin
    end
  end

  def edit
   @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to record_path(@record)
    else
      flash[:alert] = "Something went wrong, please try again."
      render :edit
    end
  end

  def destroy
    if Record.find(params[:id]).destroy
      flash[:notice] = "Item successfully deleted!"
      redirect_to records_path
    end
  end


  private
    def record_params
      params.require(:record).permit(:artist, :title, :category, :cost, :image, :description)
    end

end

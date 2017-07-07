class RecordsController < ApplicationController

  def index
    @records = Record.all
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


  private
    def record_params
      params.require(:record).permit(:artist, :title, :category, :cost, :image, :description)
    end

end

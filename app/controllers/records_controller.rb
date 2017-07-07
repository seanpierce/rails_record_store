class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end


  private
    def record_params
      params.require(:record).permit(:artist, :title, :category, :cost)
    end

end

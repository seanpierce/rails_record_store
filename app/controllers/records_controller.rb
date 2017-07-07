class RecordsController < ApplicationController

  def index
    @records = Record.all
  end


  private
    def record_params
      params.require(:record).permit(:artist, :title, :category, :cost)
    end

end

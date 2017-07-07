class PagesController < ApplicationController

  before_action :authorize, only: [:admin]

  def home
    @records = Record.all
  end

  def admin
    @record = Record.new
  end

end

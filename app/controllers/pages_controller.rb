class PagesController < ApplicationController

  before_action :authorize_admin, only: [:admin]

  def home
    @records = Record.all
  end

  def admin
    @record = Record.new
  end

end

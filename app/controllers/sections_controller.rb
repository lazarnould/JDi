class SectionsController < ApplicationController
  before_action :find_section, except: :create

  def show
    @section = Section.find(params[:id])
  end

end

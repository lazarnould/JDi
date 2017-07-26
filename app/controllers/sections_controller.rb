class SectionsController < ApplicationController
  before_action :find_section, except: :create

  def create
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def find_section
    @section = Section.find(params[:id])
  end
end

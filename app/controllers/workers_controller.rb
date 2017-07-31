class WorkersController < ApplicationController
  before_action :find_worker

  def edit
  end

  def update
    @worker.update(worker_params)
  end

  def show
  end

  private

  def find_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
    params.require(:worker).permit(:leader, :pricing)
  end

end

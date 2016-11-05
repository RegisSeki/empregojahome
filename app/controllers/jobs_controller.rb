class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.create(jobs_params)
    redirect_to job_url(@job)
  end
  
  private

  def jobs_params
    params.require(:job)
          .permit(:title, :location, :category, :company, :description)
  end
  
end
class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(jobs_params)
    if @job.save
      redirect_to job_url(@job)
    else
      flash[:error] = "Não foi possível criar a vaga"
      render :new
    end
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job = Job.find(params[:id])
    @job.update(jobs_params)
    if @job.save
      redirect_to job_url(@job)
    else
      flash[:error] = "Não foi possível atualizar a vaga"
      render :edit
    end
  end
  
  private

  def jobs_params
    params.require(:job)
          .permit(:title, :location, :category_id, :company_id, :description, :featured)
  end
  
end
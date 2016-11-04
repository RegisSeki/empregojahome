class JobsController < ApplicationController
  def show
    @jobs = Job.find(params[:id])
  end
end
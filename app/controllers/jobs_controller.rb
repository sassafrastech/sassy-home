class JobsController < ApplicationController
  def index
  end

  def project_planner
    redirect_to jobs_path(anchor: "job-openings")
  end
end

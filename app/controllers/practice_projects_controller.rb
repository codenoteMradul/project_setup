class PracticeProjectsController < ApplicationController
  before_action :set_practice_project, only: %i[ show edit update destroy ]

  # GET /practice_projects or /practice_projects.json
  def index
    @practice_projects = PracticeProject.all
  end

  # GET /practice_projects/1 or /practice_projects/1.json
  def show
  end

  # GET /practice_projects/new
  def new
    @practice_project = PracticeProject.new
  end

  # GET /practice_projects/1/edit
  def edit
  end

  # POST /practice_projects or /practice_projects.json
  def create
    @practice_project = PracticeProject.new(practice_project_params)

    respond_to do |format|
      if @practice_project.save
        format.html { redirect_to practice_project_url(@practice_project), notice: "Practice project was successfully created." }
        format.json { render :show, status: :created, location: @practice_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @practice_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practice_projects/1 or /practice_projects/1.json
  def update
    respond_to do |format|
      if @practice_project.update(practice_project_params)
        format.html { redirect_to practice_project_url(@practice_project), notice: "Practice project was successfully updated." }
        format.json { render :show, status: :ok, location: @practice_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @practice_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_projects/1 or /practice_projects/1.json
  def destroy
    @practice_project.destroy!

    respond_to do |format|
      format.html { redirect_to practice_projects_url, notice: "Practice project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_project
      @practice_project = PracticeProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practice_project_params
      params.fetch(:practice_project, {})
    end
end

class WorkExperiencesController < ApplicationController
  before_action :set_work_experience, only: %i[ show edit update destroy ]

  # GET /work_experiences or /work_experiences.json
  def index
    @work_experiences = WorkExperience.all
  end

  # GET /work_experiences/1 or /work_experiences/1.json
  def show
  end

  # GET /work_experiences/new
  def new
    @work_experience = WorkExperience.new
  end

  # GET /work_experiences/1/edit
  def edit
  end

  # POST /work_experiences or /work_experiences.json
  def create
    @work_experience = WorkExperience.new(work_experience_params)
    @work_experience.user_id = current_user.id
    
    respond_to do |format|
      if @work_experience.save
        format.html { redirect_to @work_experience, notice: "Work experience was successfully created." }
        format.json { render :show, status: :created, location: @work_experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_experiences/1 or /work_experiences/1.json
  def update
    respond_to do |format|
      if @work_experience.update(work_experience_params)
        format.html { redirect_to @work_experience, notice: "Work experience was successfully updated." }
        format.json { render :show, status: :ok, location: @work_experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_experiences/1 or /work_experiences/1.json
  def destroy
    @work_experience.destroy
    respond_to do |format|
      format.html { redirect_to work_experiences_url, notice: "Work experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_experience
      @work_experience = WorkExperience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_experience_params
      params.require(:work_experience).permit(:organization, :deignation, :country, :location, :start_date, :end_date, :salary_monthly, :salary_yearly, :salary_currency, :benefits, :current, :user_id)
    end
end

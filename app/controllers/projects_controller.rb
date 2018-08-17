class ProjectsController < ApplicationController
  before_action :logged_in_user
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
	@search = OpenStruct.new params[:search]
	@projects = build_search(@projects, @search)
	@projects = @projects.order(start_time: @search.start_time ) if @search.start_time.present?
	@projects = @projects.order(plan_complated_at: @search.plan_complated_at ) if @search.plan_complated_at.present?
	@projects = @projects.order(actual_complated_at: @search.actual_complated_at ) if @search.actual_complated_at.present?
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

     def build_search(records, search)
       if search.query.present?
	     cols = [
	     '`projects`.`code` LIKE :query',
	     '`projects`.`name` LIKE :query',
		 '`projects`.`service` LIKE :query',
		 '`projects`.`status` LIKE :query',
		 '`projects`.`url` LIKE :query'
	     ]
	     records = records.where(cols.join(" OR "), {query: "%#{search.query}%"})
	   end
	   records
	 end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:code, :name, :service, :start_time, :plan_complated_at, :actual_complated_at, :status, :url)
    end

    def logged_in_user
	  unless logged_in?
	    flash[:danger] = "Please log in."
	    redirect_to login_url
	  end
	end
end

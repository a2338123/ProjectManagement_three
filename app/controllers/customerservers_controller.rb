class CustomerserversController < ApplicationController
  before_action :logged_in_user
  before_action :set_customerserver, only: [:show, :edit, :update, :destroy]

  # GET /customerservers
  # GET /customerservers.json
  def index
    
   @customerservers = Customerserver.all
   @search = OpenStruct.new params[:search]
   @customerservers = build_search(@customerservers, @search)
   @customerservers = @customerservers.order(deadline: @search.deadline) if @search.deadline.present?
  end

  # GET /customerservers/1
  # GET /customerservers/1.json
  def show
  end

  # GET /customerservers/new
  def new
    @customerserver = Customerserver.new
  end

  # GET /customerservers/1/edit
  def edit
  end

  # POST /customerservers
  # POST /customerservers.json
  def create
    @customerserver = Customerserver.new(customerserver_params)

    respond_to do |format|
      if @customerserver.save
        format.html { redirect_to customerservers_path, notice: 'Customerserver was successfully created.' }
        format.json { render :show, status: :created, location: @customerserver }
      else
        format.html { render :new }
        format.json { render json: @customerserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerservers/1
  # PATCH/PUT /customerservers/1.json
  def update
    respond_to do |format|
      if @customerserver.update(customerserver_params)
        format.html { redirect_to @customerserver, notice: 'Customerserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerserver }
      else
        format.html { render :edit }
        format.json { render json: @customerserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerservers/1
  # DELETE /customerservers/1.json
  def destroy
    @customerserver.destroy
    respond_to do |format|
      format.html { redirect_to customerservers_url, notice: 'Customerserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerserver
      @customerserver = Customerserver.find(params[:id])
    end
    
    def build_search(records, search)
	  if search.query.present?
	    cols = [
	    '`customerservers`.`code` LIKE :query',
	    '`customerservers`.`customerservice` LIKE :query',
		'`customerservers`.`customer` LIKE :query',
		'`customerservers`.`our_server` LIKE :query'
	    ]
	    records = records.where(cols.join(" OR "), {query: "%#{search.query}%"})
	  end
	  records
	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerserver_params
      params.require(:customerserver).permit(:code, :customerservice, :customer, :deadline, :our_server)
    end

    def logged_in_user
	  unless logged_in?
	    redirect_to login_url
	  end
	end
end

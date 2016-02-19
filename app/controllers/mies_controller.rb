class MiesController < ApplicationController
  before_action :set_my, only: [:show, :edit, :update, :destroy]

  # GET /mies
  # GET /mies.json
  def index
   p "#{params}--------------params"
    @mies = My.all
    @mies.each do |m|
    puts m
    end
  end

  # GET /mies/1
  # GET /mies/1.json
  def show
   if !@my
     render_404
   end
  end

  def action
  render :nothing => true, :status => 200, :content_type => 'text/html'
  end


  # GET /mies/new
  def new
    @my = My.new
  end

  # GET /mies/1/edit
  def edit
  end

  # POST /mies
  # POST /mies.json
  def create
    @my = My.new(my_params)
    respond_to do |format|
      if @my.save
        format.html { redirect_to @my, notice: 'My was successfully created.' }
        format.json { render :show, status: :created, location: @my }
      else
        format.html { render :new }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mies/1
  # PATCH/PUT /mies/1.json
  def update
    respond_to do |format|
      if @my.update(my_params)
        format.html { redirect_to @my, notice: 'My was successfully updated.' }
        format.json { render :show, status: :ok, location: @my }
      else
        format.html { render :edit }
        format.json { render json: @my.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mies/1
  # DELETE /mies/1.json
  def destroy
    @my.destroy
    respond_to do |format|
      format.html { redirect_to mies_url, notice: 'My was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my
      @my = My.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_params
      params.require(:my).permit(:name, :emp_id, :address,:dept_id)
    end
end

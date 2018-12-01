class TotoListsController < ApplicationController
  before_action :set_toto_list, only: [:show, :edit, :update, :destroy]

  # GET /toto_lists
  # GET /toto_lists.json
  def index
    @toto_lists = TotoList.all
  end

  # GET /toto_lists/1
  # GET /toto_lists/1.json
  def show
  end

  # GET /toto_lists/new
  def new
    @toto_list = TotoList.new
  end

  # GET /toto_lists/1/edit
  def edit
  end

  # POST /toto_lists
  # POST /toto_lists.json
  def create
    @toto_list = TotoList.new(toto_list_params)

    respond_to do |format|
      if @toto_list.save
        format.html { redirect_to @toto_list, notice: 'Toto list was successfully created.' }
        format.json { render :show, status: :created, location: @toto_list }
      else
        format.html { render :new }
        format.json { render json: @toto_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toto_lists/1
  # PATCH/PUT /toto_lists/1.json
  def update
    respond_to do |format|
      if @toto_list.update(toto_list_params)
        format.html { redirect_to @toto_list, notice: 'Toto list was successfully updated.' }
        format.json { render :show, status: :ok, location: @toto_list }
      else
        format.html { render :edit }
        format.json { render json: @toto_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toto_lists/1
  # DELETE /toto_lists/1.json
  def destroy
    @toto_list.destroy
    respond_to do |format|
      format.html { redirect_to toto_lists_url, notice: 'Toto list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toto_list
      @toto_list = TotoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toto_list_params
      params.require(:toto_list).permit(:title, :description)
    end
end

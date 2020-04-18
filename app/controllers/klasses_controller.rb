class KlassesController < ApplicationController
  before_action :set_klass, only: [:show, :edit, :update, :destroy]

  # GET /klasses
  # GET /klasses.json
  def index
    @klasses = Klass.all
  end

  # GET /klasses/1
  # GET /klasses/1.json
  def show
  end

  # GET /klasses/new
  def new
    @klass = Klass.new
  end

  # GET /klasses/1/edit
  def edit
  end

  # POST /klasses
  # POST /klasses.json
  def create
    @klass = Klass.new(klass_params)

    respond_to do |format|
      if @klass.save
        format.html { redirect_to @klass, notice: 'Klass was successfully created.' }
        format.json { render :show, status: :created, location: @klass }
      else
        format.html { render :new }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klasses/1
  # PATCH/PUT /klasses/1.json
  def update
    respond_to do |format|
      if @klass.update(klass_params)
        format.html { redirect_to @klass, notice: 'Klass was successfully updated.' }
        format.json { render :show, status: :ok, location: @klass }
      else
        format.html { render :edit }
        format.json { render json: @klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klasses/1
  # DELETE /klasses/1.json
  def destroy
    @klass.destroy
    respond_to do |format|
      format.html { redirect_to klasses_url, notice: 'Klass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klass
      @klass = Klass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def klass_params
      params.fetch(:klass, {})
    end
end

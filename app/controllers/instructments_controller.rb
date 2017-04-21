class InstructmentsController < ApplicationController
  before_action :set_instructment, only: [:show, :edit, :update, :destroy]

  # GET /instructments
  def index
    @instructments = Instructment.all
  end

  # GET /instructments/1
  def show
  end

  # GET /instructments/new
  def new
    @instructment = Instructment.new
  end

  # GET /instructments/1/edit
  def edit
  end

  # POST /instructments
  def create
    @instructment = Instructment.new(instructment_params)

    if @instructment.save
      redirect_to @instructment, notice: 'Instructment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /instructments/1
  def update
    if @instructment.update(instructment_params)
      redirect_to @instructment, notice: 'Instructment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /instructments/1
  def destroy
    @instructment.destroy
    redirect_to instructments_url, notice: 'Instructment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instructment
      @instructment = Instructment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instructment_params
      params.fetch(:instructment, {})
    end
end

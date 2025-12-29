class MealEntriesController < ApplicationController
  before_action :set_meal_entry, only: %i[ show edit update destroy ]

  # GET /meal_entries or /meal_entries.json
  def index
    @meal_entries = MealEntry.all
  end

  # GET /meal_entries/1 or /meal_entries/1.json
  def show
  end

  # GET /meal_entries/new
  def new
    @meal_entry = MealEntry.new
  end

  # GET /meal_entries/1/edit
  def edit
  end

  # POST /meal_entries or /meal_entries.json
  def create
    @meal_entry = MealEntry.new(meal_entry_params)

    respond_to do |format|
      if @meal_entry.save
        format.html { redirect_to @meal_entry, notice: "Meal entry was successfully created." }
        format.json { render :show, status: :created, location: @meal_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meal_entries/1 or /meal_entries/1.json
  def update
    respond_to do |format|
      if @meal_entry.update(meal_entry_params)
        format.html { redirect_to @meal_entry, notice: "Meal entry was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @meal_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_entries/1 or /meal_entries/1.json
  def destroy
    @meal_entry.destroy!

    respond_to do |format|
      format.html { redirect_to meal_entries_path, notice: "Meal entry was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_entry
      @meal_entry = MealEntry.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def meal_entry_params
      params.expect(meal_entry: [ :mean_type, :calories, :proteins, :carbohydrates, :fats ])
    end
end

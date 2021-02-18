class EntryItemsController < ApplicationController
  before_action :set_entry_item, only: %i[ show edit update destroy ]

  # GET /entry_items or /entry_items.json
  def index
    @entry_items = EntryItem.all
  end

  # GET /entry_items/1 or /entry_items/1.json
  def show
  end

  # GET /entry_items/new
  def new
    @entry_item = EntryItem.new
  end

  # GET /entry_items/1/edit
  def edit
  end

  # POST /entry_items or /entry_items.json
  def create
    @entry_item = EntryItem.new(entry_item_params)

    respond_to do |format|
      if @entry_item.save
        format.html { redirect_to @entry_item, notice: "Entry item was successfully created." }
        format.json { render :show, status: :created, location: @entry_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_items/1 or /entry_items/1.json
  def update
    respond_to do |format|
      if @entry_item.update(entry_item_params)
        format.html { redirect_to @entry_item, notice: "Entry item was successfully updated." }
        format.json { render :show, status: :ok, location: @entry_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_items/1 or /entry_items/1.json
  def destroy
    @entry_item.destroy
    respond_to do |format|
      format.html { redirect_to entry_items_url, notice: "Entry item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_item
      @entry_item = EntryItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_item_params
      params.fetch(:entry_item, {})
    end
end

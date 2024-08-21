=begin
  SuperCategories
  Details for controller

  initCoders Base Project
  Created by initCoders
=end

#Add any require file

# SuperCategories
class SuperCategoriesController < ApplicationController
  layout "back"
  # set action or callback function for super_category
  before_action :set_super_category, only: [:show, :edit, :update, :destroy]

  # GET /super_categories
  # GET /super_categories.json
  # It will provde all super_category records with pagination 
  def index
    @super_categories = SuperCategory.all.paginate(:page => params[:page], :per_page => 25)
  end

  # GET /super_categories/1
  # GET /super_categories/1.json
  # It will provde super_category  information
  def show
  end

  # GET /super_categories/new
  # It will show form for create new super_category
  def new
    @super_category = SuperCategory.new
  end

  # GET /super_categories/1/edit
  # It will show form for edit super_category
  def edit
  end

  # POST /super_categories
  # POST /super_categories.json
  # It will create new super_category
  def create
    @super_category = SuperCategory.new(super_category_params)
    respond_to do |format|
      if @super_category.save
        format.html { redirect_to super_categories_path, notice: 'Super category was successfully created.' }
        format.json { render :show, status: :created, location: @super_category }
      else
        format.html { render :new }
        format.json { render json: @super_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_categories/1
  # PATCH/PUT /super_categories/1.json
  # It will update super_category
  def update
    respond_to do |format|
      if @super_category.update(super_category_params)
        format.html { redirect_to super_categories_path, notice: 'Super category was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_category }
      else
        format.html { render :edit }
        format.json { render json: @super_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_categories/1
  # DELETE /super_categories/1.json
  # It will delete super_category
  def destroy
    @super_category.destroy!
    respond_to do |format|
      format.html { redirect_to super_categories_path, notice: 'Super category was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_category
      @super_category = SuperCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def super_category_params
      params.require(:super_category).permit(:user_id, :name_en, :name_hi, :details_en, :details_hi, :slug, :status, :order)
    end
end

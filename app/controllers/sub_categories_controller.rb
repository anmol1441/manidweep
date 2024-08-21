=begin
  SubCategories
  Details for controller

  initCoders Base Project
  Created by initCoders
=end

#Add any require file

# SubCategories
class SubCategoriesController < ApplicationController
  layout "back"
  before_action :set_super_category
  before_action :set_sub_category, only: %i[show edit update destroy]

  # GET /super_categories/:super_category_id/sub_categories
  def index
    @sub_categories = @super_category.sub_category
  end

  # GET /super_categories/:super_category_id/sub_categories/:id
  def show
  end

  # GET /super_categories/:super_category_id/sub_categories/new
  def new
    @sub_category = @super_category.sub_category.build
  end

  # GET /super_categories/:super_category_id/sub_categories/:id/edit
  def edit
  end

  # POST /super_categories/:super_category_id/sub_categories
  def create
    @sub_category = @super_category.sub_category.build(sub_category_params)

    if @sub_category.save
      redirect_to super_category_sub_category_path(@super_category, @sub_category), notice: 'SubCategory was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /super_categories/:super_category_id/sub_categories/:id
  def update
    if @sub_category.update(sub_category_params)
      redirect_to super_category_sub_category_path(@super_category, @sub_category), notice: 'SubCategory was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /super_categories/:super_category_id/sub_categories/:id
  def destroy
    @sub_category.destroy
    redirect_to super_category_sub_categories_path(@super_category), notice: 'SubCategory was successfully destroyed.'
  end

  private

  def set_super_category
    @super_category = SuperCategory.find(params[:super_category_id])
  end

  def set_sub_category
    @sub_category = @super_category.sub_categories.find(params[:id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:user_id, :super_category_id, :name_en, :name_hi, :details_en, :details_hi, :slug, :page_content_en, :page_content_hi, :order)
  end
  
end

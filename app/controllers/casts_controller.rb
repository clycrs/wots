class CastsController < ApplicationController
  def index
    if params[:sub_category_id].present?
      @casts = Cast.joins(:cast_sub_categories)
                   .where(cast_sub_categories: { sub_category_id: params[:sub_category_id] })
    else
      @casts = Cast.all
    end
  end
end

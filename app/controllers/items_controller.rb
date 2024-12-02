class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new # For the new item form
  end

  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(dom_id(@item), partial: "show", locals: { item: @item })
      end
      format.html { render :show } # Fallback for non-Turbo requests
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render turbo_stream: [
        turbo_stream.append(:items, partial: "item", locals: { item: @item }),
        turbo_stream.replace(:new_item, partial: "form", locals: { item: Item.new })
      ]
    else
      render turbo_stream: turbo_stream.replace(:new_item, partial: "form", locals: { item: @item }), status: :unprocessable_entity
    end
  end


  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      render partial: "item", locals: { item: @item }
    else
      render partial: "form", locals: { item: @item }, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    # Turbo will automatically remove the item from the DOM via its data-turbo attributes
    head :ok
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end

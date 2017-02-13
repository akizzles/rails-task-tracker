class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id]) # finding the parent
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
    # raise @item.inspect
  end

  # PATCH - /lists/:list_id/items/:id
  def update
    # raise params.inspect # the data the form submitted
    # I can use that data to update the item described in the URL
    @item = Item.find(params[:id])
    @item.update(item_params)
    # @item.status = params[:item][:status]
    # @item.save

    redirect_to list_path(@item.list)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to list_path(@item.list)
  end

  private
    def item_params
      params.require(:item).permit(:description, :status)
    end
end

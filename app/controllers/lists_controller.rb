class ListsController < ApplicationController
  # before_action :authentication_required

  def index
    # if you're not logged in, you can't see this, in fact, go back to the log in page
    @list = List.new
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB
    # implicit rendering lists/index (controller/action)
  end

  def show
    # load lists
    # params will have all the data passed by a user
    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
    #raise params.inspect
    @list = List.new(list_params)
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private

    def list_params # strong parameters
      params.require(:list).permit(:name)
    end

end

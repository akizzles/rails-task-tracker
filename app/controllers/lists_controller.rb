class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB
    # implicit rendering lists/index (controller/action)
  end

  def show
    # load lists
    # params will have all the data passed by a user
    @list = List.find(params[:id])
  end

  def create
    #raise params.inspect
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_url(@list)
  end

  private

    def list_params # strong parameters
      params.require(:list).permit(:name)
    end

end

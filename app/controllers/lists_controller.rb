class ListsController < ApplicationController

  def index
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB
    # implicit rendering lists/index (controller/action)
  end

  def show
    # load lists
    # params will have all the data passed by a user
    @list = List.find(params[:id])
  end

end

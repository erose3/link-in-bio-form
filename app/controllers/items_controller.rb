class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def form
    render({ :template => "item_templates/form" })
  end

  def add

    x = Item.new
    x.link_url = params.fetch("link_url_param")
    x.link_description = params.fetch("link_description_param")
    x.thumbnail_url = params.fetch("thumbnail_url_param")
    x.save

    redirect_to("/")

  end

end

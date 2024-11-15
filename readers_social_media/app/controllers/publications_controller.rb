class PublicationsController < ApplicationController
  before_action :authenticate_user!  #this line is to authenticate first
  def index
    @publications = Publication.all
  end

  def show
    @publication = Publicaton.find(params[:id])
  end

  def def new
    @publication = Publication.new
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :description, :category)
  end
  
end

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

  def create
    @publication = Publication.new(publication_params)

    if @publication.save
      format.html { redirect_to @publication, notice: "Publication was successfully created." }
      format.json { render :show, status: :created, location: @publication }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  private

  def publication_params
    params.require(:publication).permit(:title, :description, :category, :user_id)
  end
  
end

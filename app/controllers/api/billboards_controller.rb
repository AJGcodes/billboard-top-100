class Api::BillboardsController < ApplicationController
  def index
    render json: Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
    render json: @billboard
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @list.save 
      render json: @billboard 
    else
      render json: { errors: @billboard.errors}, status: :unprocessable_entity
    end
  end

  def update
    @billboard = Billboard.find(params[:id])
    if @Billboard.update(billboard_params)
      render json: @billboard
    else
      render json: { errors: @billboard.errors}, status: :unprocessable_entity
    end

  end

  def destroy
    @billboard = Billboard.find(params [:id])
    @billboard.destroy
    render json: { message: 'Billboard deleted'}
  end

  private
    def list_params
      params.require(:billboard).permit(:title, :top_artist_list)
    end
end

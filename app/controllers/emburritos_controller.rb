class EmburritosController < ApplicationController
  before_action :set_emburrito, only: [:show, :edit, :update, :destroy]

  ##############################
  # GET methods
  ##############################

  def index
    render json: Emburrito.all
  end

  def show # set_emburrito takes care of everything
  end

  ##############################
  # POST methods
  ##############################
  def create
    @emburrito = Emburrito.new(emburrito_params)

    if @emburrito.save
      render json: @emburrito, status: :created
    else
      render json: @emburrito.errors, status: :unprocessable_entity
    end
  end

  def update
    if @emburrito.update(emburrito_params)
      render :nothing => true, status: :ok
    else
      render json: @emburrito.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @emburrito.destroy
    head :no_content
  end

  private
    def set_emburrito
      @emburrito = Emburrito.find(params[:id])
    end

    def emburrito_params
      # params.require(:emburrito).permit(:name, :introduction)
      JSON.parse(request.body.read)["data"]["attributes"] # Some quick and dirty to parse our JSON API standard
    end
end

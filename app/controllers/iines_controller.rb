class IinesController < ApplicationController
  before_action :set_iine, only: [:destroy]

  def index
  end

  def create
    iine = Iine.new(iine_params)
    iine.giver = current_user
    iine.taker = iine.idea.user
    iine.save
    redirect_to :back
  end

  def destroy
    @iine.destroy
  end


  def set_iine
    @iine = Iine.find(parmas[:id])
  end

  def iine_params
    params.require(:iine).permit(:idea_id)
  end
end

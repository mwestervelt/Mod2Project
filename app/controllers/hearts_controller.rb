class HeartsController < ApplicationController

  def new
    @heart = Heart.new
  end

  def create
    @heart = Heart.create(heart_params)
    redirect_to '/resolutions/'

  end

private
    def heart_params
      params.require(:heart).permit(:user_id, :resolution_id)
    end
end

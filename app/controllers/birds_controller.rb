class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
 
  def index
    birds = Bird.all
    if bird
      render json: birds, only: [:id, :name, :species]
    else
      render json: { message: 'Bird not found' }
    end
  end
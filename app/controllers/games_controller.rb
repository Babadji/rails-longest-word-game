require 'json'

class GamesController < ApplicationController

  def new
    @letters = ("a".."z").to_a.sample(7)
  end

  def score
    @question = params["question"].downcase
  # The word can’t be built out of the original grid
  raise
    if @letters.include?(@question.split(""))
      return "Sorry but #{@question} can't be built out of #{@letters}"
    end
  # The word is valid according to the grid, but is not a valid English word
  # The word is valid according to the grid and is an English word
  end
end

# {"found":true,"word":"chocolate","length":9}

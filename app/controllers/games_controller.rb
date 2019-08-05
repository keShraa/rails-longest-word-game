class GamesController < ApplicationController
  def new
    # Generate random grid of letters
    @letters = (0..9).map { rand(65..90).chr }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @word.upcase.split('').each do |letter|
      if @letters.include? letter
        @letters.split.delete_at(@letters.index(letter))
      else
        return @result = false
      end
    end
    @result = true
  end
end

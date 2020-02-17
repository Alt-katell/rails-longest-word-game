class GamesController < ApplicationController
  def new
    @letters = 10.times.map { ("A".."Z").to_a.sample }
  end

  def score

  end

  def in_the_grid?
    word_array = params[:word].chars
    word_array.each do |letter|
      if @letters.include?(letter)
        @letters.delete_at(@letters.index(letter))
      else
        return false
      end
    end
    return true
  end


end

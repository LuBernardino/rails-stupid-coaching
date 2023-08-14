class QuestionsController < ApplicationController
  def home
  end

  def ask
    @question = params[:question]
  end

  def answer
    if ask == 'I am going to work'
      @answer = 'Great!'
    elsif ask.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = 'Great!'
    if @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question != 'I am going to work'
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer
    end
  end
end

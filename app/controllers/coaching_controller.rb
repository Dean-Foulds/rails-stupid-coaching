class CoachingController < ApplicationController
  def answer
    @question = params[:querie]
  if @question == "I am going to work right now!".upcase
    @answer = ""
  else
    @answer = "I can feel your motivation! #{coach_answer(@question)}"
  end
end

def ask
  end



private

def coach_answer(question)
  if @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
  elsif @question == "I am going to work right now!"
      @answer = ""
  else
      @answer = "I don't care, get dressed and go to work!"
  end
end
end

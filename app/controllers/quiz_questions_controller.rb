class QuizQuestionsController < ApplicationController
  def import
    QuizQuestion.import(params[:file])
    redirect_to quiz_questions_path, notice: "QuizQuestion imported."
  end
end

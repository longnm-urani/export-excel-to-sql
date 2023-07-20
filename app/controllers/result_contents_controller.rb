class ResultContentsController < ApplicationController
  def import
    ResultContent.import(params[:file])
    redirect_to result_contents_path, notice: "ResultContent imported."
  end
end

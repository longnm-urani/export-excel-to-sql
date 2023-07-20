class PersonalityPatternsController < ApplicationController
  def import
    PersonalityPattern.import(params[:file])
    redirect_to personality_patterns_path, notice: "PersonalityPattern imported."
  end
end

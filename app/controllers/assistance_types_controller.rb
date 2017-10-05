class AssistanceTypesController < ApplicationController
  
  def index
    @assistance_types = AssistanceType.all
  end

end

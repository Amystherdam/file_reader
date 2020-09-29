class FileController < ApplicationController
  def index
    @records = Record.all
  end

  def import
    Record.import_file(params['file'])
    
    errors = []
    if errors.blank?
      flash[:success] = "Imported with successful"
    else
      flash[:error] = errors.join(", ")
    end
    redirect_to "/file"
  end
end

class FileRecordsController < ApplicationController
  def index
    @file_records = FileRecord.all
  end

  def new
    @file_record = FileRecord.new
  end

  def create
    @file_record = FileRecord.new(:file_record_params)
    @file_record.save
    #redirect_to file_records_path, notice "File has been uploaded."

  end

  def destroy
    @file_record = FileRecord.find(params[:id])
    @file_record.destroy
    #redirect_to file_records_path, notice "File has been deleted."
  end

private
  def file_record_params
    params.require(:file_record).permit(:description, :attachment)
  end  

end

require 'csv'

class RegisterUpload < ApplicationRecord
  belongs_to :register
  has_many :register_upload_entries
  mount_uploader :external_file, ExternalFileUploader

  def process_file
    CSV.foreach(self.external_file.file.file, :headers => true) do |row|
      data = row.to_hash
      begin
        re = RegisterUploadEntry.new
        re.register_upload_id = self.id
        re.description = data['Description']
        re.category_id = 1
        re.entry_date = Chronic.parse data['Posting Date']
        if data['Details'] == "DEBIT"
          re.withdrawal = data['Amount']
        end
        if data['Details'] == "CREDIT"
          re.deposit = data['Amount']
        end
        if !re.save
          puts re.errors.messages
        end
      rescue Exception => e
        puts e.to_s
      end
    end
  end

end

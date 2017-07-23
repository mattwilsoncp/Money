class Register < ApplicationRecord
  mount_uploader :external_file, ExternalFileUploader
end

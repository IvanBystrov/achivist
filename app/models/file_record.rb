class FileRecord < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

end

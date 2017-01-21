class Cfile < ApplicationRecord
  belongs_to :contract
  mount_uploader :document, DocumentUploader
end

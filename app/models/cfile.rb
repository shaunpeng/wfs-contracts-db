class Cfile < ApplicationRecord
  belongs_to :contract
  validates :document, presence: true
  mount_uploader :document, DocumentUploader
end

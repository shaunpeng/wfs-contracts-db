class Cfile < ApplicationRecord
  belongs_to :contract, required: false , :class_name => "contract", :foreign_key => "contract_id"
  validates :document, presence: true
  validates :contract_id, presence: true
  mount_uploader :document, DocumentUploader
end

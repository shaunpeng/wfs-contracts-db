json.extract! cfile, :id, :name, :document, :contract_id, :created_at, :updated_at
json.url cfile_url(cfile, format: :json)
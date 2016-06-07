json.array!(@loans) do |loan|
  json.extract! loan, :id, :title, :url, :reference, :version, :extension, :file, :purpose, :state, :domain
  json.url loan_url(loan, format: :json)
end

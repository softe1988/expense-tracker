json.array!(@expenses) do |expense|
  json.extract! expense, :id, :activity, :vendor_id, :client_id, :cost, :approved
  json.url expense_url(expense, format: :json)
end

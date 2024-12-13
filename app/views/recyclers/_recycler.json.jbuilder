json.extract! recycler, :id, :name, :phone, :address, :email, :created_at, :updated_at
json.url recycler_url(recycler, format: :json)

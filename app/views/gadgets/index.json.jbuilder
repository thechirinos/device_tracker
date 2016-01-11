json.array!(@gadgets) do |gadget|
  json.extract! gadget, :id, :make, :model, :available, :checked_out, :checked_in, :user_id, :location, :orientation, :os_version
  json.url gadget_url(gadget, format: :json)
end

get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/update' do
  order_array = params[:order]
  order_array.each_with_index do |item_id, index|
    list_item = Item.find(item_id)
    list_item.update_attributes(position: index)
  end
end

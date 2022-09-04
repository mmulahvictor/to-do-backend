class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
      get "/lists" do
        lists = List.all 
        lists.to_json 
    end

    post "/lists" do 
        list = List.create(
          title: params[:title],
          status: params[:status] 
        )
        list.to_json
    end

    patch "/lists/:id" do
        list = List.find(params[:id])
        list.update(title: params[:title])
        list.to_json
    end

    delete "/list/:id" do
          list = List.find(params[:id])
          list.destroy
          list.to_json
     end
end

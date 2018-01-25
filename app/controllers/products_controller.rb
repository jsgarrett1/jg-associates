class ProductsController < ApplicationController
  def index
  client = Restforce.new(username: ENV["SALESFORCE_USERNAME"],
                       password: ENV["SALESFORCE_PASSWORD"],
                       security_token: ENV["SALESFORCE_SECURITY_TOKEN"],
                       client_id: ENV["SALESFORCE_CLIENT_ID"],
                       client_secret: ENV["SALESFORCE_CLIENT_SECRET"],
                       api_version: ENV["SALESFORCE_API_VERSION"])
  p client                      
  @products = client.query_all("select ID, Name from Product2")                     
                       
  end
end

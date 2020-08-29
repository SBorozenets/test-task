class HardWorker
    include Sidekiq::Worker
  
    def perform
        client = ShopifyAPI::GraphQL.client

        query = client.parse <<-'GRAPHQL'
        {
            shop {
                name
            }
        }
        GRAPHQL

        result = client.query(query)
        puts result.data.shop.name
    end
  end
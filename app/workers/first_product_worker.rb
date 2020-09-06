class FirstProductWorker
  include Sidekiq::Worker

  def perform
    client = ShopifyAPI::GraphQL.client

    query = client.parse <<-'GRAPHQL'
        {
          products(first: 1) {
            edges {
              node {
                title
              }
            }
          }
        }
    GRAPHQL

    result = client.query(query)
    puts result.data.products.edges[0].node.title

    Product.create(title: result.data.products.edges[0].node.title)
    puts Product.count
  end
end
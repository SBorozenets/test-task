shop_url = "https://#{ENV['API_KEY']}:#{ENV['PASSWORD']}@#{ENV['SHOP_NAME']}.myshopify.com"
        
ShopifyAPI::Base.site = shop_url
ShopifyAPI::Base.api_version = '2020-07' # find the latest stable api_version here: https://shopify.dev/concepts/about-apis/versioning
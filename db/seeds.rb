require "open-uri"

product_data = [
  { name: "Handmade Mug", price: 18.99, image_url: "https://picsum.photos/seed/mug/400/300" },
  { name: "Vintage Necklace", price: 42.50, image_url: "https://picsum.photos/seed/necklace/400/300" },
  { name: "Eco Tote Bag", price: 25.00, image_url: "https://picsum.photos/seed/tote/400/300" }
]

product_data.each do |data|
  product = Product.create!(name: data[:name], price: data[:price])
  image_file = URI.open(data[:image_url])
  product.image.attach(io: image_file, filename: "#{data[:name].parameterize}.jpg", content_type: "image/jpeg")
end


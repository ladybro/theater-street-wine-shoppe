require 'product_support.rb'

def items

  @products = Products.new

  @products.add({
    name: 'thing 1',
    category: Wine.new,
    price: 19.99,
    description: "I love it",
    image: "images/IMG_0038.JPG"
  })

  @products.add({
    name: "thing 2",
    category: Wine.new,
    price: 199.99,
    description: "I love it as well",
    image: "images/IMG_0077.JPG"
  })

  @products.add({
    name: "thing 3",
    category: Cheese.new,
    price: 99.99,
    description: "I have it",
    image: "images/IMG_0077.JPG"
  })

  @products
end

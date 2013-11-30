require 'set'

class Category
  attr_accessor :name

  def hash
    name.hash
  end

  def eql? obj
    self.hash == obj.hash
  end

  def == obj
    self.eql? obj
  end
end

class Wine < Category
  def name
    'Wine'
  end
end

class Cheese < Category
  def name
    'Cheese'
  end
end

class Accessory < Category
  def name
    'Accessories'
  end
end

class Item
  attr_accessor :name, :category, :price, :description, :image

  def initialize hash
    return self unless hash
    @name = hash[:name]
    @category = hash[:category]
    @price = hash[:price]
    @description = hash[:description]
    @image = hash[:image]
  end

  def as_hash
    {
      name: @name,
      category: @category.name,
      price: @price,
      description: @description,
      image: @image
    }
  end

end


class Products

  attr_reader :items, :categories

  def initialize
    @items = []
    @categories = Set.new
  end

  def add item
    @items.push Item.new(item)
    @categories.add item[:category]
  end

  def count
    @items.count
  end

end


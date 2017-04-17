class Customer
    attr_reader :name
    attr_accessor :review, :restaurant

    ALL = []

    def initialize(name)
        @name = name
        @reviews = []
        @restaurant
        ALL << self
    end

    def self.all
        ALL
    end

    def add_review(restaurant, content)
        newOne = Review.new(restaurant, content)
        newOne.customer = self
        self.restaurant = restaurant
        restaurant.customers << self
        self.reviews << newOne
        restaurant.reviews << self
        newOne
    end

    def reviews
        @reviews
    end

    def self.find_by_name(name)
        ALL.select do |customer|
            customer.name == name
        end
    end

    def self.find_by_first_name(name)
        ALL.select do |customer|
            customer.name.split(" ")[0] == name
        end
    end

    def self.all_names
        ALL.map {|customer| customer.name}
    end

end

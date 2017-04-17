class Restaurant
    attr_reader :name
    attr_accessor :review, :customer

    ALL = []

    def self.all
        ALL
    end

    def initialize(name)
        @name = name
        @customers = []
        @reviews = []
        ALL << self
    end

    def reviews
        @reviews
    end

    def customers
        @customers
    end

    def self.find_by_name(name)
        ALL.select do |resto|
            resto.name == name
        end
    end


end

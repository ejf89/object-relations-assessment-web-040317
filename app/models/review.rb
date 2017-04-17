class Review
    attr_reader :title
    attr_accessor :customer, :restaurant, :content

    ALL =[]

    def initialize(restaurant, content)
        @restaurant = restaurant
        @title = title
        @content = content
        ALL << self
    end

    def self.all
        ALL
    end
    #
    # def customer
    #     customer
    # end
    #
    # def restaurant
    #     restaurant
    # end



end

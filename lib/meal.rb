class Meal
    @@all = []

    def self.all
        @@all
    end

    attr_reader :waiter, :customer, :total, :tip

    def initialize(waiter, customer, total, tip)
        @waiter, @customer, @total, @tip = waiter, customer, total, tip
        @@all << self
    end
end
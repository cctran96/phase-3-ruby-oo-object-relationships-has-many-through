class Waiter
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name
    attr_accessor :exp

    def initialize(name, exp)
        @name, @exp = name, exp
        @@all << self
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal.waiter == self}
    end

    def best_tipper
        max = meals.max{|a,b| a.tip <=> b.tip}
        max.customer
    end
end
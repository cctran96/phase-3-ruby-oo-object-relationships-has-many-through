class Customer
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name, :age

    def initialize(name, age)
        @name, @age = name, age
        @@all << self
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal.customer == self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end
end
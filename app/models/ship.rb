class Ship
    attr_accessor :name, :type, :booty


    @@all = []

    def initialize(name, type, booty)
        @name = name 
        @booty = booty 
        @type = type 
        @@all.push(self)
    end 

    def self.all 
        @@all 
    end 


    def self.clear
        @@all.clear
    end 
end

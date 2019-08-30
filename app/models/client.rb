class Client

    attr_reader :name, :trainer, :gym
    @@all = []

    def initialize(name, trainer, gym)
        @name = name
        @trainer = trainer
        @gym = gym
        @@all << self
    end

    def self.all
        @@all 
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end

end
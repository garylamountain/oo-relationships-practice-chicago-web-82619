class Gym

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients
        Client.all.select {|client| client.gym == self}
    end

    def self.all
        @@all
    end

    def self.least_clients
        num_of_clients = @@all.map {|gym| gym.clients.count}
        min_clients = num_of_clients.sort[0]
        @@all.find {|gym| gym.clients.count == min_clients}
    end

end
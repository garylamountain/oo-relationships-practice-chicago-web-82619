class Trainer

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select {|client| client.trainer == self}
    end

    def self.most_clients
        num_of_clients = @@all.map {|trainer| trainer.clients.count}
        max_clients = num_of_clients.sort[-1]
        @@all.find {|trainer| trainer.clients.count == max_clients}
    end

end
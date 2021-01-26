class Usuario
    include HTTParty
    require_relative '../hooks/gorest_hooks'
    base_uri "https://gorest.co.in"

    def getNameUser (name)
        self.class.get("/public-api/users/#{name}", @options)
    end

    def getUser
        self.class.get("/public-api/users", @options)
    end

    def getPosts (id)
        self.class.get("/public-api/#{id}/posts", @options2)
    end
end
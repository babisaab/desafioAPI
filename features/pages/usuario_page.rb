class Usuario
    include HTTParty
    require_relative '../hooks/gorest_hooks'
    base_uri "https://gorest.co.in"

    #def initialize
        #@options = {:headers => headers}
    #end

    #def getUsuarios
        #self.class.get("/public-api/users", @options)
    #end
end
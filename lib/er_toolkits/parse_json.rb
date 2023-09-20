
module ErToolkits
  class ParseJson

    def self.parse(json)
      if json.is_a?(String)
        JSON.parse( json )
      else
        json
      end
    end

    private


  end
end
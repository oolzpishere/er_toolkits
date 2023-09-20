require 'json'

module ErToolkits
  class ParseJson

    def self.parse(json)
      if json.is_a?(String)
        JSON.parse( json )
      else
        json
      end
    end

    # for test closure
    # def self.test_sleep
    #   10.times.each_with_index do |i|
    #     sleep 1
    #     puts i
    #   end 
    # end

    private


  end
end
require "active_support"
require "active_support/core_ext/hash"

require 'digest'

module ErToolkits
  class HashToOrderedMd5
    # hash to ordered query string, then digest to MD5 string.
    attr_reader :hash
    def initialize(hash)
      @hash = ordered_hash(hash)
    end
    # verify code md5: conference_id=?&stream_code?&start=?&expire=?
    def to_md5
      # to query string: "name=David&nationality=Danish"
      query_string = hash.to_query

      ::Digest::MD5.hexdigest query_string 
    end

    def ordered_hash(hash)
      Hash[ hash.sort_by{|key, value| key } ]
    end


    private


  end
end
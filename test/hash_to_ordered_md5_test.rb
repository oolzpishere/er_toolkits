# frozen_string_literal: true

require "test_helper"

class HashToOrderedMd5Test < Minitest::Test
  def setup
    @hash = {abc: '1', cd: '3', acd: '2'}
  end

  def test_ordered_hash
    to_md5 = ErToolkits::HashToOrderedMd5.new(@hash)
    assert_equal( {abc: '1', acd: '2', cd: '3'}, to_md5.hash )
  end

  # "abc=1&acd=2&cd=3" to md5: "81604d44f78e54129c7dc9f988e3fcd3" 
  def test_hash_to_md5
    assert_equal "81604d44f78e54129c7dc9f988e3fcd3", 
                  ErToolkits::HashToOrderedMd5.new(@hash).to_md5
  end
end

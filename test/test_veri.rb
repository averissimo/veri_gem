require 'test/unit'
require 'veri'
require 'ostruct'

class VeriTest < Test::Unit::TestCase

  def test_merge
    hash1       = {a:1, b:2, c: {d:3, e:{f:4}}}
    hash2       = {a:5, c: {g:8, d:6, e:{f:7}}}
    hash_result = hash1.deep_merge hash2
    hash_final  = {a:5, b:2, c: {d:6, e:{f:7}, g:8}}
    assert_equal hash_result, hash_final
  end

  def test_to_ostruct
    hash1       = {a:1, b:2, c: {d:3, e:{f:4}}}
    hash_result = hash1.to_ostruct
    #
    hash_final     = OpenStruct.new( {a:1, b:2} )
    hash_final.c   = OpenStruct.new( {d:3} )
    hash_final.c.e = OpenStruct.new( {f:4} )
    assert_equal hash_result, hash_final
  end

end

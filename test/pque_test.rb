require 'test_helper'

class PqueTest < Minitest::Test
  def setup
    @pq  = Pque.new
    @pqs = Pque.new(false)
  end
  def test_that_it_has_a_version_number
    refute_nil ::Pque::VERSION
  end

  def test_load_pque
    assert 'Pque',@pq.class
  end

  def test_sample_01
    @pq.push(1)
    @pq.push(2)
    @pq.push(3)
    @pq.push(4)
    @pq.push(5)
    assert [5,4,3,2,1],@pq
    assert 5,@pq.pop
    assert [4,3,2,1],@pq
    assert 4,@pq.pop
    assert [3,2,1], @pq
  end

  def test_pqs
    @pqs.push(1)
    @pqs.push(2)
    @pqs.push(3)
    @pqs.push(4)
    @pqs.push(5)
    assert [1,2,3,4,5],@pqs
    assert 1,@pqs.pop
    assert [2,3,4,5],@pqs
    assert 2,@pqs.pop
    assert [3,4,5], @pqs
  end

end


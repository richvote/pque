require 'test_helper'

class PqueTest < Minitest::Test
  def setup
    @pq = Pque.new
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
end


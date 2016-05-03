class TestNormale < Test::Unit::TestCase

  def test_simple
    NormaleDistribution::Persistant.new
    NormaleDistribution::Persistant.new standard_deviation: 1
    NormaleDistribution::Persistant.new esperance: 1
  end

  def test_qi
    rule = NormaleDistribution::Persistant.new standard_deviation: 15, esperance: 100
    assert_equal 0.68, rule.between(85, 115).round(2)
  end

  def test_centroid
    [0.1, 1, 2, 4.1324].each do |space|
      [0, 1, -1, 12, 41, 0.2, 0.233].each do |center|
        rule = NormaleDistribution::Persistant.new standard_deviation: space, esperance: center
        [0.2, 0.4, 0.45, 0.55, 0.94, 1.1].each do |diff|
          assert_equal -rule.between(diff, center), rule.between(center, diff)
        end
      end
    end
  end

  def test_error
    assert_raise { NormaleDistribution::Persistant.new 1, 2 }
    assert_raise { NormaleDistribution::Persistant.new 1 }
    assert_raise { NormaleDistribution::Persistant.new standard_deviation: "ok" }
    assert_raise { NormaleDistribution::Persistant.new standard_deviation: -1 }
    assert_raise { NormaleDistribution::Persistant.new standard_deviation: 0 }
  end

end

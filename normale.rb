module Normale
  class Class
    attr_accessor :standard_deviation, :esperance
    def initialize standard_deviation: 1.0, esperance: 0.0
      @standard_deviation = Float(standard_deviation)
      @esperance = Float(esperance)
    end

    def greater_than a
      1 - repartition(a)
    end

    def less_than a
      repartition a
    end

    def beetween a, b
      repartition(b) - repartition(a)
    end

    private
    def density t
      #1.0 / (standard_deviation * (2 * Math::PI) ** 0.5) * Math::exp((t - esperance) / (2 * standard_deviation)))
    end

    def repartition t
      erf = (Float(t) - esperance) / (standard_deviation * 2.0**0.5)
      0.5 * (1.0 + Math.erf(erf))
    end
  end

  def self.beetween standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil, b: nil
    Normale::Class.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).beetween a, b
  end
  def self.greater_than standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil
    Normale::Class.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).greater_than a
  end
  def self.less_than standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil, b: nil
    Normale::Class.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).less_than a
  end
end

module NormaleDistribution
  class Persistant
    attr_accessor :standard_deviation, :esperance
    def initialize standard_deviation: 1.0, esperance: 0.0
      @standard_deviation = Float(standard_deviation)
      @esperance = Float(esperance)
      raise ArgumentError, "standard_deviation must be > 0" unless @standard_deviation > 0.0
    end

    def greater_than a
      1 - repartition(a)
    end

    def less_than a
      repartition a
    end

    def between a, b
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
end

require_relative 'normale_distribution/persistant'

module NormaleDistribution
  def self.between standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil, b: nil
    NormaleDistribution::Persistant.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).between a, b
  end
  def self.greater_than standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil
    NormaleDistribution::Persistant.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).greater_than a
  end
  def self.less_than standard_deviation: nil, esperance: nil, sd: 1.0, e: 0.0, a: nil, b: nil
    NormaleDistribution::Persistant.new(standard_deviation: standard_deviation||sd, esperance: esperance||e).less_than a
  end
end

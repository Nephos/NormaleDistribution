Gem::Specification.new do |s|
  s.name        = 'normale_distribution'
  s.version     = File.read("version")
  s.date        = Time.now.getgm.to_s.split.first
  s.summary     = File.read("CHANGELOG").match(/^v[^\n]+\n((\t[^\n]+\n)+)/m)[1].split("\t").join
  s.description = 'A ruby implementation of the Normal Distribution'
  s.authors     = ['Nephos (poulet_a)']
  s.email       = ['arthur.poulet@mailoo.org']
  s.files       = %w(
  lib/normale_distribution.rb
  lib/normale_distribution/persistant.rb

  README.md
  CHANGELOG
  LICENSE

  Rakefile
  Gemfile
  Gemfile.lock
  normale_distribution.gemspec
  version

  test/unit_test.rb
  test/normale_distribution.rb

  certs/nephos.pem
  )
  s.executables = %w(
  )
  s.homepage    = 'https://github.com/Nephos/NormaleDistribution'
  s.license     = 'GPL-3.0'

  s.cert_chain  = ['certs/nephos.pem']
  s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/

  # s.add_dependency 'nephos', '~> 1.0'
  s.add_dependency 'nomorebeer', '~> 1.1'

end

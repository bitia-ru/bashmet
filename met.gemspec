require 'met/version'

Gem::Specification.new do |s|
  s.name = 'met'
  s.version = Met::VERSION
  s.authors = ["Artem Levenkov"]
  s.email = ["alev@bitia.ru"]
  s.summary = "Microservice infrastructure orchestration tool"

  s.add_dependency(%q<rest-client>)
  s.add_dependency(%q<thor>)
end


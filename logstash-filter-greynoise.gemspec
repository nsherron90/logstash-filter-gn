Gem::Specification.new do |s|
  s.name          = 'logstash-filter-greynoise'
  s.version       = '0.1.2'
  s.licenses      = ['Apache-2.0']
  s.summary = 'This greynoise filter takes contents in the ip field and returns greynoise api data (see https://greynoise.io/ for more info).'
  s.description     = 'This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install logstash-filter-greynoise. This gem is not a stand-alone program'
  s.homepage = 'https://github.com/nsherron90/logstash-filter-greynoise'
  s.authors       = ['nsherron90']
  s.email         = 'nsherron90@gmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '~> 2.0'
  s.add_development_dependency 'logstash-devutils'
  s.add_runtime_dependency  'faraday', '~> 0.9.2'
  s.add_runtime_dependency 'lru_redux', '~> 1.1.0'
  s.add_runtime_dependency 'timecop', '~> 0.9.1'

end

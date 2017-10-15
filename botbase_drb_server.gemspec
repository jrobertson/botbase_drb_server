Gem::Specification.new do |s|
  s.name = 'botbase_drb_server'
  s.version = '0.1.1'
  s.summary = 'A DRb server for running the botbase gem centrally.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/botbase_drb_server.rb']
  s.add_runtime_dependency('botbase', '~> 0.1', '>=0.1.6')
  s.signing_key = '../privatekeys/botbase_drb_server.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/botbase_drb_server'
end

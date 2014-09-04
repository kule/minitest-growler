# -*- ruby -*-

require 'rubygems'
require 'hoe'

Hoe.plugin :gemspec  # `gem install hoe-gemspec`
Hoe.plugin :git      # `gem install hoe-git`
Hoe.plugin :minitest # `gem install hoe-minitest`

Hoe.spec 'minitest-growler' do
  developer 'Luke Pearce', 'kulehandluke@gmail.com'

  self.summary     = 'Growl Notifications for MiniTest 5+'
  self.description = 'Growl Notifications for Minitest 5+'
  self.urls        = ['http://github.com/kule/minitest-growler']
  self.license       "MIT"

  self.readme_file       = 'README.rdoc'
  self.history_file      = 'CHANGELOG.rdoc'

  dependency 'minitest',  '~> 5.0'
  dependency 'growl',     '~> 1.0'
end
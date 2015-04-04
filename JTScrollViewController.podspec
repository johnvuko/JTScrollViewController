Pod::Spec.new do |s|
  s.name         = "JTScrollViewController"
  s.version      = "1.0.4"
  s.summary      = "Create ScrollViewController pragmatically using Auto Layout."
  s.homepage     = "https://github.com/jonathantribouharet/JTScrollViewController"
  s.license      = { :type => 'MIT' }
  s.author       = { "Jonathan Tribouharet" => "jonathan.tribouharet@gmail.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/jonathantribouharet/JTScrollViewController.git", :tag => s.version.to_s }
  s.source_files  = 'JTScrollViewController/*'
  s.requires_arc = true
  s.dependency 'Masonry', '~> 0'
end

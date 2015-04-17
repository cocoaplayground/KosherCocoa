Pod::Spec.new do |s|
  s.name         = "KosherCocoa"
  s.version      = "2.0.8"
  s.summary      = "An iOS manager for presenting system-wide notifications via a dropdown message bar."
  s.homepage     = "https://github.com/terryworona/TWMessageBarManager"

  s.screenshot   = "https://raw.github.com/terryworona/TWMessageBarManager/master/Screenshots/main.png"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Terry Worona" => "terryworona@gmail.com" }
  s.source       = { 
	:git => "git@github.com:cocoaplayground/KosherCocoa.git""
  }

  s.platform = :ios, '7.0'
  s.source_files = 'KosherCocoa/*.{h,m}'
  s.requires_arc = true
end

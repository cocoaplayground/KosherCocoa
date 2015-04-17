Pod::Spec.new do |s|
  s.name         = "KosherCocoa"
  s.version      = "2.0.8"
  s.summary      = "Jewish Calendar Swiss knif libraries and categories."
  s.homepage     = "https://github.com/cocoaplayground/KosherCocoa"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Moshe Bergman" => "moshe@gmail.com" }
  s.source       = { :git => "git@github.com:cocoaplayground/KosherCocoa.git"}
  s.source_files = 'KosherCocoa/*.{h,m}'
  s.requires_arc = true
end

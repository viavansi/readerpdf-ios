Pod::Spec.new do |s|
  s.name         = 'readerpdf'
  s.version      = '1.0.0'
  s.summary      = 'PDF Reader for signature'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'gitolite@git.viavansi.com:readerpdf-ios',
    :tag => "1.0.0"
  }
  non_arc_files = 'readerpdf/Sources/ReaderAnnotations.m'
  s.requires_arc = true
  s.source_files = 'readerpdf/Sources/**/*.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end
  s.ios.framework = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore', 'ImageIO', 'MessageUI'
end
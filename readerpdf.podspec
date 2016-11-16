Pod::Spec.new do |s|
  s.name         = 'readerpdf'
  s.version      = '1.0.2'
  s.summary      = 'PDF Reader for signature'
  s.homepage     = 'https://github.com/viavansi/readerpdf-ios'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/readerpdf-ios.git',
    :tag => "v1.0.2"
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

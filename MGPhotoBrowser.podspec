Pod::Spec.new do |s|

  s.name = 'MGPhotoBrowser'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'A simple iOS photo and video browser with optional grid view, captions and selections.'
s.description = <<-DESCRIPTION
                MGPhotoBrowser can display one or more images or videos by providing either UIImage
                objects, PHAsset objects, or URLs to library assets, web images/videos or local files.
                DESCRIPTION
  s.homepage = 'https://github.com/OYWeijian/MGPhotoBrowser'
  s.author = { 'OYWeijian' => '123789456abc0@163.com' }

  s.source = {
    :git => 'https://github.com/OYWeijian/MGPhotoBrowser.git',
    :tag => '0.0.1'
  }
  s.platform = :ios, '9.0'
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MGPhotoBrowser' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3'

  # SDWebImage
  # 3.7.2 contains bugs downloading local files
  # https://github.com/rs/SDWebImage/issues/1109
  s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

end

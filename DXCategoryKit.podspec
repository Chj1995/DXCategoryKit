#
# Be sure to run `pod lib lint DXCategoryKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DXCategoryKit'
  s.version          = '0.1.1'
  s.summary          = 'A short description of DXCategoryKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Chj1995/DXCategoryKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chj1995' => 'chenhj@actumtech.com' }
  s.source           = { :git => 'https://github.com/Chj1995/DXCategoryKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DXCategoryKit/Classes/DXCategoryKit.h'
  #--------分层--------#
  s.subspec 'MBProgressHUD' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/MBProgressHUD/*'
  end
  s.subspec 'NSArray' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSArray/*'
  end
  s.subspec 'NSData' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSData/*'
  end
  s.subspec 'NSDate' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSDate/*'
  end
  s.subspec 'NSObject' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSObject/*'
  end
  s.subspec 'NSString' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSString/*'
  end
  s.subspec 'NSURL' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/NSURL/*'
  end
  s.subspec 'UIButton' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIButton/*'
  end
  s.subspec 'UICollectionViewCell' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UICollectionViewCell/*'
  end
  s.subspec 'UIColor' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIColor/*'
  end
  s.subspec 'UIImage' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIImage/*'
  end
  s.subspec 'UIImageView' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIImageView/*'
  end
  s.subspec 'UILabel' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UILabel/*'
  end
  s.subspec 'UIScreen' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIScreen/*'
  end
  s.subspec 'UIScrollView' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIScrollView/*'
  end

  s.subspec 'UITableViewCell' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UITableViewCell/*'
  end
  s.subspec 'UITapGestureRecognizer' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UITapGestureRecognizer/*'
  end
  s.subspec 'UITextView' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UITextView/*'
  end
  s.subspec 'UIView' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIView/*'
  end
  s.subspec 'UIViewController' do |ss|
    ss.source_files = 'DXCategoryKit/Classes/UIViewController/*'
  end


  # s.resource_bundles = {
  #   'DXCategoryKit' => ['DXCategoryKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'DXConstantsKit'
    s.dependency 'MJRefresh'
    s.dependency 'SDWebImage'
    s.dependency 'YYKit'
    s.dependency 'MBProgressHUD'
    s.dependency 'Masonry'

end

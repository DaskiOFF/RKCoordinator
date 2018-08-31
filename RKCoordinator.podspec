#
# Be sure to run `pod lib lint RKCoordinator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RKCoordinator'
  s.version          = '0.1.1'
  s.summary          = 'Coordinators'

  s.description      = <<-DESC
  Coordinators

  0.1.1
    Add new manage method ("Add") to BaseCoordinator

  0.1.0
    Init
                       DESC

  s.homepage         = 'https://github.com/DaskiOFF/RKCoordinator'
  s.documentation_url = 'https://daskioff.github.io/RKCoordinator/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DaskiOFF' => 'waydeveloper@gmail.com' }
  s.source           = { :git => 'https://github.com/DaskiOFF/RKCoordinator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/**/*'
  s.frameworks = 'UIKit'
end

Pod::Spec.new do |s|
    s.name          =  'TamAlertTool'
    s.version       =  '1.0.0'
    s.summary       =  'Encapsulated system hints'
    s.homepage      =  'https://github.com/thatha123/TamSystemAlertTool'
    s.license       =  'MIT'
    s.authors       = {'Tam' => '1558842407@qq.com'}
    s.platform      =  :ios,'8.0'
    s.source        = {:git => 'https://github.com/thatha123/TamSystemAlertTool.git',:tag => s.version}
    s.source_files =  'TamAlertTool/**/*.{h,m}'
    s.resource      = 'TamAlertTool/*'
    s.requires_arc =  true
end

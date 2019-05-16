Pod::Spec.new do |s|
    s.name = "Squidward"
    s.version = "1.2.0"
    s.summary = "A collection of additional layout anchor types meant to complement UIKit's existing constraint system."
    s.homepage = "https://github.com/berbschloe/squidward"
    s.license = "MIT"
    s.author = "Brandon Erbschloe"
    s.platform = :ios, "10.0"
    s.source = { :git => "https://github.com/berbschloe/squidward.git", :tag => s.version.to_s }
    s.source_files = "Squidward/**/*.{h,m,swift}"
    s.swift_version = "5.0"
end

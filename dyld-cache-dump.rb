class DyldCacheDump < Formula
  desc "A macOS command-line tool to dump the contents of dyld shared cache files."
  head "https://github.com/macmade/dyld-cache-dump", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO", "CODE_SIGNING_ALLOWED=NO"
    bin.install "build/Release/dyld-cache-dump"
  end
end

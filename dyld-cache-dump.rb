class DyldCacheDump < Formula
  desc "A macOS command-line tool to dump the contents of dyld shared cache files."
  head "https://github.com/macmade/dyld-cache-dump", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/dyld-cache-dump"
  end
end

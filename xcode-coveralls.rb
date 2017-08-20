class XcodeCoveralls < Formula
  desc "A tool to upload code coverage from Xcode to coveralls.io."
  homepage "https://macmade.github.io/xcode-coveralls"
  url "https://github.com/macmade/xcode-coveralls/archive/0.1.4.tar.gz"
  sha256 "cb112cf384b97dfc5103656b9399a5c210fe8df200b9ee7506b2c6838a027f48"
  head "https://github.com/macmade/xcode-coveralls", :using => :git, :branch => :master
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xcode-coveralls"
  end
  
  test do
    system "#{bin}/xcode-coveralls", "--version"
  end
end

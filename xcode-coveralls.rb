class XcodeCoveralls < Formula
  desc "A tool to upload code coverage from Xcode to coveralls.io."
  homepage "https://macmade.github.io/xcode-coveralls"
  url "https://github.com/macmade/xcode-coveralls/archive/0.1.5.tar.gz"
  sha256 "cb4e39014a5fa43a2d02304196e4b537cbe659a3152227755b4f52abbb0e5adb"
  head "https://github.com/macmade/xcode-coveralls", :using => :git, :branch => "master"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xcode-coveralls"
  end
  
  test do
    system "#{bin}/xcode-coveralls", "--version"
  end
end

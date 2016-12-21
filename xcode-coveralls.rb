class XcodeCoveralls < Formula
  desc "A tool to upload code coverage from Xcode to coveralls.io."
  homepage "https://macmade.github.io/xcode-coveralls"
  url "https://github.com/macmade/xcode-coveralls/archive/0.1.3.tar.gz"
  sha256 "e43cc8c4985e3d409e92088738c9b0d3b67c9d9924ea79b1dd7dbf779bc388e5"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xcode-coveralls"
  end
  
  test do
    system "#{bin}/xcode-coveralls", "--version"
  end
end

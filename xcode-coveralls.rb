class XcodeCoveralls < Formula
  desc "A tool to upload code coverage from Xcode to coveralls.io."
  homepage "https://macmade.github.io/xcode-coveralls"
  url "https://github.com/macmade/xcode-coveralls/archive/0.1.2.tar.gz"
  sha256 "3ecbf75ed9bd0b62d56ec6b56d29dc73cc0feb96259d6b55bf278b40c5ba7197"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xcode-coveralls"
  end
  
  test do
    system "#{bin}/xcode-coveralls", "--version"
  end
end

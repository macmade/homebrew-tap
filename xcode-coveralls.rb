class XcodeCoveralls < Formula
  desc "A tool to upload code coverage from Xcode to coveralls.io."
  homepage "https://macmade.github.io/xcode-coveralls"
  url "https://github.com/macmade/xcode-coveralls/archive/0.1.1.tar.gz"
  sha256 "03e4b8b460f2098800ed2e6c64280fc300ce5cbc92b1841c67834c2c65235a87"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xcode-coveralls"
  end
  
  test do
    system "#{bin}/xcode-coveralls", "--version"
  end
end

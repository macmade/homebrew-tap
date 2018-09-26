class Xrun < Formula
  desc "xrun is a drop-in replacement for Apple's xcodebuild or Facebook's xctool."
  homepage "https://macmade.github.io/xrun/"
  head "https://github.com/macmade/xrun", :using => :git, :branch => "master"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xrun"
  end
  
  test do
    system "#{bin}/xrun", "-version"
  end
end

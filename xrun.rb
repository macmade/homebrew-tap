class Xrun < Formula
  desc "xrun is a drop-in replacement for Apple's xcodebuild or Facebook's xctool."
  homepage "https://macmade.github.io/xrun/"
  url "https://github.com/macmade/xrun/archive/0.0.0.tar.gz"
  sha256 "dda2ac73e8cb00ce86f08dd514a7bbf291fbcffe68732a5d2410493a95eaece7"
  
  depends_on :xcode => 6.0
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/xrun"
  end
  
  test do
    system "#{bin}/xrun", "-version"
  end
end

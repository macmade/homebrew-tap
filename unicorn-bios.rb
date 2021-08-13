class UnicornBios < Formula
  desc "Basic BIOS emulator for Unicorn Engine."
  head "https://github.com/macmade/unicorn-bios", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/unicorn-bios"
  end
  
  test do
    system "#{bin}/unicorn-bios"
  end
end

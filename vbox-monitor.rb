class VboxMonitor < Formula
  desc "Monitoring/Debug tool for VirtualBox."
  head "https://github.com/macmade/vbox-monitor", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/vbox-monitor"
  end
  
  test do
    system "#{bin}/vbox-monitor"
  end
end

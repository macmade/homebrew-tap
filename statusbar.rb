class Statusbar < Formula
  desc "Status bar"
  head "https://github.com/macmade/statusbar", :using => :git, :branch => "main"
  
  depends_on :xcode => "8.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/statusbar"
  end
end

class FindString < Formula
  desc "Search strings in executables."
  head "https://github.com/macmade/find-string", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/find-string"
  end
  
  test do
    system "#{bin}/find-string"
  end
end

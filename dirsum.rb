class Dirsum < Formula
  desc "A tool to display a SHA-265 hash of each file in a directory."
  head "https://github.com/macmade/dirsum", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO", "CODE_SIGNING_ALLOWED=NO"
    bin.install "build/Release/dirsum"
  end
end

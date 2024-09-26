class Dirsum < Formula
  desc "A tool to display a SHA-265 hash of each file in a directory."
  homepage "https://github.com/macmade/dirsum"
  url "https://github.com/macmade/dirsum/releases/download/1.0.0/dirsum.tar.gz"
  sha256 "fd0381f3a6ef5b93ffea750ecd2007005d9aca87d8752d3f1ffc0be19a63a5d6"
  head "https://github.com/macmade/dirsum", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO", "CODE_SIGNING_ALLOWED=NO"
    bin.install "build/Release/dirsum"
  end
  
  test do
    system "#{bin}/dirsum", "--help"
  end
end

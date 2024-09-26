class Dirsum < Formula
  desc "A tool to display a SHA-265 hash of each file in a directory."
  homepage "https://github.com/macmade/dirsum"
  url "https://github.com/macmade/dirsum/releases/download/1.0.1/dirsum.tar.gz"
  sha256 "9c22230e22c834504cc6667a366e8692b0e0af09d91f5831f8567d957f112f94"
  head "https://github.com/macmade/dirsum", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "dirsum"
  end
  
  test do
    system "#{bin}/dirsum", "--help"
  end
end

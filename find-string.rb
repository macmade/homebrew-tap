class FindString < Formula
  desc "Search strings in executables."
  head "https://github.com/macmade/find-string", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/find-string"
  url "https://github.com/macmade/find-string/releases/download/1.1.0/find-string.tar.gz"
  sha256 "04338ac4efc3a881e389974d70b71c7e3c0ff6a1b79c61b675011633935d07c6"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "find-string"
  end
  
  test do
    system "#{bin}/find-string"
  end
end

class FindString < Formula
  desc "Search strings in executables."
  head "https://github.com/macmade/find-string", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/find-string"
  version "1.3.0"
  url "https://github.com/macmade/find-string/releases/download/1.3.0/find-string.tar.gz"
  sha256 "4b4dc47c56d685bfec6c45341f1ee8cc9d868cffcaf64ca0f4802214a10d856c"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "find-string"
  end
  
  test do
    system "#{bin}/find-string"
  end
end

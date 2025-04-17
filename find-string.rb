class FindString < Formula
  desc "Search strings in executables."
  head "https://github.com/macmade/find-string", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/find-string"
  url "https://github.com/macmade/find-string/releases/download/1.2.0/find-string.tar.gz"
  sha256 "6caf89bbb15f3bfd1ee2a721b5ef83dd4f1ea1747af41a34f8f31bbe1670e042"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "find-string"
  end
  
  test do
    system "#{bin}/find-string"
  end
end

class Rpecli < Formula
  desc "RPECLI"
  head "https://github.com/N0fix/rpecli", :using => :git, :branch => "master"
  homepage "https://github.com/N0fix/rpecli"
  url "https://github.com/macmade/homebrew-tap/bin/rpecli.tar.gz"
  sha256 "55349f0906a2589459633a41495ec13000f79e8dc4c53b4996b0963bcd348bd1"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "rpecli"
  end
  
  test do
    system "#{bin}/rpecli"
  end
end

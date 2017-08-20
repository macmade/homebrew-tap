class HexPrint < Formula
  desc "A command line tool that displays a file's content as an hexadecimal dump."
  head "https://github.com/macmade/HexPrint", :using => :git, :branch => :master
  
  depends_on :xcode => 8.0
  
  def install
    make
    bin.install "build/hexprint"
  end
  
  test do
    system "#{bin}/hexprint", "-h"
  end
end
class Macho < Formula
  desc "Mach-O file parser."
  head "https://github.com/macmade/macho", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/macho"
  url "https://github.com/macmade/macho/releases/download/1.0.0/macho.tar.gz"
  sha256 "ba5e9f653b9390e155f6f01f702e84cec4a3b8fadd823cc55cce47156b4662a5"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "macho"
  end
  
  test do
    system "#{bin}/macho"
  end
end

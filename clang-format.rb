class ClangFormat < Formula
  desc "Clang Format - Latest."
  homepage "https://github.com/macmade/llvm-build"
  url "https://github.com/macmade/homebrew-tap/raw/master/bin/clang-format.tar.gz"
  version "12.0.0"
  sha256 "ca091128abb9c2c6dee0ddac578beb826ed0c1d57647bd279cd6a5a95726d3c2"
  head "https://github.com/macmade/llvm-build", :using => :git, :branch => "master"
  
  depends_on :xcode => "6.0"
  
  def install
    bin.install "clang-format"
  end
  
  test do
    system "#{bin}/clang-format", "--version"
  end
end

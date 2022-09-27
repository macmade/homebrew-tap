class ClangFormat < Formula
  desc "Clang Format - Latest."
  homepage "https://github.com/macmade/llvm-build"
  url "https://github.com/macmade/homebrew-tap/raw/main/bin/clang-format.tar.gz"
  version "16.0.0"
  sha256 "3120a38ac46aa00aa73d1522e1b307b63be2fc0aaacf84b6a154bfbdc0aec389"
  head "https://github.com/macmade/llvm-build", :using => :git, :branch => "main"
  
  depends_on :xcode => "6.0"
  
  def install
    bin.install "clang-format"
  end
  
  test do
    system "#{bin}/clang-format", "--version"
  end
end

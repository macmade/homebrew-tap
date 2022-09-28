class Uncrustify < Formula
  desc "Uncrustify - Latest."
  homepage "https://github.com/macmade/uncrustify-build"
  url "https://github.com/macmade/homebrew-tap/raw/main/bin/uncrustify.tar.gz"
  version "0.75.0"
  sha256 "c3ec15c8825c38d2cd268db8c74fcfd78c7fbdec13ef3d9761345c0d04c0389d"
  head "https://github.com/macmade/uncrustify-build", :using => :git, :branch => "main"
  
  depends_on :xcode => "6.0"
  
  def install
    bin.install "uncrustify"
  end
  
  test do
    system "#{bin}/uncrustify", "--version"
  end
end

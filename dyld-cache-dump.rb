class DyldCacheDump < Formula
  desc "A macOS command-line tool to dump the contents of dyld shared cache files."
  head "https://github.com/macmade/dyld-cache-dump", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/dyld-cache-dump"
  version "1.0.0"
  url "https://github.com/macmade/dyld-cache-dump/releases/download/1.0.0/dyld-cache-dump.tar.gz"
  sha256 "b836ec46a57e4b225b6aade2b67be9d762c0b0fec8b7b2acb5e977c45af16277"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "dyld-cache-dump"
  end
end

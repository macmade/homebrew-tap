class PurgeDisk < Formula
  desc "Reclaims purgeable disk space on macOS."
  head "https://github.com/macmade/purge-disk", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/purge-disk"
  version "1.0.0"
  url "https://github.com/macmade/purge-disk/releases/download/1.0.0/purge-disk.tar.gz"
  sha256 "b02b8c6240d233e1f2be58006c0b8ae479cce8554689e1244f1f47ff0a15b631"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "purge-disk"
  end
end

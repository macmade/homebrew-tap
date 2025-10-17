class HashFile < Formula
  desc "Command line tool for macOS to easily create hashes from files."
  head "https://github.com/macmade/hash-file", :using => :git, :branch => "main"
  homepage "https://github.com/macmade/hash-file"
  version "1.0.0"
  url "https://github.com/macmade/hash-file/releases/download/1.0.0/hash-file.tar.gz"
  sha256 "22292eae28a09b8edc559677445f252c05067dc99d835953e1a07f51b7444777"
  
  depends_on :xcode => "10.0"
  
  def install
    bin.install "hash-file"
  end
end

class Nyancat < Formula
  desc "nyancat"
  head "https://github.com/klange/nyancat", :using => :git, :branch => "master"
  
  depends_on :xcode => "10.0"
  
  def install
    system "make"
    bin.install "src/nyancat"
  end
end

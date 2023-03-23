class Nyancat < Formula
  desc "nyancat"
  head "https://github.com/klange/nyancat", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    make
    bin.install "src/nyancat"
  end
end

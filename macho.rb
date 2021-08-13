class Macho < Formula
  desc "Mach-O file parser."
  head "https://github.com/macmade/macho", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/macho"
  end
  
  test do
    system "#{bin}/macho"
  end
end

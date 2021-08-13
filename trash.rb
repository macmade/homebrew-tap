class Trash < Formula
  desc "A command-line tool for macOS, written in Swift, that moves files to the current user's trash folder."
  head "https://github.com/macmade/trash", :using => :git, :branch => "main"
  
  depends_on :xcode => "8.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/trash"
  end
  
  test do
    system "touch", "foo.txt"
    system "#{bin}/trash", "foo.txt"
  end
end

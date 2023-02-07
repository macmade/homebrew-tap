class SmcDump < Formula
  desc "A command-line tool for macOS to extract all values from the SMC (System Management Controller)."
  head "https://github.com/macmade/SMCKit", :using => :git, :branch => "main"
  
  depends_on :xcode => "8.0"
  
  def install
    xcodebuild "-scheme", "smc-dump", "SDKROOT=", "SYMROOT=build", "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO"
    bin.install "build/Release/smc-dump"
  end
  
  test do
    system "#{bin}/smc-dump"
  end
end

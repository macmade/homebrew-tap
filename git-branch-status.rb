class GitBranchStatus < Formula
  desc "Branch status monitoring utility for Git."
  head "https://github.com/macmade/git-branch-status", :using => :git, :branch => "main"
  
  depends_on :xcode => "10.0"
  
  def install
    xcodebuild "SDKROOT=", "SYMROOT=build"
    bin.install "build/Release/git-branch-status"
  end
  
  test do
    system "#{bin}/git-branch-status", "--help"
  end
end

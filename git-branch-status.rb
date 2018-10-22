class GitBranchStatus < Formula
  desc "Branch status monitoring utility for Git."
  head "https://github.com/macmade/git-branch-status", :using => :git, :branch => "master"
  
  depends_on :xcode => 8.0
  
  def install
    make
    bin.install "build/git-branch-status"
  end
  
  test do
    system "#{bin}/git-branch-status", "-h"
  end
end

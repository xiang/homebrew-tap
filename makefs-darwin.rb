class MakefsDarwin < Formula
  desc "Darwin port of FreeBSD's makefs utility"
  homepage "https://github.com/xiang/makefs-darwin"
  url "https://github.com/xiang/makefs-darwin.git", branch: "main"
  version "0.1.0"

  license "BSD-2-Clause"

  def install
    # Build the universal binary using the provided Makefile
    system "make"
    
    # Install the resulting binary
    bin.install "makefs"
  end

  test do
    # Verify the binary runs and shows help
    assert_match "usage: makefs", shell_output("#{bin}/makefs -h 2>&1", 1)
  end
end

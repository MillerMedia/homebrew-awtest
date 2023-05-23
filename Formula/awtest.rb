class AWTest < Formula
  desc "A tool for pentesting found AWS credentials"
  homepage "https://github.com/MillerMedia/awtest"
  url "https://github.com/MillerMedia/awtest/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "af224edd81bfbd10c54d0a73278a3b2730b9fafe27882cfabb5064f88f7daa0f"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"awtest", "./cmd/awtest"
  end


  test do
    system bin/"awtest", "-h"
  end
end

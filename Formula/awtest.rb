class Awtest < Formula
  desc "A tool for pentesting found AWS credentials"
  homepage "https://github.com/MillerMedia/awtest"
  url "https://github.com/MillerMedia/awtest/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "74c7e461e556de786956508331450c05dda5841c9d6f7e5551f81bc06045d227"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"awtest", "./cmd/awtest"
  end


  test do
    system bin/"awtest", "-h"
  end
end

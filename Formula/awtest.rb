class Awtest < Formula
  desc "A tool for pentesting found AWS credentials"
  homepage "https://github.com/MillerMedia/awtest"
  url "https://github.com/MillerMedia/awtest/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "f09b3c060b170d2e7909cabe290eaedfe9b49ad9ab6ad77d063a62a6e6a9a732"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"awtest", "./cmd/awtest"
  end


  test do
    system bin/"awtest", "-h"
  end
end

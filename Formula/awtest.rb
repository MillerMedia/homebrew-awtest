class Awtest < Formula
  desc "A tool for pentesting found AWS credentials"
  homepage "https://github.com/MillerMedia/awtest"
  url "https://github.com/MillerMedia/awtest/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "3b2ddfde93bda26939145d8368867690422d77bc4819831e2956f3dfedd5da3d"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"awtest", "./cmd/awtest"
  end


  test do
    system bin/"awtest", "-h"
  end
end

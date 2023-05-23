class AWTest < Formula
  desc "A tool for pentesting found AWS credentials"
  homepage "https://github.com/MillerMedia/AWTest"
  url "https://github.com/MillerMedia/kneejerk/archive/refs/tags/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "9206d7da24f70f46bc7bc330304b40a4715c82b4c0580a0c40340a95801fd34c"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"awtest", "./cmd/awtest"
  end


  test do
    system bin/"awtest", "-h"
  end
end

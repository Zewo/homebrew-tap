class Zewo < Formula
  homepage "https://zewo.io"
  version "0.14.0"
  url "https://github.com/Zewo/Zewo.git", tag: version
  head "https://github.com/Zewo/Zewo"

  depends_on "zewo/tap/btls"
  depends_on "zewo/tap/libdill"

  def install
      system "touch zewo"
      bin.install "zewo"
  end
end

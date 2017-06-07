class Btls < Formula
  homepage "https://zewo.io"
  version "0.1.0"
  url "https://github.com/Zewo/btls.git", tag: version
  head "https://github.com/Zewo/btls"

  depends_on "libdill"
  depends_on "libressl"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
    system "mkdir pkgconfig"
    system "mv btls.pc pkgconfig/btls.pc"
    lib.install "pkgconfig"
  end
end

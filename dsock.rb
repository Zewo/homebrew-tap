class Dsock < Formula
  homepage "https://zewo.io"
  version "0.5-alpha"
  url "https://github.com/Zewo/dsock.git", tag: version
  head "https://github.com/Zewo/dsock"

  depends_on "libdill"
  depends_on "openssl"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}", "--enable-tls"
    system "make"
    system "make", "check" if build.with?("test")
    system "make install"
  end
end
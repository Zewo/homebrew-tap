class Libdill < Formula
  homepage "https://zewo.io"
  version "1.6.2"
  url "https://github.com/Zewo/libdill.git", tag: version
  head "https://github.com/Zewo/libdill"

  depends_on "automake"
  depends_on "libtool"

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "check" if build.with?("test")
    system "make install"
  end
end

require 'formula'

class Bison < Formula
  homepage 'http://www.gnu.org/software/bison/'
  url 'http://ftpmirror.gnu.org/bison/bison-2.7.tar.xz'
  mirror 'http://ftp.gnu.org/gnu/bison/bison-2.7.tar.xz'
  sha1 '245467c56663ec80fc3e80c38cc1ff18c59d7ecc'

  depends_on 'xz' => :build

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end

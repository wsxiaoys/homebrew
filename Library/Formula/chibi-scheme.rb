require 'formula'

class ChibiScheme < Formula
  url 'http://chibi-scheme.googlecode.com/files/chibi-scheme-0.5.2.tgz'
  homepage 'http://code.google.com/p/chibi-scheme/'
  md5 '8b661e998da59dfaec33ddd196789657'
  head 'https://code.google.com/p/chibi-scheme/', :using => :hg

  def install
    # "make" and "make install" must be done separately
    system "make"
    system "make install PREFIX=#{prefix}"
  end
end

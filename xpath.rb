require 'formula'

class Xpath < Formula
  homepage 'https://packages.ubuntu.com/bionic/libxml-xpath-perl'
  url 'http://mirrors.kernel.org/ubuntu/pool/universe/libx/libxml-xpath-perl/libxml-xpath-perl_1.42-1_all.deb'
  version '1.42-1'
  sha256 'ebea0cf6b6ae16f8d9d0ca913139c4e9c044b4089019b5227b18b8d646678024'

  def install
    system "tar xf libxml-xpath-perl_#{version}_all.deb"
    system "tar xf data.tar.xz"
    system "mkdir #{bin}"
    system "cp usr/bin/xpath #{bin}"
    system "mkdir -p #{man1}"
    system "cp usr/share/man/man1//xpath.1p.gz #{man1}"
  end
end

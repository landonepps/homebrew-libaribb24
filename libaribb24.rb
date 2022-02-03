class Libaribb24 < Formula
    desc "A library for ARIB STD-B24, decoding JIS 8 bit characters and parsing MPEG-TS stream"
    homepage "https://github.com/nkoriyama/aribb24"
    url "https://github.com/nkoriyama/aribb24/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "f61560738926e57f9173510389634d8c06cabedfa857db4b28fb7704707ff128"
    head "https://github.com/nkoriyama/aribb24.git", branch: "master"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "pkg-config" => :build
    depends_on "libpng"
    
    def install
        system "autoreconf", "-fiv"
        system "./configure", "--prefix=#{prefix}", "--enable-static", "--disable-shared"
        system "make", "install"
    end
  end
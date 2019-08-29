# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Lem < Formula
  desc "Common Lisp editor/IDE with high expansibility"
  homepage ""
  url "https://github.com/cxxxr/lem/archive/v1.6.tar.gz"
  sha256 "6cbfde2038af0b16b034c86c74e3201ed037662b177c1cf79c307766f9199092"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "roswell" => :build
  depends_on "ncurses"

  def install
    system "./bootstrap"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end

class Kanttiinit < Formula
  desc "Command-line interface for Kanttiinit, a Finnish student restaurant menu tool"
  homepage "https://github.com/Kanttiinit/cli"
  head "https://github.com/Kanttiinit/cli.git"

  bottle :unneeded

  def install
    system "make"
    bin.install "kanttiinit"
  end

  test do
    system "#{bin}/kanttiinit --version"
  end
end

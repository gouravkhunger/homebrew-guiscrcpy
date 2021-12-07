class Guiscrcpy < Formula
  desc "A full fledged GUI integration for the most award winning open-source android screen mirroring system -- scrcpy located on https://github.com/genymobile/scrcpy/ by @rom1v"
  homepage "https://guiscrcpy.srev.in"
  url "https://github.com/srevinsaju/guiscrcpy/archive/refs/tags/v4.11.2.tar.gz"
  sha256 "1826c90ea07797745aa6748e517b767ca8252c84f22d60ecedc93e684709d3a8"
  license "GPL-3.0"

  depends_on "poetry"
  depends_on "scrcpy"
  depends_on cask: "android-platform-tools"

  on_macos do
    if Hardware::CPU.intel?
      def install
        system "poetry", "env", "use", "/usr/bin/python3"
        system "poetry", "install", "-E", "PySide2"
      end
    end
  end

  test do
  end
end

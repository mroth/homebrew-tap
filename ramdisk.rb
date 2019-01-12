class Ramdisk < Formula
  desc "Convenience wrapper for creating RAM disks."
  homepage "https://github.com/mroth/ramdisk"
  url "https://github.com/mroth/ramdisk/releases/download/v0.1.0/ramdisk_0.1.0_macOS_x64.tar.gz"
  version "0.1.0"
  sha256 "07200408aa26cf65aaf325a1eeb7800801f38778747b5cb5fe339922362858e4"

  def install
    bin.install "ramdisk"
  end
end

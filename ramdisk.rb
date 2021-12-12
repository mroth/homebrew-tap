# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ramdisk < Formula
  desc "Convenience wrapper for creating RAM disks."
  homepage "https://github.com/mroth/ramdisk"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mroth/ramdisk/releases/download/v0.1.1/ramdisk_0.1.1_macOS_arm64.tar.gz"
      sha256 "8be5be38866f8c01ac01a54232a5f4313b13264a30a439293287b271c04bd33b"

      def install
        bin.install "ramdisk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mroth/ramdisk/releases/download/v0.1.1/ramdisk_0.1.1_macOS_x64.tar.gz"
      sha256 "0be8ca2c997c91831b284853d921572eda1c0a739c6b5efb8ff7446f6d4fb73b"

      def install
        bin.install "ramdisk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mroth/ramdisk/releases/download/v0.1.1/ramdisk_0.1.1_linux_arm64.tar.gz"
      sha256 "7598640f23f759a8b9db6fcbd5ec1516c025eded2ff9766b1aac2ce92d0d6727"

      def install
        bin.install "ramdisk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mroth/ramdisk/releases/download/v0.1.1/ramdisk_0.1.1_linux_x64.tar.gz"
      sha256 "507433e02d79566999e5361a5d685a1541ab56899aa7b1974bfb85d8b0ef5c32"

      def install
        bin.install "ramdisk"
      end
    end
  end
end

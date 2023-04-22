# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deepclean < Formula
  desc "Scan and remove junk files from source code directories"
  homepage "https://github.com/mroth/deepclean"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mroth/deepclean/releases/download/v0.3.0/deepclean_0.3.0_darwin_arm64.tar.gz"
      sha256 "eabb60fecd24da4e6660509a5611424b4c1c913bf3fd27feeba08f9ba0de17a1"

      def install
        bin.install "deepclean"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mroth/deepclean/releases/download/v0.3.0/deepclean_0.3.0_darwin_amd64.tar.gz"
      sha256 "e7a2f133c0abb0a8aca7f0eb01fa671ce39fca1a22f7563901150e420cbb720c"

      def install
        bin.install "deepclean"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mroth/deepclean/releases/download/v0.3.0/deepclean_0.3.0_linux_amd64.tar.gz"
      sha256 "bfe5d575cb28860cd81258d3517d4459549634a5e1006e7570c8df15d42e499a"

      def install
        bin.install "deepclean"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mroth/deepclean/releases/download/v0.3.0/deepclean_0.3.0_linux_arm64.tar.gz"
      sha256 "502fccbb1125dec0589efe36fc62dc2b817d052c3787f8408853565d6c0a1ff9"

      def install
        bin.install "deepclean"
      end
    end
  end
end

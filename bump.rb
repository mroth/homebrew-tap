# This file was generated by GoReleaser. DO NOT EDIT.
class Bump < Formula
  desc "Draft GitHub Release of the next semver in web browser"
  homepage "https://github.com/mroth/bump"
  url "https://github.com/mroth/bump/releases/download/v0.1.0/bump_0.1.0_mac_x64.tar.gz"
  version "0.1.0"
  sha256 "64ff0d2cd497a437daf59fdbc0cd759d5cc740bb931aac39ede31bc89213ea85"

  def install
    bin.install "bump"
  end
end

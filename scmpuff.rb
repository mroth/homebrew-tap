class Scmpuff < Formula
  homepage "https://mroth.github.io/scmpuff/"
  url "https://github.com/mroth/scmpuff/archive/v0.1.0.tar.gz"
  sha256 "2d276ee1c52ca5ef1f9572d89eef00fabc4431f8e43f2b9d53d9bc31ac0e0ec4"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "go build -o bin/scmpuff -ldflags '-X main.VERSION #{version}'"
    bin.install "bin/scmpuff"
  end

  test do
    HOMEBREW_REPOSITORY.cd do
      assert_equal "zzz", shell_output("export e1=zzz && #{bin}/scmpuff expand 1").strip
    end
  end
end

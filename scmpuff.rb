class Scmpuff < Formula
  homepage "https://mroth.github.io/scmpuff/"
  url "https://github.com/mroth/scmpuff/archive/v0.1.0.tar.gz"
  sha256 "2d276ee1c52ca5ef1f9572d89eef00fabc4431f8e43f2b9d53d9bc31ac0e0ec4"

  depends_on "go" => :build

  def install
    # Go assumes things being compiled are located within a specific directory
    # hierarchy in the user $GOPATH. Since it insists on absoute import paths,
    # we need to temporarily create this scenario so the vendored package
    # hierarchy is find-able by gotools at compile time.
    gopath = "#{buildpath}/.go"
    mkdir_p "#{gopath}/src/github.com/mroth"
    ln_s buildpath, "#{gopath}/src/github.com/mroth/scmpuff"

    # do a compile, manually specifying version so that scmpuff's build script
    # does not do it's normal version detection which depends on being in a git
    # repository -- instead let homebrew recipe specify the version number.
    system "GOPATH=#{gopath} go build -o bin/scmpuff -ldflags '-X main.VERSION #{version}'"
    bin.install "bin/scmpuff"
  end

  test do
    assert_equal "abc", shell_output("export e1=abc && #{bin}/scmpuff expand 1").strip
  end
end

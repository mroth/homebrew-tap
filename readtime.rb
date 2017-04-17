class Readtime < Formula
  desc "Estimate how long it will take to read text"
  homepage "https://github.com/mroth/readtime"
  url "https://github.com/mroth/readtime.git", :tag => "v0.1.0"
  head "https://github.com/mroth/readtime.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/readtime"
  end

  test do
    assert_equal "20 min read", shell_output("ruby -e \"puts 'The quick brown fox ' * 999\" | #{bin}/readtime").strip
  end
end

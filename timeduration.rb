class Timeduration < Formula
  desc "Simple CLI tool to convert humanized time durations"
  homepage "https://github.com/mroth/timeduration"
  url "https://github.com/mroth/timeduration.git", :tag => "v0.1.0"
  head "https://github.com/mroth/timeduration.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "#{bin}/timeduration"
  end

  test do
    assert_equal "13320", shell_output("#{bin}/timeduration 3h42m").strip
  end
end

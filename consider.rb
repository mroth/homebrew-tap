class Consider < Formula
  desc "Quickly check code comments for subtle racism/sexism/ableism"
  homepage "https://github.com/mroth/consider"
  url "https://github.com/mroth/consider.git", :tag => "v0.1.1"
  head "https://github.com/mroth/consider.git"

  depends_on "ripgrep"

  def install
    bin.install "consider.sh" => "consider"
  end

  test do
    (testpath/"inconsiderate.txt").write("this code is retarded yo")
    (testpath/"considerate.txt").write("this code is poorly written")
    # shell_output returns the output of running cmd, and asserts the exit status
    shell_output "#{bin}/consider inconsiderate.txt", 1
    shell_output "#{bin}/consider considerate.txt", 0
  end
end

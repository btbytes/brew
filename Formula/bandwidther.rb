class Bandwidther < Formula
  desc "SwiftUI menu bar app for monitoring application bandwidth use"
  homepage "https://github.com/btbytes/bandwidther"
  url "https://github.com/btbytes/bandwidther.git",
      revision: "5b8f2bc0e0f4f4e274f5ea777ca41187a3b88f4f",
      branch: "main"
  license "MIT"
  head "https://github.com/btbytes/bandwidther.git", branch: "main"

  depends_on macos: :ventura
  depends_on xcode: :build

  def install
    system "make"
    bin.install "Bandwidther"
  end

  test do
    assert_predicate bin/"Bandwidther", :exist?
  end
end

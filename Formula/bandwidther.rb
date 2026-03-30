class Bandwidther < Formula
  desc "macOS menu bar app that monitors per-process network bandwidth usage"
  homepage "https://github.com/btbytes/bandwidther"
  url "https://github.com/btbytes/bandwidther/releases/download/v2026.03.30/Bandwidther-2026.03.30.zip"
  version "2026.03.30"
  sha256 "fe67e4a01532331f76ba91a6a41a768a753100d0c707b53022825cf07d05a490"
  license :can_use_with_0_warnings

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "Bandwidther"
  end

  def caveats
    <<~EOS
      Bandwidther is a macOS menu bar app. After installation, run it with:
        open \#{opt_bin}/Bandwidther

      Or launch via Spotlight by searching for "Bandwidther".
    EOS
  end

  test do
    assert_predicate opt_bin/"Bandwidther", :exist?
  end
end

class Siori < Formula
  desc "A simple Git TUI for vibe coders"
  homepage "https://github.com/takuma-ogura/siori"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/takuma-ogura/siori/releases/download/v0.1.20/siori-aarch64-apple-darwin.tar.gz"
      sha256 "a82f02c1c0fdc9edc5090e81e38ec93b025da8fbd73e653aeeb15dfeca919237"
    end
    on_intel do
      url "https://github.com/takuma-ogura/siori/releases/download/v0.1.20/siori-x86_64-apple-darwin.tar.gz"
      sha256 "16ea8e40c6262c5ec99fb81788bc994a6f78c57a7c997e5028693ddbe91592ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/takuma-ogura/siori/releases/download/v0.1.20/siori-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e71ab0ac434b3c7baeac4c0bb950d645d39c1b0c3e5a45f52aca23f08c8d413"
    end
  end

  def install
    bin.install "siori"
  end

  test do
    assert_match "siori", shell_output("#{bin}/siori --help")
  end
end

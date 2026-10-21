class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.6.0/intosql-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "a05f0fba540ded37c9eca833f32dca8713c8a1520fbdf58a444d2a84862770d7"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.6.0/intosql-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcc95aeb20bdc9844809279ef4595f6440a08ff4723b7d574b4e5c27a71acb59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.6.0/intosql-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33a6ef0599e0cddbb52b37cd8e8d16aee1960dd51bca7816549bfc2469298aaa"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.6.0/intosql-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c7fde8b415f5a47acc5eb20e707f1d06fa10f13d164b439db9b29c1ef0a4894"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

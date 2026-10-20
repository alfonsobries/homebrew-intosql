class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.4.0/intosql-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e4e84e9fab2345c1b11c321f62a0bb9d747baf284aa657700cea2a428b43780"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.4.0/intosql-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7418526816cc59833950b2ed27125ed2a8325c3733b746b22dde9554267ce07c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.4.0/intosql-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b55679c14e5a2088c366d5b1c2d997c1af34f6c6e49621e7a882dfad5ec1b8f6"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.4.0/intosql-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10191842a92520a724f3a804e6a1cd2f6dcfbed3ed37ad7091a51b55e3de8736"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

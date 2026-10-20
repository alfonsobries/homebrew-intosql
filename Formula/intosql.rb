class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.3.1/intosql-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "e61ad3f8c75b2521ab5151b324ce390076e966316bc2f22907b2688166756cba"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.3.1/intosql-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "48c3cc650d436eafc51bd2309c8b0fcdd9270a3a75343b10bfd4592ab156fdfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.3.1/intosql-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "35b194fe32df173a812f2c6437d7ae329f63f8108db37a09c1f0b360b9004e60"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.3.1/intosql-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f55e8c982fcb8941e550ba981126e8488b2084ac55ce6bf696d0986c190c1b65"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

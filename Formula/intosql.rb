class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.3/intosql-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "651140c31a1fc7708874f45c6690d1ff541b14a1cbc4e1429ff3c52bf332770d"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.3/intosql-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "6864fe4a65c3b98681eb579233ea83c8220a80e96c4ae1fd64b124a62ee09676"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.3/intosql-0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6c411b544420cd8d03155839ac49dadfe4da25e98cfbed6e9f3729f10aecd80c"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.3/intosql-0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da153da1592d16ed27d71e05e236d303fa5c941b6e499f3069e8b8e19c0e19cc"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

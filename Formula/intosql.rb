class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.8.0/intosql-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "f13b472b4de47b294808e18f7c7ab41822de557f9935c286f87151ab04540e96"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.8.0/intosql-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca4d809712cfe0c7c01e4923c299a4e60652cc177f9d336c5ff2e9926fab7951"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.8.0/intosql-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3fc6b26308e6ec80fe27bbbf02b2ca0c94fe099dc096b9273e1a57fd8be0b19"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.8.0/intosql-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94e66a8246ee56b9a03f5533a84ad562a5cae7853a811dc64987823c35f69074"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

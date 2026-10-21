class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.7.0/intosql-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "20297d853a711d9cd8215a01856fc8b6fd74c472ba29b35a6ccd66af862b067d"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.7.0/intosql-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "524d2605c24611e3797a28a889a84bececb5ea982498737c6a57d0bbddface6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.7.0/intosql-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87bfcc110c9f4a99c49f9eaa26f4e1e28ccc424db6c0d0cd1f65eb93310e9ab4"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.7.0/intosql-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "661e9f727036b6d930ac5a3ead26736b86f815f992eb040fc260ecfcbd9152a7"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

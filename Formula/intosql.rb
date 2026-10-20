class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.5.0/intosql-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d332bac0792d2291ef3c95b891056780a9a596a855c93a08b824221f1e2293ec"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.5.0/intosql-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "18ea068584eecccdd1107ff80c577e8468bc9b5905e376341ec2d0af53ece683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.5.0/intosql-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce722f4da1883a6c7453d77e4ee9f4db371c87460271f7755968247eff4d3f16"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.5.0/intosql-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8e7cb60340f4b12bc1a04d084d7a72eb415fd8a2e1e97f29218dfa92966ee14a"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

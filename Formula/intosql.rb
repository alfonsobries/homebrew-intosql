class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.2.0/intosql-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e3f2b91aa0e384905de35e72f1d2ec230de4ccde76dbde7495a1a91f727c60c7"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.2.0/intosql-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c110d3cc0b90bbb882d9d07a3e3d9ab49a1e3368e50a27bb9f9fec00d746f8e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.2.0/intosql-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad08834320ede2665b58ebf209fcc882777baae00bcc953ea904f88dcc5cc0f3"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.2.0/intosql-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5eb7d513568567e1a3832c2558131034f474f96a307d1ecfe7033220eefc46c2"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

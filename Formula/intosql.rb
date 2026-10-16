class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.0/intosql-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "34e7fdfe43929e5014503c3da0bc768e58cff5e255b81b4fa7dd507f3e3dd020"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.0/intosql-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c443272dad12023e64e53ce3df74e199305444372f138af5476f70d9a8c289f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.0/intosql-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d554c02ba7cf6de0fc95b1a7e654174e0731560e3583dfff62372693efc84df1"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.0/intosql-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4158a961fb541556b32978afcfba32e086fd2f50768c2924a0f403e5d9accbb"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

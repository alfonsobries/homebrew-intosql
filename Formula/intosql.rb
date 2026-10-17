class Intosql < Formula
  desc "Spreadsheets, CSV and JSON into SQL your database accepts on the first try"
  homepage "https://intosql.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.2/intosql-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "8125e8e51261f0a71e3d5683aa9f9c8836c26e0baee313a27fe0a34dc717d934"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.2/intosql-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "014d0a410171577255d6e6b1a15f8be67c810b5f1fd144c6ff8020d9fa130745"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.2/intosql-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0593518afef87c937ca5fa3d646db7fe6fd66f33ec9812d507dc5b14fe94f223"
    end
    on_intel do
      url "https://github.com/alfonsobries/intosql-releases/releases/download/cli-v0.1.2/intosql-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "847e6fdd9bc8787353d91ed7f95f582e9de1373a3c132521294bd844fffee002"
    end
  end

  def install
    bin.install "intosql"
  end

  test do
    assert_match "intosql #{version}", shell_output("#{bin}/intosql version")
  end
end

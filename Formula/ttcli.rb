# Generated with JReleaser 1.26.0 at 2026-10-05T17:47:06.583969675Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.13.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.13.0/ttcli-1.13.0-linux-x86_64.zip"
    sha256 "eb5d1401f46ae2c008d740c38bcc50055ddc0b5b4b5bbdb4185229ce95f38136"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.13.0/ttcli-1.13.0-osx-aarch_64.zip"
    sha256 "be9d14720dea3869e8cf27188c1bf23d5c67401471e7b20b69a4439c6dabb988"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.13.0/ttcli-1.13.0-osx-x86_64.zip"
    sha256 "d6374873bf9a0d2bdd874f614f388b04a8172808225c97019d26e9dbb22c7d59"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.13.0", output
  end
end

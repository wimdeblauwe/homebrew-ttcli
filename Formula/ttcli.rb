# Generated with JReleaser 1.15.0 at 2024-12-03T22:41:50.963243615Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.6.0"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.0/ttcli-1.6.0-linux-x86_64.zip"
    sha256 "98467ef2cf9aac26bf404c8a5825ad56919fef9960a5e7e8dbe0f8ec6f5c8942"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.0/ttcli-1.6.0-osx-aarch_64.zip"
    sha256 "0b863243def0f1e049507e241b557a8fc0932eee5e22237340d285bb0e0b6444"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.6.0/ttcli-1.6.0-osx-x86_64.zip"
    sha256 "3cda0bcc1fccfeb2eaa85df028c37b1964a9e44aa7f5d479275328ae40222f7b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.6.0", output
  end
end

# Generated with JReleaser 1.15.0 at 2024-11-19T19:35:29.15626419Z

class Ttcli < Formula
  desc "CLI interface to make working with Thymeleaf projects easier"
  homepage "https://github.com/wimdeblauwe/ttcli"
  version "1.5.2"
  license "Apache License, Version 2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.2/ttcli-1.5.2-linux-x86_64.zip"
    sha256 "4a7c1c9b9a28019c83a02b0c14635993f8b9db87e89167e5af2bf30ae2e1b30a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.2/ttcli-1.5.2-osx-aarch_64.zip"
    sha256 "d44013bbf65a2193b6c74813dedb8f986c60f2e3fd9f7e9b71a3b04db3d0b066"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/wimdeblauwe/ttcli/releases/download/1.5.2/ttcli-1.5.2-osx-x86_64.zip"
    sha256 "3f37ef513c325a2e15260a0f03cd7ae341697843a2ecba66bfdec63e3824f7dc"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ttcli" => "ttcli"
  end

  test do
    output = shell_output("#{bin}/ttcli --version")
    assert_match "1.5.2", output
  end
end

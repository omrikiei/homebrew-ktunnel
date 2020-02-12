# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.1.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.10/ktunnel_1.1.10_Darwin_x86_64.tar.gz"
    sha256 "04b7f454629f7223d8747a44887c1d5bf8bf5b7d53f63484be90832607d2a3ac"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.10/ktunnel_1.1.10_Linux_x86_64.tar.gz"
      sha256 "411dafad5ff088a0d34ffd684a033c508b688d3df1c80231f72cd4483f4d39ee"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.10/ktunnel_1.1.10_Linux_arm64.tar.gz"
        sha256 "6baa1c48946160420d57c1887cf16e9c9ca22f38ae950d6dfec3e9f8430ab246"
      else
      end
    end
  end
  
  head "https://github.com/omrikiei/ktunnel.git"

  def install
    bin.install "ktunnel"
  end

  test do
    system "#{bin}/program version"
  end
end

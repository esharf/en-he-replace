class AwsUrlCopyTool < Formula
  desc "Auto-modify macOS clipboard for AWS URLs"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/v0.0.1/en-he-replace-macos.zip"
  sha256 "207d6d7f5db2d8099c9f88e4271b028903b8520a0327af82128a7b5b8f96ebc5"
  version "0.0.1"

  def install
    bin.install "en-he-replace"
  end
end

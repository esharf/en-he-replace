class AwsUrlCopyTool < Formula
  desc "Auto-modify macOS clipboard for AWS URLs"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/vREPLACE_WITH_VERSION/en-he-replace-macos.zip"
  sha256 "REPLACE_WITH_ZIP_SHA"
  version "REPLACE_WITH_VERSION"

  def install
    bin.install "en-he-replace"
  end

  service do
    run [opt_bin/"en-he-replace"]
    keep_alive true
    log_path var/"log/en-he-replace.log"
    error_log_path var/"log/en-he-replace.err.log"
  end
end

class AwsUrlCopyTool < Formula
  desc "Auto-modify macOS clipboard for AWS URLs"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/v0.0.2/en-he-replace-macos.zip"
  sha256 "0f57073397d7288101cfc8b4502a2a8ec25121e3ce49cdfd3986996e3ee8b0d0"
  version "0.0.2"

  def install
    bin.install "en-he-replace"
    pkgshare.install "en<->he.workflow"
  end

  def caveats
    <<~EOS
      To enable the included Automator service, copy the workflow to your Services folder:

        cp -R "#{pkgshare}/en<->he.workflow" "~/Library/Services/"

      After copying, the service will be available in the Services menu.
    EOS
  end
end

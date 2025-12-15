class AwsUrlCopyTool < Formula
  desc "Auto-modify macOS clipboard for AWS URLs"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/v0.0.4/en-he-replace-macos.zip"
  sha256 "69314efb1e17b712eadd5c81596410fe82ad4b1b7da09dfcd6f664496585b72c"
  version "0.0.4"

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

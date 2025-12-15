class AwsUrlCopyTool < Formula
  desc "Auto-modify macOS clipboard for AWS URLs"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/v0.0.3/en-he-replace-macos.zip"
  sha256 "b8d18f7f58775343f7c246d7fc299a11f6c78af5c636e932ed0524ed3f0c3164"
  version "0.0.3"

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

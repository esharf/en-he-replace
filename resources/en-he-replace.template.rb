class EnHeReplace < Formula
  desc "Replace English text with Hebrew equivalents on macOS"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/vREPLACE_WITH_VERSION/en-he-replace-macos.zip"
  sha256 "REPLACE_WITH_ZIP_SHA"
  version "REPLACE_WITH_VERSION"

  def install
    bin.install "en-he-replace"
    pkgshare.install "resources/en<->he.workflow"
  end

  def caveats
    <<~EOS
      To enable the included Automator service, copy the workflow to your Services folder:

        cp -R "#{pkgshare}/resources/en<->he.workflow" "~/Library/Services/"

      After copying, the service will be available in the Services menu.
    EOS
  end
end

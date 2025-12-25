class EnHeReplace < Formula
  desc "Replace English text with Hebrew equivalents on macOS"
  homepage "https://github.com/esharf/en-he-replace"
  url "https://github.com/esharf/en-he-replace/releases/download/vREPLACE_WITH_VERSION/en-he-replace-macos.zip"
  sha256 "REPLACE_WITH_ZIP_SHA"
  version "REPLACE_WITH_VERSION"

  def install
    bin.install "en-he-replace"
    pkgshare.install "resources"
  end

  def caveats
    <<~EOS
      This formula installs the en-he-replace macOS Service.
      To enable it, copy the workflow to your Services folder:
        cp -R #{pkgshare}/en-he-replace.workflow ~/Library/Services/

      To uninstall completely, run:

        rm -rf ~/Library/Services/en\\<-\\>he.workflow

      Then refresh Services if needed:
        killall -u "$USER" pbs
    EOS
  end
end
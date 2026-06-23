# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "deepink" do
  version "0.2.1"
  sha256 "4c5bdbc4d3a0a79b0bfc8e682909a9aeaaeb4b535ff42390783413954dc1599e"

  url "https://github.com/DeepinkApp/deepink/releases/download/v#{version}/deepink-darwin-arm64-#{version}.zip",
      verified: "github.com/DeepinkApp/deepink/"
  name "deepink"
  desc "Better place for your notes"
  homepage "https://deepink.app/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Deepink.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: []
end

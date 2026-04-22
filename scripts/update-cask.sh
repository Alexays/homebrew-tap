#!/usr/bin/env bash
# Usage: ./scripts/update-cask.sh <version> <sha256>
# Example: ./scripts/update-cask.sh 0.1.0 abc123...
set -euo pipefail

VERSION="${1:?Usage: $0 <version> <sha256>}"
SHA256="${2:?Usage: $0 <version> <sha256>}"

sed -i '' \
  -e "s/version \".*\"/version \"$VERSION\"/" \
  -e "s/sha256 \".*\"/sha256 \"$SHA256\"/" \
  Casks/lilo.rb

echo "Updated Casks/lilo.rb to version $VERSION"

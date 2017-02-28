#!/usr/bin/bash

set -e

flatpak-builder \
    --force-clean \
    --ccache \
    --require-changes \
    --repo=repo \
    --arch=$(flatpak --default-arch) \
    --subject="build of stencyl, $(date)" \
    build \
    com.stencyl.Game.json

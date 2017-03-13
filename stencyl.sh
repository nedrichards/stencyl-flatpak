#!/bin/bash

set -eu

#
# Set working directory on first startup.
#
# Stencyl by default sets up workspace in /app/extra/Stencyl/,
# that is read only, so we get a warning notification.
# This overrides the preferences on start, and sets working directory to $HOME.

PREFS_DIR="$HOME/.StencylWorks"

if [[ ! -f "${PREFS_DIR}/StencylWorks.prefs" ]]; then
	mkdir -p "${PREFS_DIR}"
	cp /app/StencylPrefs/StencylWorks.prefs "${PREFS_DIR}/StencylWorks.prefs"
	echo "global.workdir=${HOME}" >>"${PREFS_DIR}/StencylWorks.prefs"
fi

exec /app/extra/Stencyl

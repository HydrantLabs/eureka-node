#!/bin/sh

log "node: Running node installer"
log "node: Starting SquashFS Edit"
ROOTFS="$(begin_squashfs_edit 'rootfs')"
log "node: SquashFS Mounted"
cp -R "./destdir/*" "${ROOTFS}/"
log "node: SquashFS Finished"
end_squashfs_edit "$ROOTFS"
log "node: Done!"

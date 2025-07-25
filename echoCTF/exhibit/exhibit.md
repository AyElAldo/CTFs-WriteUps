# Exhibit



***Link para obtener default password:*** https://www.tinywebgallery.com/en/configuration.php



## Priv Esc

Dentro de ***vi*** no podemos ejecutar una bash pero si podemos editar desde el editor alguna carpeta que solo pueda ser de acceso con **root**.

#### Payload winner
Dentro de vi:

`:e /etc/shadow`
`:e /root/*`
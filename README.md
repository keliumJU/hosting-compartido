# hosting-compartido

# Hosting compartido con webmin 
En la carpeta **web-admin** se encuentra la interfaz basada en web o ***“webmin”*** *dockerizada*, con el propósito de implementar un **sistema de hosting compartido**, 
dado que esta herramienta permite Configurar cuentas de usuario, Apache, DNS, uso compartido de archivos y mucho más.
Se considera ideal para hospedar webs en un mismo lugar. La información aquí presentada, fue obtenida con los vastos recursos de internet.
A continuación, se muestran los pasos de instalación: 

1.	``` git clone https://github.com/keliumJU/hosting-compartido.git ```

2.	``` cd web-admin ```

3.	``` docker-compose build ```

4.	``` docker-compose up -d ```

Una vez realizado esto se abrirán los puertos **10000 y 80** para webmin y apache2 respectivamente. Para acceder a la interfaz se usa la siguiente url: 

``` https://localhost:10000 ```

se aceptan los riesgos de seguridad, después se accede a la interfaz de webmin con las siguientes credenciales: 

**usuario**: `` root ``

**password**: `` pass ``

Una vez allí se instala el ***módulo de apache2*** en la sección de módulos sin utilizar, se refresca la web, posteriormente se realiza la subida de las páginas web
con **“file manager”** esta herramienta permite subir archivos al servidor, se encuentra en el apartado **“tools”**. 
Por último, se configura el servidor de apache por medio de nombres host, es posible configurar el servicio **DNS Bind** para asignarle un ***alias*** por nombre.
**Se debe mencionar que el único propósito de lo expuesto aquí, es solo para hacer pruebas locales, sin ningún ánimo de lucro**.  

############################
ACCESO AL REGISTRO PRIVADO
############################
La imagen utilizada se encuentra en un docker registry privado. Para bajarnos la imagen es necesario estar conectados a la VPN y ejecutar los siguientes comandos:

docker login --username <USUARIO> --password <CONTRASEÑA> registry.eulen.com
docker pull registry.eulen.com/eulen-tomcat:9-jre11-b31

#############################
VERSIONES DE LAS IMAGENES
#############################
He probado con un proyecto maven exportado a *.war ajeno al proyecto. La versión registry.eulen.com/eulen-tomcat:9-jre11-b31 no funciona, sin embargo, registry.eulen.com/eulen-tomcat:9-jre11-b28 si. El problema está en que b31 no genera el ejecutable en el directorio /usr/local/tomcat/webapps.

#############################
GENERACIÓN DEL FICHERO WAR 
#############################
Ejecutamos desde la terminal "mvn clean package"
En el directorio /target encontraremos el archivo *.war
También podemos: run as > maven build > package

#############################
VERSIÓN DE JAVA EN POM.XML
#############################
Importante que la versión sea la 11 si no, no funciona.



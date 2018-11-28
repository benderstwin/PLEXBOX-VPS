### This configuration uses a wildcard certificate from Cloudflare.  This can be done with a free Cloudflare account. 
###  You will need to request and Edge Cert, then generate the origin cert and private key.
###  Alternatively, You can use Traefik with Lets Encrypt, however that is outside the scope of this document.

PreReqs:

Packages

    -Docker CE
    -Docker-Compose

Expected Variables

    -DOMAINNAME

Expected Directories

    -pathtodockerappsfolder/shared

Expected Files

    -pathtodockerappsfolder/shared/yourcertname.crt  (I name it mydomainname.com.cert)
    -pathtodockerappsfolder/shared/yourcertname.key (I name it mydomainname.com.key)
    -pathtodockerappsfolder/shared/.htaccess     ## You must create this.  Easy way http://www.htaccesstools.com/htpasswd-generator/ ##  This username and password will be used to log in to Traefik.
    -pathtotraefikappfolder/traefik.toml  ##You can start with the one I've generated.  If you include the certs, it should work out of the box.

Expected Networks

    - You will need to create a docker bridge network called traefik_proxy
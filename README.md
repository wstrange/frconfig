


Manage configurations
Run as server side component - with access to fs

   UI <-grpc-web-->   proto pod 
   
   
  
proto pod has
- git, skaffold, upstream / downstream



* Kubernetes Operator - 
* CRD is the config - 

What does the CRD look like?


Directory size / instances
products to deploy
ingress
fqdn to use
git base??


kind: ForgeOps
version: 1.0
spec:
    env:
        fqdn
        cookie_domain
        namespace:
    cts:
    idrepo:
    am: 
    idm:
    
    
    
$TTL 14400  ; Se modifica a 14400 para un TTL de 4 horas (4 horas * 60 minutos * 60 segundos)

@       IN SOA  master6.aburr.io. admin.aburr.io. (  ; SOA record for the aburr.io zone
            2023030801  ; Serial number (you can increment this for updates)
             120       ; Refresh (cambiado a 120 segundos para que los servidores secundarios comprueben cada 2 minutos)
              300       ; Retry (how often secondary servers retry after a failed refresh)
             2419200     ; Expire (how long secondary servers use outdated data)
              86400 )    ; Minimum (how long negative responses are cached)

; Nameservers for the aburr.io zone
@       IN NS  master6.aburr.io.
@       IN NS  slave6.aburr.io.

; Mail exchange record for aburr.io
@       IN MX  10  master6.aburr.io.  ; Mail server with priority 10

; Host records
master6  IN A 192.168.20.10
slave6  IN A   192.168.20.11
profesor IN A   192.168.20.12

; Alias records
dns     IN CNAME master6.aburr.io.
www     IN CNAME master6.aburr.io.
news    IN CNAME master6.aburr.io.
ftp     IN CNAME master6.aburr.io.

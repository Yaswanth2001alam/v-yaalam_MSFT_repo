"Timestamp": 2026-01-14T18:03:09.9905939Z,
"Hostname": ier01.str50,
"Config": set version 22.4X50.17
set groups default_interface_setup interfaces <ae*> aggregated-ether-options link-speed 10g
set groups default_interface_setup interfaces <ae*> aggregated-ether-options lacp active
set groups default_interface_setup interfaces <ae*> aggregated-ether-options lacp periodic fast
set groups default_interface_setup interfaces <ae*> unit <*> family inet filter input netflow
set groups default_interface_setup interfaces <ae*> unit <*> family inet6 filter input ipv6-netflow
set groups default_interface_setup interfaces <ae*> unit <*> family mpls maximum-labels 5
set groups default_interface_setup interfaces <ge-*> unit <*> family inet filter input netflow
set groups default_interface_setup interfaces <ge-*> unit <*> family inet6 filter input ipv6-netflow
set groups default_interface_setup interfaces <ge-*> unit <*> family mpls maximum-labels 5
set groups default_interface_setup interfaces <so-*> unit <*> family inet filter input netflow
set groups default_interface_setup interfaces <so-*> unit <*> family inet6 filter input ipv6-netflow
set groups default_interface_setup interfaces <xe-*> unit <*> family inet filter input netflow
set groups default_interface_setup interfaces <xe-*> unit <*> family inet6 filter input ipv6-netflow
set groups default_interface_setup interfaces <xe-*> unit <*> family mpls maximum-labels 5
set groups default_interface_setup interfaces <et-*> unit <*> family inet filter input netflow
set groups default_interface_setup interfaces <et-*> unit <*> family inet6 filter input ipv6-netflow
set groups default_interface_setup interfaces <et-*> unit <*> family mpls maximum-labels 5
set groups default_isis_setup protocols isis interface <*> level 2 metric 650000
set groups default_isis_setup protocols isis interface <*> lsp-interval 10
set groups default_isis_setup protocols isis interface <*> point-to-point
set groups default_isis_setup protocols isis level <*> authentication-key $PASS$
set groups default_isis_setup protocols isis level <*> authentication-type md5
set groups default_isis_setup protocols isis level <*> prefix-export-limit 5000
set groups default_isis_setup protocols isis spf-options delay 100
set groups default_isis_setup protocols isis lsp-lifetime 65535
set groups BGP-OVERLOAD policy-options policy-statement <*> term overload-knob then color 480
set groups default_mpls_setup protocols mpls label-switched-path <TU.*> ldp-tunneling
set groups default_mpls_setup protocols mpls label-switched-path <TU.*> self-ping-duration 900
set groups default_ospf_setup protocols ospf area <*> authentication-type md5
set groups default_ospf_setup protocols ospf area <*> interface <*> metric 65000
set groups default_ospf_setup protocols ospf area <*> interface <*> authentication md5 1 key $PASS$
set groups default_ospf_setup protocols ospf area "<*[1-9]*>" nssa default-lsa default-metric 6000
set groups default_rsvp_setup protocols rsvp refresh-time 180
set groups default_rsvp_setup protocols rsvp interface <*> authentication-key $PASS$
set groups default_rsvp_setup protocols rsvp interface <*> reliable
set groups default_rsvp_setup protocols rsvp interface <*> hello-interval 3
set groups default_rsvp_setup protocols rsvp interface <*> subscription 85
set groups default_rsvp_setup protocols rsvp interface <*> link-protection optimize-timer 900
set groups default_rsvp_setup protocols rsvp interface <*> link-protection admin-group exclude non-te
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> ldp-tunneling
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> admin-group include-any core
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> admin-group include-any favored
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> self-ping-duration 900
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> adaptive
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> auto-bandwidth adjust-interval 900
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> auto-bandwidth adjust-threshold 10
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> auto-bandwidth maximum-bandwidth 2g
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> primary standard_path priority 3 3
set groups default_lsp_setup protocols mpls label-switched-path <TU.*> primary standard_path optimize-timer 900
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> admin-group include-any core
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> admin-group include-any transpacific
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> admin-group include-any transatlantic
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> admin-group exclude unfavored
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> link-protection
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> adaptive
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> auto-bandwidth adjust-interval 900
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> auto-bandwidth adjust-threshold 10
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> auto-bandwidth minimum-bandwidth 1m
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> auto-bandwidth maximum-bandwidth 2g
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> primary standard_path priority 3 3
set groups default_lsp_setup_L2 protocols mpls label-switched-path <L2.*> primary standard_path optimize-timer 900
set groups default_lsp_setup_L2 protocols mpls label-switched-path <TU.*> no-self-ping
set groups isis-passive-interfaces policy-options policy-statement <*> term <*> from protocol direct
set groups isis-passive-interfaces policy-options policy-statement <*> term <*> from interface lo0.0
set groups default_srlg_cost routing-options srlg <*> srlg-cost 65000
set groups default_rpki_cache_server_setup routing-options validation group RPKI-RTR session <*> refresh-time 1500
set groups default_rpki_cache_server_setup routing-options validation group RPKI-RTR session <*> hold-time 3000
set groups default_rpki_cache_server_setup routing-options validation group RPKI-RTR session <*> record-lifetime 7200
set groups default_rpki_cache_server_setup routing-options validation group RPKI-RTR session <*> port 8323
set groups default_ldp_setup protocols ldp session-group <*> authentication-key $PASS$
set groups default_mgmt_vrf routing-instances mgmt_junos routing-options static route 0.0.0.0/0 next-hop 10.3.151.1
set groups default_mgmt_vrf routing-instances mgmt_junos description "Management VRF"
set groups default_tacserver_setup system tacplus-server <*> port 49
set groups default_tacserver_setup system tacplus-server <*> secret $PASS$
set groups default_tacserver_setup system tacplus-server <*> timeout 10
set groups default_tacserver_setup system tacplus-server <*> single-connection
set groups default_tacaccounting_setup system accounting destination tacplus server <*> port 49
set groups default_tacaccounting_setup system accounting destination tacplus server <*> secret $PASS$
set groups default_tacaccounting_setup system accounting destination tacplus server <*> timeout 5
set groups default_tacaccounting_setup system accounting destination tacplus server <*> single-connection
set system host-name ier01.str50
set system root-authentication encrypted-password $PASS$
set system scripts op file juniper_md5_check.py
set system scripts op allow-url-for-python
set system scripts language python3
set system login class neteng idle-timeout 10
set system login class neteng permissions all
set system login class telemetry permissions configure
set system login class telemetry permissions view
set system login class telemetry allow-configuration-regexps "services analytics"
set system login class tier1-ro idle-timeout 10
set system login class tier1-ro permissions network
set system login class tier1-ro permissions trace
set system login class tier1-ro permissions view
set system login class tier1-ro permissions view-configuration
set system login class tier1-rw idle-timeout 10
set system login class tier1-rw permissions clear
set system login class tier1-rw permissions network
set system login class tier1-rw permissions reset
set system login class tier1-rw permissions trace
set system login class tier1-rw permissions view
set system login class tools idle-timeout 10
set system login class tools permissions maintenance
set system login class tools permissions network
set system login class tools permissions secret
set system login class tools permissions trace
set system login class tools permissions view
set system login class tools permissions view-configuration
set system login class tools allow-configuration-regexps event-options.*
set system login user admin uid 100
set system login user admin class super-user
set system login user admin authentication encrypted-password $PASS$
set system login user failback uid 2001
set system login user failback class neteng
set system login user neteng uid 2004
set system login user neteng class neteng
set system login user remote uid 106
set system login user remote class super-user
set system login user telemetry uid 2005
set system login user telemetry class telemetry
set system login user tier1-ro uid 2006
set system login user tier1-ro class tier1-ro
set system login user tier1-rw uid 2007
set system login user tier1-rw class tier1-rw
set system login user tools uid 2008
set system login user tools class tools
set system login user wan_auto_test_ro uid 2003
set system login user wan_auto_test_ro class read-only
set system login message "\n***************************************************************************\n*                                                                         *\n*         This is the Microsoft Azure lab router ier01.str50.         *\n*               This equipment is the property of Microsoft.              *\n*  Unauthorized access is strictly prohibited.  Any unauthorized access   *\n*  or tampering with this equipment will result in civil and/or criminal  *\n*                           prosecution.                                  *  \n*                                                                         *\n*            This router is currently in use for core testing.            *\n* For any inquiry for the use of this router, contact gnstl@microsoft.com *\n*                                                                         *\n***************************************************************************\n\n\n            \n            \n            \n            \n            \n            \n            "
set system services ssh root-login allow
set system services ssh protocol-version v2
set system services ssh max-sessions-per-connection 64
set system services ssh ciphers aes256-cbc
set system services ssh ciphers aes256-ctr
set system services ssh ciphers "aes256-gcm@openssh.com"
set system services ssh macs hmac-sha2-256
set system services ssh macs hmac-sha2-512
set system services ssh key-exchange ecdh-sha2-nistp256
set system services ssh key-exchange ecdh-sha2-nistp384
set system services ssh key-exchange ecdh-sha2-nistp521
set system services ssh hostkey-algorithm no-ssh-dss
set system services ssh hostkey-algorithm ssh-rsa
set system services ssh hostkey-algorithm ssh-ecdsa
set system services ssh hostkey-algorithm no-ssh-ed25519
set system services ssh connection-limit 20
set system services ssh rate-limit 20
set system services netconf ssh
set system domain-name str.msn.net
set system domain-search str.msn.net
set system time-zone UTC
set system authentication-order tacplus
set system authentication-order password
set system ports console log-out-on-disconnect
set system ports console type vt100
set system name-server 10.3.145.98
set system name-server 10.3.145.99
set system tacplus-server 10.241.221.33 apply-groups default_tacserver_setup
set system tacplus-server 10.241.221.33 source-address 10.3.151.85
set system tacplus-server 10.241.221.44 apply-groups default_tacserver_setup
set system tacplus-server 10.241.221.44 source-address 10.3.151.85
set system tacplus-server 10.241.221.45 apply-groups default_tacserver_setup
set system tacplus-server 10.241.221.45 source-address 10.3.151.85
set system accounting events interactive-commands
set system accounting destination tacplus server 10.241.221.33 apply-groups default_tacaccounting_setup
set system accounting destination tacplus server 10.241.221.33 source-address 10.3.151.85
set system accounting destination tacplus server 10.241.221.44 apply-groups default_tacaccounting_setup
set system accounting destination tacplus server 10.241.221.44 source-address 10.3.151.85
set system accounting destination tacplus server 10.241.221.45 apply-groups default_tacaccounting_setup
set system accounting destination tacplus server 10.241.221.45 source-address 10.3.151.85
set system syslog archive size 10m
set system syslog archive files 10
set system syslog user * any emergency
set system syslog user testuser any alert
set system syslog host 10.181.114.0 any notice
set system syslog host 10.181.114.0 daemon info
set system syslog host 10.181.114.0 interactive-commands any
set system syslog host 10.181.114.0 match "!(.*IF_MSG_GE_GET_INFO.*)"
set system syslog host 10.181.114.0 facility-override local1
set system syslog host 10.181.114.0 explicit-priority
set system syslog host 10.20.6.16 any notice
set system syslog host 10.20.6.16 daemon info
set system syslog host 10.20.6.16 match "!(.*IF_MSG_GE_GET_INFO.*)"
set system syslog host 10.20.6.16 facility-override local1
set system syslog host 10.20.6.16 explicit-priority
set system syslog file changes.log change-log any
set system syslog file changes.log archive size 10m
set system syslog file changes.log archive files 10
set system syslog file cli.log interactive-commands any
set system syslog file cli.log archive size 10m
set system syslog file cli.log archive files 10
set system syslog file default-log-messages any info
set system syslog file default-log-messages match "(FRU Offline)|(FRU Online)|(FRU insertion)|(FRU power)|(FRU removal)|(commit complete)|(copying configuration to juniper.save)|(license add)|(license delete)|(link UP)|(package -X delete)|(package -X update)|(plugged in)|(requested 'commit synchronize' operation)|(requested 'commit' operation)|(unplugged)|Transferred|ifAdminStatus|transfer-file|transitioned|CFMD_CCM_DEFECT| LFMD_3AH | RPD_MPLS_PATH_BFD|(Master Unchanged, Members Changed)|(Master Changed, Members Changed)|(Master Detected, Members Changed)|(vc add)|(vc delete)|(Master detected)|(Master changed)|(Backup detected)|(Backup changed)|(interface vcp-)|(AIS_DATA_AVAILABLE)"
set system syslog file default-log-messages structured-data
set system syslog file disable-ifd.log external notice
set system syslog file disable-ifd.log match "(disable_ifd_mq_xm_ea_mpcs)"
set system syslog file disable-ifd.log archive size 1m
set system syslog file disable-ifd.log archive files 20
set system syslog file firewall.log firewall info
set system syslog file firewall.log archive size 10m
set system syslog file firewall.log archive files 10
set system syslog file interactive-commands interactive-commands any
set system syslog file messages any notice
set system syslog file messages authorization info
set system syslog file messages daemon info
set system syslog file messages firewall none
set system syslog file messages match "!(.*IF_MSG_GE_GET_INFO.*)"
set system syslog file messages archive size 10m
set system syslog file messages archive files 10
set system syslog file pr1331299.log pfe any
set system syslog file pr1331299.log match "Fabric:vpfe table set for vpfe"
set system syslog time-format millisecond
set system syslog source-address 10.3.151.85
set system syslog shell
set system extensions providers juniper license-type juniper deployment-scope private
set system extensions extension-service application file agentjunos arguments -insecureHTTPModeEnable=false
set system rng hmac-drbg
set system processes dhcp-service traceoptions file dhcp_logfile
set system processes dhcp-service traceoptions file size 10m
set system processes dhcp-service traceoptions level all
set system processes dhcp-service traceoptions flag all
set system ddos-protection protocols ttl aggregate bandwidth 2000
set system ddos-protection protocols ttl aggregate burst 2048
set system ddos-protection protocols reject aggregate bandwidth 200
set system ddos-protection protocols reject aggregate burst 120
set system ntp server 10.20.8.129
set system ntp server 10.20.8.130
set logical-systems EXR02_AKL30 interfaces et-0/0/31 unit 0
set logical-systems EXR02_AKL30 interfaces lo0 unit 1
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE advertise-inactive
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE peer-as 8075
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE multipath
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE neighbor 10.22.176.204 description DUMMY_IER
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE neighbor 10.22.176.206 description ier02.akl30
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE_V6 advertise-inactive
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE_V6 peer-as 8075
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE_V6 multipath
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE_V6 neighbor 2603:10e1:101:a9::5 description DUMMY_IER
set logical-systems EXR02_AKL30 protocols bgp group GNS_CORE_V6 neighbor 2603:10e1:101:a9::9 description ier02.akl30
set logical-systems EXR02_AKL30 protocols bgp export EXR_TO_IER
set logical-systems EXR02_AKL30 policy-options policy-statement EXR_TO_IER term 1 from protocol direct
set logical-systems EXR02_AKL30 policy-options policy-statement EXR_TO_IER term 1 then accept
set logical-systems EXR02_AKL30 policy-options policy-statement EXR_TO_IER term 2 then reject
set logical-systems EXR02_AKL30 routing-options autonomous-system 12076
set chassis maximum-ecmp 64
set chassis aggregated-devices ethernet device-count 100
set chassis aggregated-devices maximum-links 64
set chassis fabric redundancy-mode increased-bandwidth
set chassis fpc 0 pic 0 port 1 speed 100g
set chassis fpc 0 pic 0 port 5 speed 100g
set chassis fpc 0 pic 0 port 6 speed 10g
set chassis fpc 0 pic 0 port 11 speed 100g
set chassis fpc 0 pic 0 port 13 speed 100g
set chassis fpc 0 pic 0 port 17 speed 100g
set chassis fpc 0 pic 0 port 19 speed 100g
set chassis fpc 0 pic 0 port 23 speed 100g
set chassis fpc 0 pic 0 port 24 speed 40g
set chassis fpc 0 pic 0 port 25 speed 100g
set chassis fpc 0 pic 0 port 29 speed 100g
set chassis fpc 0 pic 0 port 31 speed 100g
set chassis fpc 0 pic 0 port 35 speed 100g
set chassis fpc 0 pic 0 port 37 speed 100g
set chassis fpc 0 pic 0 port 41 speed 100g
set chassis fpc 0 pic 0 port 43 speed 100g
set chassis fpc 0 pic 0 port 47 speed 100g
set chassis fpc 0 pic 0 port 49 speed 100g
set chassis fpc 0 pic 0 port 53 speed 100g
set chassis fpc 0 pic 0 port 55 speed 100g
set chassis fpc 0 pic 0 port 59 speed 100g
set chassis fpc 0 pic 0 port 61 speed 100g
set chassis fpc 0 pic 0 port 65 speed 100g
set chassis fpc 0 pic 0 port 67 speed 100g
set chassis fpc 0 pic 0 port 68 speed 100g
set chassis fpc 0 pic 0 port 70 speed 100g
set chassis fpc 0 pic 0 port 71 speed 100g
set chassis fpc 0 sampling-instance ipfix_instance
set chassis fpc 0 inline-services flow-table-size ipv4-flow-table-size 10
set chassis fpc 0 inline-services flow-table-size ipv6-flow-table-size 5
set chassis alarm management-ethernet link-down ignore
set services flow-monitoring version-ipfix template ipv4_template flow-active-timeout 60
set services flow-monitoring version-ipfix template ipv4_template flow-inactive-timeout 15
set services flow-monitoring version-ipfix template ipv4_template nexthop-learning enable
set services flow-monitoring version-ipfix template ipv4_template template-refresh-rate packets 1000
set services flow-monitoring version-ipfix template ipv4_template template-refresh-rate seconds 10
set services flow-monitoring version-ipfix template ipv4_template option-refresh-rate packets 1000
set services flow-monitoring version-ipfix template ipv4_template option-refresh-rate seconds 10
set services flow-monitoring version-ipfix template ipv4_template ipv4-template
set services flow-monitoring version-ipfix template ipv6_template flow-active-timeout 60
set services flow-monitoring version-ipfix template ipv6_template flow-inactive-timeout 15
set services flow-monitoring version-ipfix template ipv6_template nexthop-learning enable
set services flow-monitoring version-ipfix template ipv6_template template-refresh-rate packets 1000
set services flow-monitoring version-ipfix template ipv6_template template-refresh-rate seconds 10
set services flow-monitoring version-ipfix template ipv6_template option-refresh-rate packets 1000
set services flow-monitoring version-ipfix template ipv6_template option-refresh-rate seconds 10
set services flow-monitoring version-ipfix template ipv6_template ipv6-template
set interfaces apply-groups default_interface_setup
set interfaces ge-0/0/0 apply-groups-except default_interface_setup
set interfaces ge-0/0/0 apply-groups-except default_isis_setup
set interfaces ge-0/0/0 apply-groups-except BGP-OVERLOAD
set interfaces ge-0/0/0 apply-groups-except default_mpls_setup
set interfaces ge-0/0/0 apply-groups-except default_ospf_setup
set interfaces ge-0/0/0 apply-groups-except default_rsvp_setup
set interfaces ge-0/0/0 apply-groups-except default_lsp_setup
set interfaces ge-0/0/0 apply-groups-except default_lsp_setup_L2
set interfaces ge-0/0/0 apply-groups-except isis-passive-interfaces
set interfaces ge-0/0/0 apply-groups-except default_srlg_cost
set interfaces ge-0/0/0 apply-groups-except default_rpki_cache_server_setup
set interfaces ge-0/0/0 apply-groups-except default_ldp_setup
set interfaces ge-0/0/0 apply-groups-except default_mgmt_vrf
set interfaces ge-0/0/0 apply-groups-except default_tacserver_setup
set interfaces ge-0/0/0 apply-groups-except default_tacaccounting_setup
set interfaces et-0/0/1 description "rwa01.str05 et-0/0/6"
set interfaces et-0/0/1 gigether-options 802.3ad ae48
set interfaces et-0/0/5 description "rwa01.str05 et-0/0/7"
set interfaces et-0/0/5 enable
set interfaces et-0/0/5 gigether-options 802.3ad ae48
set interfaces et-0/0/7:0 description INFRA:IX:str-3048TP-C11-U32:Eth1/50::
set interfaces et-0/0/7:0 mtu 9192
set interfaces et-0/0/7:0 unit 0 family inet address 111.111.111.112/31
set interfaces et-0/0/11 description rwa02.str15:Et3/31/1:po248
set interfaces et-0/0/11 gigether-options 802.3ad ae248
set interfaces et-0/0/13 description "str-96c-2a et-0/0/5"
set interfaces et-0/0/13 gigether-options 802.3ad ae49
set interfaces et-0/0/23 description IXIA.24LC9P1::wan_auto_test::RESERVED
set interfaces et-0/0/23 unit 0 family inet no-redirects
set interfaces et-0/0/23 unit 0 family inet address 61.100.0.26/31
set interfaces et-0/0/23 unit 0 family inet6 address 2a61:100:26::1/126
set interfaces et-0/0/24 enable
set interfaces et-0/0/24 unit 0 family inet address 10.110.0.1/30
set interfaces et-0/0/29 description "ier01.str50 et-0/0/31 loop"
set interfaces et-0/0/29 mtu 8192
set interfaces et-0/0/29 unit 0 family inet address 10.22.176.206/31
set interfaces et-0/0/29 unit 0 family inet6 address 2603:10e1:101:a9::9/126
set interfaces et-0/0/31 description "ier01.str50:et-0/0/29 loop LSYS EXR02_AKL30"
set interfaces et-0/0/31 mtu 8192
set interfaces et-0/0/31 unit 0 family inet filter input 8075-EDGEACL-IN-V4
set interfaces et-0/0/31 unit 0 family inet filter output 8075-EDGEACL-OUT-V4
set interfaces et-0/0/31 unit 0 family inet address 10.22.176.207/31
set interfaces et-0/0/31 unit 0 family inet6 address 2603:10e1:101:a9::a/126
set interfaces et-0/0/35 description INFRA:IX:rwa01.str04:et-0/0/11:ae249
set interfaces et-0/0/35 gigether-options 802.3ad ae249
set interfaces et-0/0/35 gigether-options fec fec91
set interfaces et-0/0/41 description "ear02.str06 et-0/0/25"
set interfaces et-0/0/41 gigether-options 802.3ad ae86
set interfaces et-0/0/43 description EDGE:IXIA
set interfaces et-0/0/43 unit 0 description "EDGE:IXIA 10.3.145.24 LC5P4"
set interfaces et-0/0/43 unit 0 family inet no-redirects
set interfaces et-0/0/43 unit 0 family inet address 172.21.150.3/31
set interfaces et-0/0/43 unit 0 family inet6 address 2619:10b0:a07:8102::1/126
set interfaces et-0/0/47 description INFRA:IX:rwa01.str04:et-0/0/12:ae249
set interfaces et-0/0/47 gigether-options 802.3ad ae249
set interfaces et-0/0/49 disable
set interfaces et-0/0/61 description "rwa01.str15 HundredGigE0/0/0/9"
set interfaces et-0/0/61 damping enable
set interfaces et-0/0/61 gigether-options 802.3ad ae247
set interfaces et-0/0/65 description "rwa02.str15 Ethernet3/32/1"
set interfaces et-0/0/65 gigether-options 802.3ad ae248
set interfaces et-0/0/67 description "rwa01.str15 HundredGigE0/0/0/12"
set interfaces et-0/0/67 gigether-options 802.3ad ae247
set interfaces et-0/0/71 description IXIA.24LC5P2::wan_auto_test::RESERVED
set interfaces et-0/0/71 mtu 9192
set interfaces et-0/0/71 unit 0 family inet no-redirects
set interfaces et-0/0/71 unit 0 family inet address 61.100.0.6/31
set interfaces et-0/0/71 unit 0 family inet6 address 2a61:100:16::1/126
set interfaces ae1820 disable
set interfaces ae2031 description icr03.str05::et-1/0/7::ae2031
set interfaces ae2031 mtu 9192
set interfaces ae2031 aggregated-ether-options apply-groups-except default_interface_setup
set interfaces ae2031 aggregated-ether-options link-speed 100g
set interfaces ae2031 aggregated-ether-options lacp active
set interfaces ae2031 unit 0 description icr03.str05::et-1/0/7::ae2031
set interfaces ae2031 unit 0 family inet no-redirects
set interfaces ae2031 unit 0 family inet address 172.20.31.1/31
set interfaces ae2031 unit 0 family iso
set interfaces ae2031 unit 0 family inet6 address 2a01:111:e210:0:172:20:31:2/126
set interfaces ae2031 unit 0 family mpls mtu 9158
set interfaces ae2031 unit 0 family mpls maximum-labels 5
set interfaces ae247 description INFRA:IX:rwa01.str15::BE247
set interfaces ae247 mtu 9192
set interfaces ae247 aggregated-ether-options apply-groups-except default_interface_setup
set interfaces ae247 aggregated-ether-options link-speed 100g
set interfaces ae247 aggregated-ether-options lacp active
set interfaces ae247 unit 0 description INFRA:IX:rwa01.str15::BE247
set interfaces ae247 unit 0 family inet no-redirects
set interfaces ae247 unit 0 family inet address 172.20.247.0/31
set interfaces ae247 unit 0 family iso
set interfaces ae247 unit 0 family inet6 address 2a01:111:e210:0:172:20:247:1/126
set interfaces ae247 unit 0 family mpls mtu 9158
set interfaces ae247 unit 0 family mpls maximum-labels 5
set interfaces ae248 description INFRA:IX:INFRA:IX:rwa02.str15:po248
set interfaces ae248 mtu 9192
set interfaces ae248 aggregated-ether-options apply-groups-except default_interface_setup
set interfaces ae248 aggregated-ether-options link-speed 100g
set interfaces ae248 aggregated-ether-options lacp active
set interfaces ae248 unit 0 description INFRA:IX:INFRA:IX:rwa02.str15:po248
set interfaces ae248 unit 0 family inet no-redirects
set interfaces ae248 unit 0 family inet address 172.20.248.0/31
set interfaces ae248 unit 0 family iso
set interfaces ae248 unit 0 family inet6 address 2a01:111:e210:0:172:20:248:1/126
set interfaces ae248 unit 0 family mpls mtu 9158
set interfaces ae248 unit 0 family mpls maximum-labels 5
set interfaces ae249 description INFRA:IX:rwa01.str04:ae249:
set interfaces ae249 mtu 9192
set interfaces ae249 aggregated-ether-options flow-control
set interfaces ae249 aggregated-ether-options link-speed 100g
set interfaces ae249 unit 0 description INFRA:IX:rwa01.str04:ae249.0:
set interfaces ae249 unit 0 family inet no-redirects
set interfaces ae249 unit 0 family inet address 172.20.249.0/31
set interfaces ae249 unit 0 family iso
set interfaces ae249 unit 0 family inet6 address 2a01:111:e210:0:172:20:249:1/126
set interfaces ae249 unit 0 family mpls mtu 9158
set interfaces ae48 description "EDGE:rwa01.str05 ae48:AS12345"
set interfaces ae48 mtu 9192
set interfaces ae48 aggregated-ether-options link-speed 100g
set interfaces ae48 aggregated-ether-options lacp active
set interfaces ae48 aggregated-ether-options lacp periodic fast
set interfaces ae48 unit 0 description EDGE:PeeringITEe2e:AS12345
set interfaces ae48 unit 0 bandwidth 1k
set interfaces ae48 unit 0 family inet no-redirects
set interfaces ae48 unit 0 family inet address 172.20.48.0/31
set interfaces ae48 unit 0 family inet address 172.20.48.2/31
set interfaces ae48 unit 0 family iso
set interfaces ae48 unit 0 family inet6 address 2a01:111:e210:0:172:20:48:1/126
set interfaces ae48 unit 0 family mpls mtu 9158
set interfaces ae48 unit 0 family mpls maximum-labels 5
set interfaces ae49 description "icr02.str05 ae49"
set interfaces ae49 mtu 9192
set interfaces ae49 aggregated-ether-options link-speed 100g
set interfaces ae49 aggregated-ether-options lacp active
set interfaces ae49 aggregated-ether-options lacp periodic fast
set interfaces ae49 unit 0 description str-96c-2a:ae49:172.20.49.0/31:2a01:111:e210:0:172:20:49:1/126:::
set interfaces ae49 unit 0 family inet no-redirects
set interfaces ae49 unit 0 family inet address 172.20.49.0/31
set interfaces ae49 unit 0 family iso
set interfaces ae49 unit 0 family inet6 address 2a01:111:e210:0:172:20:49:1/126
set interfaces ae49 unit 0 family mpls mtu 9158
set interfaces ae49 unit 0 family mpls maximum-labels 5
set interfaces ae85 mtu 9192
set interfaces ae85 aggregated-ether-options link-speed 100g
set interfaces ae85 aggregated-ether-options lacp active
set interfaces ae85 aggregated-ether-options lacp periodic fast
set interfaces ae85 unit 0 description ear01.str06:ae85:172.20.85.0/31:2a01:111:e210:0:172:20:85:1/126:::
set interfaces ae85 unit 0 family inet no-redirects
set interfaces ae85 unit 0 family inet address 172.20.85.0/31
set interfaces ae85 unit 0 family iso
set interfaces ae85 unit 0 family inet6 address 2a01:111:e210:0:172:20:85:1/126
set interfaces ae85 unit 0 family mpls mtu 9158
set interfaces ae85 unit 0 family mpls maximum-labels 5
set interfaces ae86 mtu 9192
set interfaces ae86 aggregated-ether-options link-speed 100g
set interfaces ae86 aggregated-ether-options lacp active
set interfaces ae86 aggregated-ether-options lacp periodic fast
set interfaces ae86 unit 0 description ear02.str06:ae86:172.20.86.0/31:2a01:111:e210:0:172:20:86:1/126:::
set interfaces ae86 unit 0 family inet no-redirects
set interfaces ae86 unit 0 family inet address 172.20.86.0/31
set interfaces ae86 unit 0 family iso
set interfaces ae86 unit 0 family inet6 address 2a01:111:e210:0:172:20:86:1/126
set interfaces ae86 unit 0 family mpls mtu 9158
set interfaces ae86 unit 0 family mpls maximum-labels 5
deactivate interfaces ae86
set interfaces em0 unit 0 description "MGMT Interface"
set interfaces em0 unit 0 family inet address 10.3.151.85/24 master-only
set interfaces em2 unit 0 family inet
set interfaces lo0 description MGMT:10.3.159.85/32:ier01.str50:lo0
set interfaces lo0 unit 0 description MGMT:10.3.159.85/32:ier01.str50:lo0
set interfaces lo0 unit 0 family inet no-redirects
set interfaces lo0 unit 0 family inet address 10.3.159.85/32 primary
set interfaces lo0 unit 0 family inet address 10.3.159.85/32 preferred
set interfaces lo0 unit 0 family inet address 10.3.159.87/32
set interfaces lo0 unit 0 family inet address 20.157.72.72/24
set interfaces lo0 unit 0 family inet address 20.33.29.29/24
set interfaces lo0 unit 0 family inet address 20.47.110.110/24
set interfaces lo0 unit 0 family iso address 39.752f.0100.0014.0000.b000.4062.0100.0315.9085.00
set interfaces lo0 unit 0 family inet6 address 2a01:111:e210:1:10:3:159:85/128 primary
set interfaces lo0 unit 0 family inet6 address 2a01:111:e210:1:10:3:159:85/128 preferred
set interfaces lo0 unit 0 family inet6 address 2a01:111:e210:1:10:3:159:87/128
set interfaces lo0 unit 1 family inet address 10.2.146.41/32
set interfaces lo0 unit 1 family inet6 address 2603:10e1:101:a9::1/128
set snmp community $PASS$ authorization read-write
set snmp community $PASS$ clients 10.3.144.0/20
set snmp community $PASS$ clients 10.3.157.12/32
set snmp community $PASS$ clients 10.3.157.203/32
set snmp community $PASS$ clients 10.3.157.205/32
set snmp community $PASS$ clients 10.3.157.220/32
set snmp community $PASS$ clients 100.0.0.0/8
set snmp community $PASS$ clients 10.18.78.0/24
set snmp community $PASS$ clients 10.0.0.0/8
set snmp community $PASS$ clients 25.0.0.0/8
set snmp community $PASS$ authorization read-only
set snmp community $PASS$ clients 100.0.0.0/8
set snmp community $PASS$ clients 10.20.0.0/19
set snmp community $PASS$ clients 25.65.16.0/20
set snmp community $PASS$ clients 10.0.0.0/8
set snmp community $PASS$ clients 25.0.0.0/8
set snmp community $PASS$ clients 10.3.149.0/24
set snmp community $PASS$ clients 10.154.232.0/21
set snmp community $PASS$ clients 25.68.44.6/32
set snmp community $PASS$ clients 10.13.157.16/21
set snmp community $PASS$ clients 10.20.0.0/16
set snmp community $PASS$ authorization read-only
set snmp community $PASS$ clients 100.0.0.0/8
set snmp community $PASS$ clients 10.0.0.0/8
set snmp community $PASS$ clients 25.65.16.0/20
set snmp community $PASS$ clients 25.66.241.167/32
set snmp community $PASS$ clients 25.0.0.0/8
set snmp community $PASS$ clients 100.0.0.0/8
set snmp trap-options source-address 10.3.147.222
set snmp trap-group jnp-traps version v2
set snmp trap-group jnp-traps categories authentication
set snmp trap-group jnp-traps categories chassis
set snmp trap-group jnp-traps categories link
set snmp trap-group jnp-traps categories routing
set snmp trap-group jnp-traps categories startup
set snmp trap-group jnp-traps categories services
set snmp trap-group jnp-traps categories sonet-alarms
set snmp trap-group jnp-traps targets 10.3.157.12
set snmp trap-group jnp-traps targets 10.20.6.16
set forwarding-options sampling instance ipfix_instance input rate 4090
set forwarding-options sampling instance ipfix_instance family inet output flow-server 10.2.1.37 port 4739
set forwarding-options sampling instance ipfix_instance family inet output flow-server 10.2.1.37 version-ipfix template ipv4_template
set forwarding-options sampling instance ipfix_instance family inet output inline-jflow source-address 10.3.159.85
set forwarding-options sampling instance ipfix_instance family inet output inline-jflow flow-export-rate 100
set forwarding-options sampling instance ipfix_instance family inet6 output flow-server 10.2.1.37 port 4739
set forwarding-options sampling instance ipfix_instance family inet6 output flow-server 10.2.1.37 version-ipfix template ipv6_template
set forwarding-options sampling instance ipfix_instance family inet6 output inline-jflow source-address 10.3.159.85
set forwarding-options sampling instance ipfix_instance family inet6 output inline-jflow flow-export-rate 100
set forwarding-options hash-key family inet layer-3
set forwarding-options hash-key family inet layer-4
set forwarding-options hash-key family mpls label-1
set forwarding-options hash-key family mpls label-2
set forwarding-options hash-key family mpls payload ip
set forwarding-options enhanced-hash-key family inet incoming-interface-index
set forwarding-options family inet6 route-accounting
set event-options max-policies 20
set event-options generate-event EVERY-5-MIN time-interval 300
set event-options generate-event EVERY-10-MINS time-interval 600
set event-options generate-event EVERY-1-MIN time-interval 60
set event-options policy msft_auto-overload events rpd_start
set event-options policy msft_auto-overload within 15 trigger on
set event-options policy msft_auto-overload within 15 trigger 1
set event-options policy msft_auto-overload then change-configuration retry count 3
set event-options policy msft_auto-overload then change-configuration retry interval 15
set event-options policy msft_auto-overload then change-configuration commands "set groups BGP-OVERLOAD policy-options policy-statement <*> term overload-knob then color 10293"
set event-options policy msft_auto-overload then change-configuration commands "set groups default_ospf_setup protocols ospf area <*[1-9]*> nssa default-lsa default-metric 65000"
set event-options policy msft_auto-overload then change-configuration commands "set policy-options policy-statement SET-OVERLOAD-ASPATH term implement-overload then as-path-prepend \"8075 8075 8075\""
set event-options policy msft_auto-overload then change-configuration commands "set policy-options policy-statement SET-OVERLOAD-LOCAL-PREF term implement-overload then local-preference 10"
set event-options policy msft_auto-overload then change-configuration commands "delete policy-options policy-statement SET-OVERLOAD-REJECT term implement-overload then next policy"
set event-options policy msft_auto-overload then change-configuration commands "set policy-options policy-statement SET-OVERLOAD-REJECT term implement-overload then reject"
set event-options policy msft_auto-overload then change-configuration commands "set policy-options policy-statement OVERLOAD-SCRIPT-FLAG then reject"
set event-options policy msft_auto-overload then change-configuration commit-options log "AOL00: BGP-OVERLOAD is set to 10293 by the event-script."
set event-options policy jnpr_custom_oids events EVERY-5-MIN
set event-options policy jnpr_custom_oids then event-script jnpr_custom_snmp_ver24.py
set event-options policy jnpr_custom_oids then event-script jnpr_custom_snmp_ver23.py
set event-options event-script optional
set event-options event-script traceoptions file eventscript.log
set event-options event-script traceoptions file size 10m
set event-options event-script traceoptions file files 10
set event-options event-script traceoptions file world-readable
set event-options event-script traceoptions flag events
set event-options event-script traceoptions flag output
set event-options event-script file msft_auto-unoverload-v3.slax
set policy-options prefix-list ANYCAST-IP-SPACE 10.20.37.176/28
set policy-options prefix-list ANYCAST-IP-SPACE 10.64.5.5/32
set policy-options prefix-list ANYCAST-IP-SPACE 10.64.6.6/32
set policy-options prefix-list ANYCAST-IP-SPACE 10.64.6.7/32
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.0.0/16
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.1.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.2.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.10.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.24.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.44.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.58.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.160.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.188.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 13.107.240.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 40.90.4.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 64.4.48.0/23
set policy-options prefix-list ANYCAST-IP-SPACE 65.55.44.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 65.55.60.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 65.55.117.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 70.37.135.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 131.253.12.0/22
set policy-options prefix-list ANYCAST-IP-SPACE 191.234.4.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 191.234.5.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 191.234.6.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 191.234.7.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 191.234.64.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 193.221.113.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 204.79.195.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 204.79.252.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 207.46.98.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 207.68.174.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 208.76.45.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 208.76.46.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 208.84.0.0/24
set policy-options prefix-list ANYCAST-IP-SPACE 208.84.2.0/24
set policy-options prefix-list ANYCAST-PREFIX-WU 13.107.4.0/24
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.30.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.32.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.36.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.37.192.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.38.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.50.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.57.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.66.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.68.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.69.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.70.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.72.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.80.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.81.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.82.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.83.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.84.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.85.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.86.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.87.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.88.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.89.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.90.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.91.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.92.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.93.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.94.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.95.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.107.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.110.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.116.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.120.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.124.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.124.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.125.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.126.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.128.0.0/13
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.136.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.138.0.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.138.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.139.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.144.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.145.0.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.145.16.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.145.32.0/19
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.145.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.145.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.147.192.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.150.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.156.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.161.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.162.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.165.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.166.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.167.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.16.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.32.0/19
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.128.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.192.0/19
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.168.240.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.169.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.170.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.171.16.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.171.32.0/19
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.171.80.0/20
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.171.96.0/19
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.171.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.172.64.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.172.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.176.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.185.0.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.185.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.188.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.192.0.0/13
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.200.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.209.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.212.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.214.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.216.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.218.0.0/18
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.218.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.219.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.220.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.224.0.0/14
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.228.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.231.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.240.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.246.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.248.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.249.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.250.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 10.252.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.72.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.74.0.0/15
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.76.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.77.128.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.78.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.79.0.0/16
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.92.0.0/17
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.104.0.0/13
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.112.0.0/13
set policy-options prefix-list AZURE-IP-REUSE-SPACE 100.120.0.0/16
set policy-options prefix-list BEST-EFFORT-DST-UDP-V4 52.120.0.0/15
set policy-options prefix-list BEST-EFFORT-GLOBAL-DST-UDP-V4 52.120.0.0/15
set policy-options prefix-list BEST-EFFORT-SRC-UDP-V4 192.0.0.8/32
set policy-options prefix-list BGP-EDGE-PEER-PREFIX 203.1.0.0/31
set policy-options prefix-list BOGON-V4 0.0.0.0/32
set policy-options prefix-list BOGON-V4 10.0.0.0/8
set policy-options prefix-list BOGON-V4 127.0.0.0/8
set policy-options prefix-list BOGON-V4 169.254.0.0/16
set policy-options prefix-list BOGON-V4 172.16.0.0/12
set policy-options prefix-list BOGON-V4 192.0.0.0/24
set policy-options prefix-list BOGON-V4 192.0.2.0/24
set policy-options prefix-list BOGON-V4 192.168.0.0/16
set policy-options prefix-list BOGON-V4 198.18.0.0/15
set policy-options prefix-list BOGON-V4 224.0.0.0/3
set policy-options prefix-list BOGON-V6 ::/8
set policy-options prefix-list BOGON-V6 ::/96
set policy-options prefix-list BOGON-V6 ::/128
set policy-options prefix-list BOGON-V6 ::1/128
set policy-options prefix-list BOGON-V6 ::ffff:0:0/96
set policy-options prefix-list BOGON-V6 100::/8
set policy-options prefix-list BOGON-V6 100::/64
set policy-options prefix-list BOGON-V6 200::/7
set policy-options prefix-list BOGON-V6 400::/6
set policy-options prefix-list BOGON-V6 800::/5
set policy-options prefix-list BOGON-V6 1000::/4
set policy-options prefix-list BOGON-V6 2001:10::/28
set policy-options prefix-list BOGON-V6 2001:db8::/32
set policy-options prefix-list BOGON-V6 2002::/24
set policy-options prefix-list BOGON-V6 2002:a00::/24
set policy-options prefix-list BOGON-V6 2002:7f00::/24
set policy-options prefix-list BOGON-V6 2002:a9fe::/32
set policy-options prefix-list BOGON-V6 2002:ac10::/28
set policy-options prefix-list BOGON-V6 2002:c0a8::/32
set policy-options prefix-list BOGON-V6 2002:e000::/20
set policy-options prefix-list BOGON-V6 2002:f000::/24
set policy-options prefix-list BOGON-V6 3ffe::/16
set policy-options prefix-list BOGON-V6 4000::/3
set policy-options prefix-list BOGON-V6 5f00::/8
set policy-options prefix-list BOGON-V6 6000::/3
set policy-options prefix-list BOGON-V6 8000::/3
set policy-options prefix-list BOGON-V6 a000::/3
set policy-options prefix-list BOGON-V6 c000::/3
set policy-options prefix-list BOGON-V6 e000::/4
set policy-options prefix-list BOGON-V6 f000::/5
set policy-options prefix-list BOGON-V6 f800::/6
set policy-options prefix-list BOGON-V6 fc00::/7
set policy-options prefix-list BOGON-V6 fe00::/9
set policy-options prefix-list BOGON-V6 fe80::/10
set policy-options prefix-list BOGON-V6 fec0::/10
set policy-options prefix-list BOGON-V6 ff00::/8
set policy-options prefix-list BYOASN-V4 104.193.184.0/22
set policy-options prefix-list BYOASN-V4 104.193.186.0/24
set policy-options prefix-list BYOASN-V6 2607:f0d0:1004::/48
set policy-options prefix-list BYOIP-V4 1.2.5.0/24
set policy-options prefix-list BYOIP-V4 1.2.9.0/24
set policy-options prefix-list BYOIP-V4 1.29.1.0/24
set policy-options prefix-list BYOIP-V4 2.28.1.0/24
set policy-options prefix-list BYOIP-V4 3.28.1.0/24
set policy-options prefix-list BYOIP-V4 4.29.1.0/24
set policy-options prefix-list BYOIP-V4 5.28.1.0/24
set policy-options prefix-list BYOIP-V4 6.10.1.0/24
set policy-options prefix-list BYOIP-V4 7.28.1.0/24
set policy-options prefix-list BYOIP-V4 10.0.4.0/24
set policy-options prefix-list BYOIP-V4 10.10.1.0/30
set policy-options prefix-list BYOIP-V4 10.11.11.0/24
set policy-options prefix-list BYOIP-V4 10.20.12.0/24
set policy-options prefix-list BYOIP-V4 10.20.14.0/24
set policy-options prefix-list BYOIP-V4 24.29.1.0/24
set policy-options prefix-list BYOIP-V4 131.253.1.0/24
set policy-options prefix-list BYOIP-V6 2404:f800::/128
set policy-options prefix-list BYOIP-V6 2602:fd5e:4::/48
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.2.146.0/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.2.146.128/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.3.129.0/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.10.0.0/16
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.20.76.0/22
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.20.88.0/22
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.63.110.0/23
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.63.112.0/22
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 10.74.12.0/24
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 40.69.224.0/19
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 40.87.240.0/20
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 40.90.1.128/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 40.127.112.0/20
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.44.5.128/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.44.107.128/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.44.217.128/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.47.192.0/21
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.209.96.0/19
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 104.210.224.0/19
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 167.220.0.0/23
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 167.220.2.0/24
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 207.46.32.52/32
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 207.46.32.146/32
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 207.46.32.172/32
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 207.46.160.0/25
set policy-options prefix-list CUST-PREFIX-DACIS-INTERNAL 207.46.160.128/26
set policy-options prefix-list DENY-DEST-DDOS 0.0.0.0/32
set policy-options prefix-list DENY-SRC-DDOS 0.0.0.0/32
set policy-options prefix-list EDGE-AZURE-V4 13.64.0.0/11
set policy-options prefix-list EDGE-AZURE-V4 20.36.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 20.40.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 20.48.0.0/12
set policy-options prefix-list EDGE-AZURE-V4 20.64.0.0/10
set policy-options prefix-list EDGE-AZURE-V4 20.140.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 20.150.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 20.160.0.0/12
set policy-options prefix-list EDGE-AZURE-V4 20.184.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 20.192.0.0/10
set policy-options prefix-list EDGE-AZURE-V4 23.96.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 23.100.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 23.102.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 40.64.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 40.66.32.0/19
set policy-options prefix-list EDGE-AZURE-V4 40.67.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 40.68.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 40.72.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 40.80.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 40.88.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 40.90.160.0/19
set policy-options prefix-list EDGE-AZURE-V4 40.90.192.0/18
set policy-options prefix-list EDGE-AZURE-V4 40.91.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 40.112.0.0/12
set policy-options prefix-list EDGE-AZURE-V4 51.11.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.12.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 51.53.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.103.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.104.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 51.107.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.116.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.120.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.124.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.132.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.136.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 51.138.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 51.140.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 51.144.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 52.126.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 52.136.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 52.146.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 52.148.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 52.152.0.0/13
set policy-options prefix-list EDGE-AZURE-V4 52.160.0.0/11
set policy-options prefix-list EDGE-AZURE-V4 52.224.0.0/11
set policy-options prefix-list EDGE-AZURE-V4 65.52.0.0/19
set policy-options prefix-list EDGE-AZURE-V4 65.52.32.0/21
set policy-options prefix-list EDGE-AZURE-V4 65.52.48.0/20
set policy-options prefix-list EDGE-AZURE-V4 65.52.64.0/20
set policy-options prefix-list EDGE-AZURE-V4 65.52.86.0/23
set policy-options prefix-list EDGE-AZURE-V4 65.52.98.96/28
set policy-options prefix-list EDGE-AZURE-V4 65.52.99.0/24
set policy-options prefix-list EDGE-AZURE-V4 65.52.101.0/24
set policy-options prefix-list EDGE-AZURE-V4 65.52.103.128/27
set policy-options prefix-list EDGE-AZURE-V4 65.52.106.16/28
set policy-options prefix-list EDGE-AZURE-V4 65.52.106.32/27
set policy-options prefix-list EDGE-AZURE-V4 65.52.106.64/26
set policy-options prefix-list EDGE-AZURE-V4 65.52.106.128/25
set policy-options prefix-list EDGE-AZURE-V4 65.52.107.0/28
set policy-options prefix-list EDGE-AZURE-V4 65.52.112.0/20
set policy-options prefix-list EDGE-AZURE-V4 65.52.128.0/17
set policy-options prefix-list EDGE-AZURE-V4 65.54.52.96/27
set policy-options prefix-list EDGE-AZURE-V4 65.54.55.160/27
set policy-options prefix-list EDGE-AZURE-V4 65.54.55.224/27
set policy-options prefix-list EDGE-AZURE-V4 65.55.19.64/26
set policy-options prefix-list EDGE-AZURE-V4 65.55.19.128/26
set policy-options prefix-list EDGE-AZURE-V4 65.55.25.96/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.32.64/26
set policy-options prefix-list EDGE-AZURE-V4 65.55.32.128/27
set policy-options prefix-list EDGE-AZURE-V4 65.55.32.192/27
set policy-options prefix-list EDGE-AZURE-V4 65.55.32.224/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.33.176/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.33.192/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.35.192/27
set policy-options prefix-list EDGE-AZURE-V4 65.55.39.144/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.39.160/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.53.112/28
set policy-options prefix-list EDGE-AZURE-V4 65.55.95.96/27
set policy-options prefix-list EDGE-AZURE-V4 70.37.0.0/17
set policy-options prefix-list EDGE-AZURE-V4 70.37.160.0/21
set policy-options prefix-list EDGE-AZURE-V4 94.245.88.0/21
set policy-options prefix-list EDGE-AZURE-V4 94.245.104.0/21
set policy-options prefix-list EDGE-AZURE-V4 94.245.114.0/26
set policy-options prefix-list EDGE-AZURE-V4 94.245.118.0/25
set policy-options prefix-list EDGE-AZURE-V4 94.245.118.128/27
set policy-options prefix-list EDGE-AZURE-V4 94.245.120.128/27
set policy-options prefix-list EDGE-AZURE-V4 94.245.122.0/24
set policy-options prefix-list EDGE-AZURE-V4 94.245.123.144/28
set policy-options prefix-list EDGE-AZURE-V4 102.37.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 102.133.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 104.40.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 104.44.85.0/24
set policy-options prefix-list EDGE-AZURE-V4 104.44.128.0/18
set policy-options prefix-list EDGE-AZURE-V4 104.45.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 104.46.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 104.47.128.0/17
set policy-options prefix-list EDGE-AZURE-V4 104.208.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 104.214.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 111.221.16.176/28
set policy-options prefix-list EDGE-AZURE-V4 111.221.22.8/29
set policy-options prefix-list EDGE-AZURE-V4 111.221.75.96/27
set policy-options prefix-list EDGE-AZURE-V4 111.221.78.0/23
set policy-options prefix-list EDGE-AZURE-V4 111.221.80.0/20
set policy-options prefix-list EDGE-AZURE-V4 111.221.96.0/20
set policy-options prefix-list EDGE-AZURE-V4 134.170.192.0/21
set policy-options prefix-list EDGE-AZURE-V4 137.116.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 137.135.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 138.91.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 157.55.3.0/24
set policy-options prefix-list EDGE-AZURE-V4 157.55.8.64/26
set policy-options prefix-list EDGE-AZURE-V4 157.55.8.128/27
set policy-options prefix-list EDGE-AZURE-V4 157.55.9.112/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.10.0/25
set policy-options prefix-list EDGE-AZURE-V4 157.55.12.0/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.24.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.55.51.224/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.60.208/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.60.224/27
set policy-options prefix-list EDGE-AZURE-V4 157.55.64.0/19
set policy-options prefix-list EDGE-AZURE-V4 157.55.103.32/27
set policy-options prefix-list EDGE-AZURE-V4 157.55.115.0/25
set policy-options prefix-list EDGE-AZURE-V4 157.55.136.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.55.151.0/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.153.224/28
set policy-options prefix-list EDGE-AZURE-V4 157.55.160.0/19
set policy-options prefix-list EDGE-AZURE-V4 157.55.192.0/19
set policy-options prefix-list EDGE-AZURE-V4 157.55.230.160/27
set policy-options prefix-list EDGE-AZURE-V4 157.55.248.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.56.8.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.56.19.224/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.32/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.64/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.96/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.128/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.160/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.21.192/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.24.160/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.24.192/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.28.0/22
set policy-options prefix-list EDGE-AZURE-V4 157.56.117.32/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.117.64/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.117.96/27
set policy-options prefix-list EDGE-AZURE-V4 157.56.160.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.56.176.0/21
set policy-options prefix-list EDGE-AZURE-V4 157.56.216.0/21
set policy-options prefix-list EDGE-AZURE-V4 168.61.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 168.62.0.0/15
set policy-options prefix-list EDGE-AZURE-V4 191.232.16.0/20
set policy-options prefix-list EDGE-AZURE-V4 191.232.16.0/21
set policy-options prefix-list EDGE-AZURE-V4 191.232.32.0/19
set policy-options prefix-list EDGE-AZURE-V4 191.232.136.0/22
set policy-options prefix-list EDGE-AZURE-V4 191.232.160.0/19
set policy-options prefix-list EDGE-AZURE-V4 191.232.192.0/18
set policy-options prefix-list EDGE-AZURE-V4 191.233.0.0/16
set policy-options prefix-list EDGE-AZURE-V4 191.234.2.0/23
set policy-options prefix-list EDGE-AZURE-V4 191.234.16.0/20
set policy-options prefix-list EDGE-AZURE-V4 191.234.32.0/19
set policy-options prefix-list EDGE-AZURE-V4 191.234.68.0/22
set policy-options prefix-list EDGE-AZURE-V4 191.234.128.0/17
set policy-options prefix-list EDGE-AZURE-V4 191.234.138.0/23
set policy-options prefix-list EDGE-AZURE-V4 191.234.160.0/19
set policy-options prefix-list EDGE-AZURE-V4 191.234.192.0/18
set policy-options prefix-list EDGE-AZURE-V4 191.235.64.0/18
set policy-options prefix-list EDGE-AZURE-V4 191.235.128.0/17
set policy-options prefix-list EDGE-AZURE-V4 191.236.0.0/14
set policy-options prefix-list EDGE-AZURE-V4 193.149.64.0/19
set policy-options prefix-list EDGE-AZURE-V4 207.46.50.128/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.59.64/26
set policy-options prefix-list EDGE-AZURE-V4 207.46.63.64/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.63.128/25
set policy-options prefix-list EDGE-AZURE-V4 207.46.67.160/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.67.192/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.72.0/26
set policy-options prefix-list EDGE-AZURE-V4 207.46.77.224/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.87.0/24
set policy-options prefix-list EDGE-AZURE-V4 207.46.89.16/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.95.32/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.128.0/19
set policy-options prefix-list EDGE-AZURE-V4 207.46.193.128/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.193.192/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.193.224/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.198.128/25
set policy-options prefix-list EDGE-AZURE-V4 207.46.199.96/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.200.80/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.200.96/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.200.176/28
set policy-options prefix-list EDGE-AZURE-V4 207.46.202.128/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.203.64/26
set policy-options prefix-list EDGE-AZURE-V4 207.46.203.224/27
set policy-options prefix-list EDGE-AZURE-V4 207.46.205.0/24
set policy-options prefix-list EDGE-AZURE-V4 207.46.224.0/20
set policy-options prefix-list EDGE-AZURE-V4 209.240.212.0/22
set policy-options prefix-list EDGE-AZURE-V4 209.240.218.0/23
set policy-options prefix-list EDGE-AZURE-V4 209.240.220.0/22
set policy-options prefix-list EDGE-AZURE-V4 213.199.128.0/20
set policy-options prefix-list EDGE-AZURE-V4 213.199.180.32/28
set policy-options prefix-list EDGE-AZURE-V4 213.199.180.96/27
set policy-options prefix-list EDGE-AZURE-V4 213.199.180.192/26
set policy-options prefix-list EDGE-AZURE-V4 213.199.183.0/24
set policy-options prefix-list EDGE-AZURE-V6 2603:1020:200::/46
set policy-options prefix-list EDGE-AZURE-V6 2a01:111:f100::/47
set policy-options prefix-list EDGE-BGP-V4 104.44.12.0/22
set policy-options prefix-list EDGE-BGP-V4 104.44.196.0/22
set policy-options prefix-list EDGE-BGP-V4 198.200.130.0/24
set policy-options prefix-list EDGE-BGP-V4 207.46.36.0/24
set policy-options prefix-list EDGE-BGP-V4 207.46.41.0/24
set policy-options prefix-list EDGE-BGP-V4 207.46.48.238/31
set policy-options prefix-list EDGE-BGP-V4 207.46.219.0/24
set policy-options prefix-list EDGE-DENY-V4 64.4.15.80/28
set policy-options prefix-list EDGE-DENY-V4 64.4.24.64/27
set policy-options prefix-list EDGE-DENY-V4 64.4.45.64/26
set policy-options prefix-list EDGE-DENY-V4 64.4.58.32/28
set policy-options prefix-list EDGE-DENY-V4 64.4.60.0/24
set policy-options prefix-list EDGE-DENY-V4 65.54.163.64/26
set policy-options prefix-list EDGE-DENY-V4 65.54.226.0/28
set policy-options prefix-list EDGE-DENY-V4 65.54.226.16/28
set policy-options prefix-list EDGE-DENY-V4 65.54.226.32/27
set policy-options prefix-list EDGE-DENY-V4 65.54.237.0/26
set policy-options prefix-list EDGE-DENY-V4 207.68.185.224/28
set policy-options prefix-list EDGE-DENY-V4 207.68.185.240/28
set policy-options prefix-list EDGE-EGRESS-V4 8.6.118.0/23
set policy-options prefix-list EDGE-EGRESS-V4 63.211.192.0/23
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.4.0/22
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.8.0/21
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.16.0/20
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.32.0/22
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.36.0/23
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 104.44.224.0/20
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 191.234.81.0/24
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 191.234.83.0/24
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 191.234.84.0/24
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 198.206.164.0/24
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 204.152.140.0/23
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 207.46.36.158/31
set policy-options prefix-list EDGE-INFRASTRUCTURE-V4 207.46.41.138/31
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.1/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.2/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.3/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.7/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.8/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.10/32
set policy-options prefix-list EDGE-LOOPBACK-V4 23.103.180.11/32
set policy-options prefix-list EDGE-LOOPBACK-V4 65.54.67.32/32
set policy-options prefix-list EDGE-LOOPBACK-V4 65.54.67.33/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.32/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.33/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.35/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.72/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.73/32
set policy-options prefix-list EDGE-LOOPBACK-V4 70.37.149.74/32
set policy-options prefix-list EDGE-LOOPBACK-V4 94.245.77.40/32
set policy-options prefix-list EDGE-LOOPBACK-V4 94.245.77.41/32
set policy-options prefix-list EDGE-LOOPBACK-V4 104.44.0.0/23
set policy-options prefix-list EDGE-LOOPBACK-V4 104.44.2.0/23
set policy-options prefix-list EDGE-LOOPBACK-V4 202.89.236.7/32
set policy-options prefix-list EDGE-LOOPBACK-V4 202.89.236.8/32
set policy-options prefix-list EDGE-LOOPBACK-V4 204.79.135.1/32
set policy-options prefix-list EDGE-LOOPBACK-V4 204.79.135.5/32
set policy-options prefix-list EDGE-LOOPBACK-V4 204.79.135.6/32
set policy-options prefix-list EDGE-LOOPBACK-V4 204.79.135.7/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.32.0/22
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.39.0/26
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.48.7/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.48.10/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.64.21/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.64.23/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.64.41/32
set policy-options prefix-list EDGE-LOOPBACK-V4 207.46.64.42/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.2/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.4/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.6/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.7/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.8/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.12/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.13/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.18/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.19/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.20/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.21/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.22/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.23/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.24/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.27/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.28/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.29/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.30/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.66/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.67/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.70/32
set policy-options prefix-list EDGE-LOOPBACK-V4 213.199.144.71/32
set policy-options prefix-list EDGE-MSIT-V4 13.106.31.128/25
set policy-options prefix-list EDGE-MSIT-V4 65.53.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 65.54.0.0/23
set policy-options prefix-list EDGE-MSIT-V4 65.54.2.0/24
set policy-options prefix-list EDGE-MSIT-V4 65.54.13.0/24
set policy-options prefix-list EDGE-MSIT-V4 65.55.27.248/29
set policy-options prefix-list EDGE-MSIT-V4 65.55.28.0/22
set policy-options prefix-list EDGE-MSIT-V4 94.245.87.0/24
set policy-options prefix-list EDGE-MSIT-V4 94.245.124.0/22
set policy-options prefix-list EDGE-MSIT-V4 131.107.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 157.54.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 157.57.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 157.58.0.0/15
set policy-options prefix-list EDGE-MSIT-V4 157.60.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 167.220.0.0/16
set policy-options prefix-list EDGE-MSIT-V4 191.234.96.0/19
set policy-options prefix-list EDGE-MSIT-V4 194.69.96.0/19
set policy-options prefix-list EDGE-MSIT-V4 198.105.232.0/22
set policy-options prefix-list EDGE-MSIT-V4 198.180.95.0/24
set policy-options prefix-list EDGE-MSIT-V4 199.2.137.0/24
set policy-options prefix-list EDGE-MSIT-V4 204.182.144.0/24
set policy-options prefix-list EDGE-MSIT-V4 204.255.244.0/23
set policy-options prefix-list EDGE-MSIT-V4 205.248.96.0/20
set policy-options prefix-list EDGE-MSIT-V4 205.248.125.0/26
set policy-options prefix-list EDGE-MSIT-V4 205.248.126.0/23
set policy-options prefix-list EDGE-MSIT-V4 207.46.52.0/22
set policy-options prefix-list EDGE-MSIT-V4 207.46.84.0/23
set policy-options prefix-list EDGE-MSIT-V4 207.46.90.0/23
set policy-options prefix-list EDGE-MSIT-V4 207.46.92.0/23
set policy-options prefix-list EDGE-MSIT-V4 207.46.94.0/23
set policy-options prefix-list EDGE-MSIT-V4 213.199.144.64/27
set policy-options prefix-list EDGE-MSIT-V4 213.199.144.160/27
set policy-options prefix-list EDGE-MSIT-V4 213.199.145.0/24
set policy-options prefix-list EDGE-MSIT-V4 213.199.146.128/25
set policy-options prefix-list EDGE-MSIT-V4 213.199.147.96/27
set policy-options prefix-list EDGE-MSIT-V4 213.199.147.128/25
set policy-options prefix-list EDGE-MSIT-V4 213.199.150.0/23
set policy-options prefix-list EDGE-MSIT-V4 213.199.152.0/25
set policy-options prefix-list EDGE-MSIT-V4 213.199.153.0/24
set policy-options prefix-list EDGE-MSIT-V4 213.199.155.0/24
set policy-options prefix-list EDGE-MSIT-V4 213.199.189.0/24
set policy-options prefix-list EDGE-MSIT-V4 213.199.190.0/23
set policy-options prefix-list EDGE-OTHER-V4 23.103.64.0/18
set policy-options prefix-list EDGE-OTHER-V4 23.103.128.0/17
set policy-options prefix-list EDGE-OTHER-V4 65.52.81.64/26
set policy-options prefix-list EDGE-OTHER-V4 65.54.72.0/21
set policy-options prefix-list EDGE-OTHER-V4 65.54.80.0/20
set policy-options prefix-list EDGE-OTHER-V4 65.54.118.128/26
set policy-options prefix-list EDGE-OTHER-V4 65.54.154.0/24
set policy-options prefix-list EDGE-OTHER-V4 65.55.23.128/25
set policy-options prefix-list EDGE-OTHER-V4 65.55.74.128/26
set policy-options prefix-list EDGE-OTHER-V4 65.55.81.192/26
set policy-options prefix-list EDGE-OTHER-V4 65.55.86.0/23
set policy-options prefix-list EDGE-OTHER-V4 65.55.208.0/21
set policy-options prefix-list EDGE-OTHER-V4 65.55.216.0/22
set policy-options prefix-list EDGE-OTHER-V4 70.37.128.0/21
set policy-options prefix-list EDGE-OTHER-V4 70.37.147.0/24
set policy-options prefix-list EDGE-OTHER-V4 70.37.148.0/23
set policy-options prefix-list EDGE-OTHER-V4 70.37.159.0/24
set policy-options prefix-list EDGE-OTHER-V4 94.245.97.0/25
set policy-options prefix-list EDGE-OTHER-V4 94.245.114.64/26
set policy-options prefix-list EDGE-OTHER-V4 94.245.116.48/28
set policy-options prefix-list EDGE-OTHER-V4 94.245.117.64/26
set policy-options prefix-list EDGE-OTHER-V4 94.245.123.160/27
set policy-options prefix-list EDGE-OTHER-V4 111.221.69.0/24
set policy-options prefix-list EDGE-OTHER-V4 131.253.6.0/24
set policy-options prefix-list EDGE-OTHER-V4 131.253.18.0/24
set policy-options prefix-list EDGE-OTHER-V4 131.253.21.0/24
set policy-options prefix-list EDGE-OTHER-V4 131.253.24.0/21
set policy-options prefix-list EDGE-OTHER-V4 131.253.32.0/20
set policy-options prefix-list EDGE-OTHER-V4 131.253.61.0/24
set policy-options prefix-list EDGE-OTHER-V4 131.253.62.0/23
set policy-options prefix-list EDGE-OTHER-V4 132.245.0.0/16
set policy-options prefix-list EDGE-OTHER-V4 134.170.0.0/17
set policy-options prefix-list EDGE-OTHER-V4 134.170.128.0/18
set policy-options prefix-list EDGE-OTHER-V4 134.170.200.0/21
set policy-options prefix-list EDGE-OTHER-V4 134.170.208.0/20
set policy-options prefix-list EDGE-OTHER-V4 134.170.224.0/19
set policy-options prefix-list EDGE-OTHER-V4 192.84.160.0/24
set policy-options prefix-list EDGE-OTHER-V4 192.92.196.0/24
set policy-options prefix-list EDGE-OTHER-V4 199.30.16.0/20
set policy-options prefix-list EDGE-OTHER-V4 199.74.210.0/24
set policy-options prefix-list EDGE-OTHER-V4 202.89.228.0/23
set policy-options prefix-list EDGE-OTHER-V4 204.79.179.0/24
set policy-options prefix-list EDGE-OTHER-V4 204.79.195.0/24
set policy-options prefix-list EDGE-OTHER-V4 204.79.197.0/24
set policy-options prefix-list EDGE-OTHER-V4 207.46.50.16/28
set policy-options prefix-list EDGE-OTHER-V4 207.46.51.64/26
set policy-options prefix-list EDGE-OTHER-V4 207.46.56.0/23
set policy-options prefix-list EDGE-OTHER-V4 207.46.62.0/24
set policy-options prefix-list EDGE-OTHER-V4 207.46.63.0/26
set policy-options prefix-list EDGE-OTHER-V4 207.46.70.0/24
set policy-options prefix-list EDGE-OTHER-V4 207.46.71.0/24
set policy-options prefix-list EDGE-OTHER-V4 207.46.203.0/26
set policy-options prefix-list EDGE-OTHER-V4 208.68.136.0/21
set policy-options prefix-list EDGE-OTHER-V4 213.199.148.0/23
set policy-options prefix-list EDGE-OTHER-V4 213.199.156.0/22
set policy-options prefix-list EDGE-OTHER-V4 213.199.178.0/23
set policy-options prefix-list EDGE-OTHER-V4 216.32.180.0/23
set policy-options prefix-list EDGE-PERMIT-IP-V4 8.6.176.0/24
set policy-options prefix-list EDGE-PERMIT-IP-V4 64.41.193.0/24
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.54.0.0/18
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.54.64.0/20
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.54.96.0/19
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.54.248.128/26
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.54.249.160/27
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.55.0.0/16
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.59.232.0/23
set policy-options prefix-list EDGE-PERMIT-IP-V4 65.59.234.0/24
set policy-options prefix-list EDGE-PERMIT-IP-V4 94.245.64.0/18
set policy-options prefix-list EDGE-PERMIT-IP-V4 157.54.0.0/23
set policy-options prefix-list EDGE-PERMIT-IP-V4 157.56.0.0/14
set policy-options prefix-list EDGE-PERMIT-IP-V4 199.242.48.0/21
set policy-options prefix-list EDGE-PERMIT-IP-V4 206.138.168.0/21
set policy-options prefix-list EDGE-PERMIT-IP-V4 207.46.112.0/20
set policy-options prefix-list EDGE-PERMIT-IP-V4 207.46.128.0/17
set policy-options prefix-list EDGE-PERMIT-IP-V4 207.68.179.224/27
set policy-options prefix-list EDGE-PERMIT-IP-V4 207.68.186.0/23
set policy-options prefix-list EDGE-PERMIT-IP-V4 207.68.188.0/22
set policy-options prefix-list EDGE-PERMIT-IP-V4 209.1.15.0/24
set policy-options prefix-list EDGE-PERMIT-IP-V4 213.199.144.0/20
set policy-options prefix-list EDGE-PERMIT-IP-V4 213.199.160.0/20
set policy-options prefix-list EDGE-PERMIT-IP-V4 213.199.176.0/21
set policy-options prefix-list EDGE-PERMIT-IP-V4 213.199.184.0/21
set policy-options prefix-list EDGE-PERMIT-IP-V4 216.34.51.0/24
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.52.80.134/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.52.80.213/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.52.100.205/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.52.100.214/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.6.224/29
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.116.42/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.188.11/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.225.128/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.225.135/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.225.136/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.225.157/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.54.254.247/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.42.131/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.42.209/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.88.87/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.94.224/27
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.130.151/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.166.112/28
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.222.48/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 65.55.222.49/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.55.0.20/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.55.51.130/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.55.51.194/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.55.104.89/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.56.79.96/28
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.56.152.18/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 157.56.152.210/32
set policy-options prefix-list EDGE-PERMIT-SSH-V4 207.46.193.208/29
set policy-options prefix-list EDGE-PERMIT-SSH-V4 207.68.139.103/32
set policy-options prefix-list EDGE-PROTO-41-V4 65.54.227.0/24
set policy-options prefix-list EDGE-PROTO-41-V4 94.245.66.0/23
set policy-options prefix-list EDGE-PROTO-41-V4 202.89.231.0/24
set policy-options prefix-list EDGE-PROTO-41-V4 204.95.104.0/21
set policy-options prefix-list EDGE-PROTO-41-V4 207.46.48.96/27
set policy-options prefix-list EDGE-PROTO-41-V4 207.46.48.128/27
set policy-options prefix-list EDGE-PROTO-41-V4 207.46.61.0/24
set policy-options prefix-list EDGE-PROTO-41-V4 213.199.145.0/24
set policy-options prefix-list EDGE-PROTO-41-V4 213.199.162.192/27
set policy-options prefix-list EDGE-XBOX-UDP-CDN-V4 104.44.252.0/26
set policy-options prefix-list EDGE-XBOX-UDP-CDN-V4 134.170.28.117/32
set policy-options prefix-list EDGE-XBOX-UDP-CDN-V4 134.170.28.133/32
set policy-options prefix-list EDGE-XBOX-UDP-DNS-V4 40.90.8.64/31
set policy-options prefix-list EDGE-XBOX-UDP-DNS-V4 70.37.134.64/32
set policy-options prefix-list EDGE-XBOX-UDP-DNS-V4 208.68.140.128/32
set policy-options prefix-list EDGE-XBOX-UDP-SIGNIANT-V4 134.170.176.32/27
set policy-options prefix-list EDGE-XBOX-UDP-V4 40.90.8.0/21
set policy-options prefix-list EDGE-XBOX-UDP-V4 104.44.251.0/24
set policy-options prefix-list EDGE-XBOX-UDP-V4 104.44.252.0/23
set policy-options prefix-list EDGE-XBOX-UDP-V4 131.253.28.0/23
set policy-options prefix-list EDGE-XBOX-UDP-V4 134.170.28.0/23
set policy-options prefix-list EDGE-XBOX-UDP-V4 134.170.176.0/22
set policy-options prefix-list EDGE-XBOX-UDP-V4 157.56.70.0/23
set policy-options prefix-list EDGE-XBOX-UDP-V4 216.220.216.0/24
set policy-options prefix-list EDGE-XBOX-V4 65.55.42.0/23
set policy-options prefix-list EDGE-XBOX-V4 131.253.16.0/23
set policy-options prefix-list EDGE-XBOX-V4 131.253.22.0/23
set policy-options prefix-list EDGE-XBOX-V4 134.170.28.0/23
set policy-options prefix-list EDGE-XBOX-V4 134.170.176.0/22
set policy-options prefix-list EDGE-XBOX-V4 157.56.70.0/23
set policy-options prefix-list EDGE-XBOX-V4 191.234.78.0/23
set policy-options prefix-list EDGE-XBOX-V4 216.220.208.0/21
set policy-options prefix-list ER-LOOPBACKS 10.0.111.67/32
set policy-options prefix-list ER-LOOPBACKS 10.0.111.70/32
set policy-options prefix-list ER-LOOPBACKS 10.24.132.0/22
set policy-options prefix-list ER-LOOPBACKS 10.63.156.0/22
set policy-options prefix-list ER-LOOPBACKS 10.63.158.160/27
set policy-options prefix-list ER-LOOPBACKS 13.105.15.0/25
set policy-options prefix-list ER-LOOPBACKS 13.106.22.5/32
set policy-options prefix-list ER-LOOPBACKS 20.37.144.0/27
set policy-options prefix-list ER-LOOPBACKS 20.37.200.64/32
set policy-options prefix-list ER-LOOPBACKS 20.37.200.65/32
set policy-options prefix-list ER-LOOPBACKS 20.39.56.0/27
set policy-options prefix-list ER-LOOPBACKS 20.39.56.32/27
set policy-options prefix-list ER-LOOPBACKS 20.39.56.64/27
set policy-options prefix-list ER-LOOPBACKS 20.39.56.176/28
set policy-options prefix-list ER-LOOPBACKS 20.39.56.192/28
set policy-options prefix-list ER-LOOPBACKS 20.39.56.240/30
set policy-options prefix-list ER-LOOPBACKS 20.39.56.244/30
set policy-options prefix-list ER-LOOPBACKS 20.42.160.0/28
set policy-options prefix-list ER-LOOPBACKS 20.42.195.0/30
set policy-options prefix-list ER-LOOPBACKS 20.42.232.16/29
set policy-options prefix-list ER-LOOPBACKS 20.44.112.0/30
set policy-options prefix-list ER-LOOPBACKS 20.44.144.0/29
set policy-options prefix-list ER-LOOPBACKS 20.184.160.0/27
set policy-options prefix-list ER-LOOPBACKS 20.184.160.32/27
set policy-options prefix-list ER-LOOPBACKS 20.189.80.0/27
set policy-options prefix-list ER-LOOPBACKS 20.189.208.16/30
set policy-options prefix-list ER-LOOPBACKS 20.190.220.0/27
set policy-options prefix-list ER-LOOPBACKS 20.190.220.32/27
set policy-options prefix-list ER-LOOPBACKS 23.97.80.32/27
set policy-options prefix-list ER-LOOPBACKS 25.77.239.13/32
set policy-options prefix-list ER-LOOPBACKS 25.81.133.148/32
set policy-options prefix-list ER-LOOPBACKS 25.149.140.191/32
set policy-options prefix-list ER-LOOPBACKS 25.156.194.178/32
set policy-options prefix-list ER-LOOPBACKS 40.74.192.0/27
set policy-options prefix-list ER-LOOPBACKS 40.74.192.32/27
set policy-options prefix-list ER-LOOPBACKS 40.80.64.16/30
set policy-options prefix-list ER-LOOPBACKS 40.89.24.0/27
set policy-options prefix-list ER-LOOPBACKS 40.119.16.80/30
set policy-options prefix-list ER-LOOPBACKS 40.119.140.80/28
set policy-options prefix-list ER-LOOPBACKS 40.119.216.0/27
set policy-options prefix-list ER-LOOPBACKS 40.119.216.32/27
set policy-options prefix-list ER-LOOPBACKS 40.119.216.64/27
set policy-options prefix-list ER-LOOPBACKS 40.125.88.0/27
set policy-options prefix-list ER-LOOPBACKS 40.125.88.32/27
set policy-options prefix-list ER-LOOPBACKS 40.125.88.80/30
set policy-options prefix-list ER-LOOPBACKS 51.104.104.0/27
set policy-options prefix-list ER-LOOPBACKS 51.104.104.32/27
set policy-options prefix-list ER-LOOPBACKS 51.104.104.144/28
set policy-options prefix-list ER-LOOPBACKS 51.104.104.160/30
set policy-options prefix-list ER-LOOPBACKS 51.105.0.0/27
set policy-options prefix-list ER-LOOPBACKS 51.105.0.96/30
set policy-options prefix-list ER-LOOPBACKS 51.107.64.32/30
set policy-options prefix-list ER-LOOPBACKS 51.107.160.16/30
set policy-options prefix-list ER-LOOPBACKS 51.136.64.0/29
set policy-options prefix-list ER-LOOPBACKS 52.126.168.16/30
set policy-options prefix-list ER-LOOPBACKS 52.142.176.0/27
set policy-options prefix-list ER-LOOPBACKS 52.162.16.64/30
set policy-options prefix-list ER-LOOPBACKS 52.172.72.16/30
set policy-options prefix-list ER-LOOPBACKS 52.228.88.0/27
set policy-options prefix-list ER-LOOPBACKS 52.228.88.32/27
set policy-options prefix-list ER-LOOPBACKS 104.44.217.250/32
set policy-options prefix-list ER-LOOPBACKS 104.44.217.251/32
set policy-options prefix-list ER-LOOPBACKS 104.44.217.252/32
set policy-options prefix-list ER-LOOPBACKS 104.44.217.253/32
set policy-options prefix-list ER-LOOPBACKS 104.44.217.254/32
set policy-options prefix-list ER-LOOPBACKS 104.44.217.255/32
set policy-options prefix-list ER-LOOPBACKS 104.45.32.0/27
set policy-options prefix-list ER-LOOPBACKS 104.45.32.32/27
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 10.3.159.148/32
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 13.64.0.0/11
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 13.104.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.0.0.0/11
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.33.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.34.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.36.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.40.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.48.0.0/12
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.64.0.0/10
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.135.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.136.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.140.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.143.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.150.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.152.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.153.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.157.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.158.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.160.0.0/12
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.184.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 20.192.0.0/10
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 23.96.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 23.100.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 23.102.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 23.103.64.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 23.103.128.0/17
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 40.64.0.0/10
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.10.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.12.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.51.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.53.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.103.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.104.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.107.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.116.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.120.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.124.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.132.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.136.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.138.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.140.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 51.144.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.96.0.0/12
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.112.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.120.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.125.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.126.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.136.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.146.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.148.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.152.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.160.0.0/11
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 52.224.0.0/11
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 64.4.0.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 64.41.193.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 65.52.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 66.119.144.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 68.18.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 68.154.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 68.210.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 68.218.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 68.220.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 70.37.0.0/17
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 70.37.128.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 70.152.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 70.156.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 72.144.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 72.152.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.160.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.176.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.224.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.234.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.240.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 74.248.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 91.190.216.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 94.245.64.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 98.64.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 98.70.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 102.37.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 102.133.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 103.25.156.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 103.36.96.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 103.255.140.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 104.40.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 104.146.0.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 104.146.128.0/17
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 104.208.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 108.140.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 111.221.16.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 111.221.64.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 128.94.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.107.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.1.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.3.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.5.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.6.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.8.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.12.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.16.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.18.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.21.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.22.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.24.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.32.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.61.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.62.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.64.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 131.253.128.0/17
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 132.245.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 134.170.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 135.149.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 137.116.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 137.135.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 138.91.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 138.239.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 143.64.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 147.145.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 147.243.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 148.7.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 150.171.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 155.62.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 157.54.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 157.56.0.0/14
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 157.60.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 158.158.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 167.105.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 167.220.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 168.61.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 168.62.0.0/15
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 169.138.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 170.165.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 191.232.0.0/13
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.48.225.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.84.160.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.92.196.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.102.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.103.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.104.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.112.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.120.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.100.128.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 192.197.157.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 193.149.64.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 193.221.113.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 194.41.16.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 194.69.96.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 195.134.224.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.49.8.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.105.232.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.180.95.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.180.97.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.200.130.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 198.206.164.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.2.137.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.30.16.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.60.28.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.74.210.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.103.90.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.103.122.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.242.32.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 199.242.48.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 202.89.224.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.13.120.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.14.180.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.135.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.179.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.180.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.188.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.195.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.196.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.197.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.79.252.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.95.96.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.152.140.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.176.46.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.182.144.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.192.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.194.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.196.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.200.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.208.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.231.236.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 204.255.244.0/23
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 205.174.224.0/20
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 206.138.168.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 206.191.224.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 207.46.0.0/16
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 207.68.128.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 208.68.136.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 208.76.44.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 208.84.0.0/21
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 209.1.15.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 209.185.128.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 209.240.192.0/19
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 213.199.128.0/18
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 216.32.180.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 216.32.240.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 216.33.240.0/22
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 216.34.51.0/24
set policy-options prefix-list GLOBAL-EGRESS-IP-SPACE 216.220.208.0/20
set policy-options prefix-list IDENTITY-AS 13.75.88.52/32
set policy-options prefix-list IDENTITY-AS 13.75.90.19/32
set policy-options prefix-list IDENTITY-AS 13.75.90.35/32
set policy-options prefix-list IDENTITY-AS 13.75.90.183/32
set policy-options prefix-list IDENTITY-AS 13.75.91.110/32
set policy-options prefix-list IDENTITY-AS 13.75.92.74/32
set policy-options prefix-list IDENTITY-AS 13.75.93.69/32
set policy-options prefix-list IDENTITY-AS 13.75.94.1/32
set policy-options prefix-list IDENTITY-AS 13.75.94.4/32
set policy-options prefix-list IDENTITY-AS 13.75.94.23/32
set policy-options prefix-list IDENTITY-AS 13.75.94.181/32
set policy-options prefix-list IDENTITY-AS 13.75.95.13/32
set policy-options prefix-list IDENTITY-AS 13.75.113.72/32
set policy-options prefix-list IDENTITY-AS 13.75.114.100/32
set policy-options prefix-list IDENTITY-AS 13.75.121.215/32
set policy-options prefix-list IDENTITY-AS 13.75.125.48/32
set policy-options prefix-list IDENTITY-AS 13.76.97.152/32
set policy-options prefix-list IDENTITY-AS 13.76.100.50/32
set policy-options prefix-list IDENTITY-AS 13.76.208.173/32
set policy-options prefix-list IDENTITY-AS 13.76.247.164/32
set policy-options prefix-list IDENTITY-AS 13.94.24.95/32
set policy-options prefix-list IDENTITY-AS 13.94.27.46/32
set policy-options prefix-list IDENTITY-AS 13.94.33.9/32
set policy-options prefix-list IDENTITY-AS 13.94.46.216/32
set policy-options prefix-list IDENTITY-AS 20.184.1.207/32
set policy-options prefix-list IDENTITY-AS 20.184.1.254/32
set policy-options prefix-list IDENTITY-AS 20.184.3.89/32
set policy-options prefix-list IDENTITY-AS 20.184.3.90/32
set policy-options prefix-list IDENTITY-AS 20.184.3.92/32
set policy-options prefix-list IDENTITY-AS 20.184.3.146/32
set policy-options prefix-list IDENTITY-AS 20.184.4.6/32
set policy-options prefix-list IDENTITY-AS 20.184.4.9/32
set policy-options prefix-list IDENTITY-AS 23.102.236.110/32
set policy-options prefix-list IDENTITY-AS 23.102.237.94/32
set policy-options prefix-list IDENTITY-AS 23.102.238.238/32
set policy-options prefix-list IDENTITY-AS 40.83.121.235/32
set policy-options prefix-list IDENTITY-AS 40.83.122.207/32
set policy-options prefix-list IDENTITY-AS 40.83.122.220/32
set policy-options prefix-list IDENTITY-AS 40.83.124.112/32
set policy-options prefix-list IDENTITY-AS 40.83.124.246/32
set policy-options prefix-list IDENTITY-AS 40.83.126.117/32
set policy-options prefix-list IDENTITY-AS 40.83.127.243/32
set policy-options prefix-list IDENTITY-AS 52.163.92.240/32
set policy-options prefix-list IDENTITY-AS 52.163.94.204/32
set policy-options prefix-list IDENTITY-AS 52.163.118.59/32
set policy-options prefix-list IDENTITY-AS 52.163.123.2/32
set policy-options prefix-list IDENTITY-AS 52.163.211.177/32
set policy-options prefix-list IDENTITY-AS 52.163.215.212/32
set policy-options prefix-list IDENTITY-AS 52.163.219.241/32
set policy-options prefix-list IDENTITY-AS 52.163.226.140/32
set policy-options prefix-list IDENTITY-AS 52.163.229.167/32
set policy-options prefix-list IDENTITY-AS 52.163.241.114/32
set policy-options prefix-list IDENTITY-AS 52.175.23.211/32
set policy-options prefix-list IDENTITY-AS 52.175.25.101/32
set policy-options prefix-list IDENTITY-AS 52.175.27.41/32
set policy-options prefix-list IDENTITY-AS 52.175.28.140/32
set policy-options prefix-list IDENTITY-AS 52.175.31.247/32
set policy-options prefix-list IDENTITY-AS 52.175.33.200/32
set policy-options prefix-list IDENTITY-AS 52.175.39.194/32
set policy-options prefix-list IDENTITY-AS 52.184.26.159/32
set policy-options prefix-list IDENTITY-AS 52.187.37.10/32
set policy-options prefix-list IDENTITY-AS 52.187.67.242/32
set policy-options prefix-list IDENTITY-AS 52.187.72.121/32
set policy-options prefix-list IDENTITY-AS 52.187.78.162/32
set policy-options prefix-list IDENTITY-AS 52.187.122.245/32
set policy-options prefix-list IDENTITY-AS 52.187.124.202/32
set policy-options prefix-list IDENTITY-AS 52.187.128.140/32
set policy-options prefix-list IDENTITY-AS 52.187.134.232/32
set policy-options prefix-list IDENTITY-AS 52.187.164.172/32
set policy-options prefix-list IDENTITY-AS 52.229.170.137/32
set policy-options prefix-list IDENTITY-AS 52.229.170.149/32
set policy-options prefix-list IDENTITY-AS 52.229.171.47/32
set policy-options prefix-list IDENTITY-AS 52.230.65.100/32
set policy-options prefix-list IDENTITY-AS 52.230.124.125/32
set policy-options prefix-list IDENTITY-AS 207.46.233.6/32
set policy-options prefix-list IDENTITY-AS 207.46.236.4/32
set policy-options prefix-list IDENTITY-AS 207.46.236.31/32
set policy-options prefix-list IDENTITY-AS 207.46.236.143/32
set policy-options prefix-list IDENTITY-AS 207.46.237.88/32
set policy-options prefix-list IDENTITY-AS 207.46.237.158/32
set policy-options prefix-list IDENTITY-AS 207.46.237.194/32
set policy-options prefix-list IDENTITY-AS 207.46.237.213/32
set policy-options prefix-list IDENTITY-EU 13.94.235.65/32
set policy-options prefix-list IDENTITY-EU 51.136.15.98/32
set policy-options prefix-list IDENTITY-EU 51.136.30.139/32
set policy-options prefix-list IDENTITY-EU 51.137.49.119/32
set policy-options prefix-list IDENTITY-EU 51.137.99.118/32
set policy-options prefix-list IDENTITY-EU 51.144.162.25/32
set policy-options prefix-list IDENTITY-EU 51.144.230.43/32
set policy-options prefix-list IDENTITY-EU 52.138.148.88/32
set policy-options prefix-list IDENTITY-EU 52.138.221.86/32
set policy-options prefix-list IDENTITY-EU 52.169.1.240/32
set policy-options prefix-list IDENTITY-EU 52.169.84.94/32
set policy-options prefix-list IDENTITY-EU 52.169.85.142/32
set policy-options prefix-list IDENTITY-EU 52.178.184.238/32
set policy-options prefix-list IDENTITY-EU 52.178.188.120/32
set policy-options prefix-list IDENTITY-EU 52.178.196.187/32
set policy-options prefix-list IDENTITY-EU 52.232.76.88/32
set policy-options prefix-list IDENTITY-EU 104.45.17.212/32
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:30::/45
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:30::/64
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:30::53/128
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:32::/64
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:32::53/128
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:34::/64
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:34::53/128
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:37::/64
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:0:37::53/128
set policy-options prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH 2620:1ec::/36
set policy-options prefix-list IPV6-CUST-PREFIX-DACIS-INTERNAL 2603:10e1:101::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:df0:7::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d7::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d8::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d9::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:4898::/32
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:489a:2000::/35
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2001:489a:4000::/35
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2404:f800::/32
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2404:f801::/32
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2603:1000::/25
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2620:0:30::/45
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2620:1ec::/36
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2801:80:1d0::/48
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2a01:110::/32
set policy-options prefix-list IPV6-GLOBAL-EGRESS-SPACE 2a01:111::/32
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 31::/16
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 58::/16
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 2001:506:28::/48
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 2001:489a::/35
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 2603:1080::/25
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 2a01:111::/36
set policy-options prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES 2a01:111:e000::/36
set policy-options prefix-list IPv4ONEDDOS-A10-Loopback 40.66.64.0/24
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.199.11/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.199.13/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.199.14/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.209.75/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.209.76/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.209.79/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.209.82/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.5.232.66/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.17.177.250/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.104.16.39/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.104.16.167/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.104.20.17/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.104.20.145/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.232.203.143/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 10.232.203.144/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.68.226.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.68.226.140/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.68.230.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.68.230.140/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.72.217.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.72.220.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.19.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.21.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.90.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.92.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.240.142/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.241.206/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.242.206/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.73.244.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.74.9.27/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.74.9.28/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.74.11.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.74.74.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.74.76.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.75.72.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.75.72.206/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.75.73.142/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.75.74.78/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.76.138.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.76.140.25/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.76.140.26/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.81.65.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.81.67.142/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.81.69.142/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.81.72.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.152.22/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.152.26/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.209.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.209.136/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.212.7/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.212.8/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.234.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.234.140/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.238.133/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.85.238.138/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.86.32.12/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.86.32.18/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.86.34.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.86.34.16/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.100.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.100.138/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.160.7/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.160.11/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.192.25/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.192.27/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.224.25/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.87.224.27/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.89.114.137/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.89.114.140/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.90.40.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.90.40.9/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.209.137/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.209.140/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.212.137/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.212.142/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.224.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.92.224.18/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.200.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.200.9/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.235.139/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.235.203/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.236.11/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.236.75/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.236.139/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.93.236.203/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.99.208.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.99.208.18/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.122.211.16/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.122.215.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.125.42.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.125.46.144/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.125.72.18/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.148.129.94/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.148.129.222/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.6.135/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.6.199/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.14.9/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.14.73/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.16.7/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.16.71/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.64.28/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.64.92/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.64.156/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.64.220/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.136.11/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.136.75/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.176.17/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.176.81/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.200.17/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.200.81/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.232.9/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.232.73/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.240.9/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.150.240.73/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.0.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.0.69/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.56.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.56.69/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.80.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.80.69/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.81.133/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.159.81.197/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.112.91/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.113.93/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.113.219/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.114.221/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.192.78/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.193.78/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.194.78/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.195.78/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.240.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.240.206/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.242.14/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.184.242.206/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.16.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.16.69/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.24.5/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.24.69/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.57.150/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.57.152/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.62.144/30
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.66.16/30
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.68.149/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.68.150/31
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.186.68.152/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.64.17/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.64.145/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.66.20/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.66.148/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.68.31/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.68.37/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.68.157/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.68.160/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.76.141/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.77.13/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.133.7/32
set policy-options prefix-list IPv4ONEDDOS-A10-MGMT 25.254.133.71/32
set policy-options prefix-list IPv4ONEDDOS-CNS 13.68.31.37/32
set policy-options prefix-list IPv4ONEDDOS-CNS 40.118.251.245/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.1.67.224/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.1.140.128/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.1.152.16/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.2.185.64/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.5.36.0/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.14.19.128/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.17.84.0/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.17.104.80/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.24.140.0/27
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.25.169.16/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.25.233.32/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.26.72.64/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.26.207.0/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.26.238.0/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.26.240.192/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.40.132.240/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.40.190.128/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.40.236.176/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.63.13.32/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.201.136.128/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.207.146.0/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 10.211.236.128/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.25.48/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.29.48/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.33.48/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.37.48/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.52.224/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.55.160/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.56.96/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.58.16/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET 100.127.60.64/28
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 13.66.20.221/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 13.71.184.224/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 13.73.3.24/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 13.75.93.117/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 13.76.44.85/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.74.134.37/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.86.220.202/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.87.156.3/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.89.135.114/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.112.184.146/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.114.51.208/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.122.70.219/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.126.235.232/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 40.127.71.63/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 51.140.25.83/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 51.141.116.39/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.161.13.91/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.161.17.84/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.167.6.141/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.180.176.248/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.183.10.153/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.231.67.113/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 52.231.152.167/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 104.40.157.173/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 104.41.45.88/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 104.211.96.167/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 104.211.164.180/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 104.211.228.226/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 157.55.164.101/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 191.234.163.235/32
set policy-options prefix-list IPv4ONEDDOS-HYPERNET-Public 191.237.45.219/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 13.71.122.103/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 13.74.153.36/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 13.82.147.240/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 13.84.189.46/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 23.96.55.92/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 23.98.146.36/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 40.86.188.39/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 40.117.239.185/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 40.123.41.162/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 40.126.242.195/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 51.140.125.246/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 51.141.54.244/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.161.20.215/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.162.167.138/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.163.240.40/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.166.115.41/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.173.240.151/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.180.179.193/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.229.166.182/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.231.37.38/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.231.206.203/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.233.44.98/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.235.42.73/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.246.189.70/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 52.250.120.103/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 104.41.29.28/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 104.211.190.172/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 104.215.63.59/32
set policy-options prefix-list IPv4ONEDDOS-SFLOW-SFABRIC 137.135.46.202/32
set policy-options prefix-list ITE-INPUT-DST-DDOS-V4 52.120.0.0/15
set policy-options prefix-list ITE-INPUT-DST-DDOS-V6 192.0.0.9/32
set policy-options prefix-list ITE-INPUT-SRC-DDOS-V4 134.70.56.1/32
set policy-options prefix-list ITE-INPUT-SRC-DDOS-V4 134.70.60.1/32
set policy-options prefix-list ITE-INPUT-SRC-DDOS-V4 134.70.64.1/32
set policy-options prefix-list ITE-INPUT-SRC-DDOS-V4 192.0.0.8/32
set policy-options prefix-list ITE-INPUT-SRC-DDOS-V6 192.0.0.8/32
set policy-options prefix-list ITEpremium 13.107.64.0/23
set policy-options prefix-list ITEpremium 52.112.0.0/14
set policy-options prefix-list IXIA_PREFIXES 109.109.109.0/24
set policy-options prefix-list LinkedIn-V4 8.18.31.0/24
set policy-options prefix-list LinkedIn-V4 8.22.120.0/24
set policy-options prefix-list LinkedIn-V4 8.22.121.0/24
set policy-options prefix-list LinkedIn-V4 8.22.161.0/24
set policy-options prefix-list LinkedIn-V4 8.39.42.0/24
set policy-options prefix-list LinkedIn-V4 8.39.53.0/24
set policy-options prefix-list LinkedIn-V4 45.42.64.0/22
set policy-options prefix-list LinkedIn-V4 64.74.98.0/24
set policy-options prefix-list LinkedIn-V4 64.152.25.0/24
set policy-options prefix-list LinkedIn-V4 65.156.227.0/24
set policy-options prefix-list LinkedIn-V4 91.225.248.0/23
set policy-options prefix-list LinkedIn-V4 103.20.92.0/22
set policy-options prefix-list LinkedIn-V4 108.174.0.0/20
set policy-options prefix-list LinkedIn-V4 144.2.0.0/19
set policy-options prefix-list LinkedIn-V4 144.2.176.0/20
set policy-options prefix-list LinkedIn-V4 144.2.192.0/19
set policy-options prefix-list LinkedIn-V4 144.2.224.0/20
set policy-options prefix-list LinkedIn-V4 185.63.144.0/22
set policy-options prefix-list LinkedIn-V4 199.101.160.0/22
set policy-options prefix-list LinkedIn-V4 202.4.184.0/24
set policy-options prefix-list LinkedIn-V4 216.52.16.0/21
set policy-options prefix-list LinkedIn-V4 216.52.242.0/24
set policy-options prefix-list LinkedIn-V6 2405:2300::/32
set policy-options prefix-list LinkedIn-V6 2620:109:c000::/44
set policy-options prefix-list LinkedIn-V6 2620:119:5080::/41
set policy-options prefix-list LinkedIn-V6 2a04:f540::/29
set policy-options prefix-list LinkedIn-V6 2a05:f500::/29
set policy-options prefix-list MAPS-VOICE-PSTN-PREFIX 52.120.0.0/15
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 13.96.0.0/13
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.35.252.0/22
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.128.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.130.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.144.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.176.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 20.180.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 21.0.0.0/8
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 22.0.0.0/8
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 23.103.0.0/18
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.0.0.0/12
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.28.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.33.80.0/20
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.41.3.0/25
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.64.0.0/10
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.128.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.142.0.0/15
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.144.0.0/12
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.160.0.0/11
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.192.0.0/11
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.224.0.0/12
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.244.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 25.248.0.0/13
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 31.0.0.0/8
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 40.66.128.0/17
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 40.108.0.0/19
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 40.108.32.0/19
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 40.108.64.0/18
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 40.109.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 52.132.0.0/14
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 52.145.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 58.0.0.0/8
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 104.146.0.0/19
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 104.146.32.0/19
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 104.146.64.0/18
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 104.147.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 129.75.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 134.177.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 138.196.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 141.251.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 146.147.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.232.4.0/26
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.232.6.0/23
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.235.9.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.235.10.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.235.13.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 191.235.14.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 192.32.0.0/16
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 192.100.102.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 192.100.103.0/24
set policy-options prefix-list MICROSOFT-PRIVATE-ROUTES 198.18.0.0/15
set policy-options prefix-list MOONCAKE-PUBLIC-IP-SPACE-V4 52.120.0.0/15
set policy-options prefix-list MSFT-WHITE-LIST-V4 40.72.0.0/15
set policy-options prefix-list MSFT-WHITE-LIST-V4 40.125.128.0/17
set policy-options prefix-list MSFT-WHITE-LIST-V4 40.126.64.0/18
set policy-options prefix-list MSFT-WHITE-LIST-V4 65.53.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 94.245.64.0/18
set policy-options prefix-list MSFT-WHITE-LIST-V4 103.25.156.0/22
set policy-options prefix-list MSFT-WHITE-LIST-V4 103.36.96.0/22
set policy-options prefix-list MSFT-WHITE-LIST-V4 103.255.140.0/22
set policy-options prefix-list MSFT-WHITE-LIST-V4 111.221.28.0/24
set policy-options prefix-list MSFT-WHITE-LIST-V4 131.107.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 157.54.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 157.57.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 157.59.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 157.60.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 167.220.0.0/16
set policy-options prefix-list MSFT-WHITE-LIST-V4 191.234.96.0/19
set policy-options prefix-list MSFT-WHITE-LIST-V4 194.69.96.0/19
set policy-options prefix-list MSFT-WHITE-LIST-V4 198.105.232.0/22
set policy-options prefix-list MSFT-WHITE-LIST-V4 199.242.48.0/22
set policy-options prefix-list MSFT-WHITE-LIST-V4 202.89.232.0/21
set policy-options prefix-list MSFT-WHITE-LIST-V4 204.182.144.0/24
set policy-options prefix-list MSFT-WHITE-LIST-V4 204.255.244.0/23
set policy-options prefix-list MSFT-WHITE-LIST-V6 2001:4898:8000::/33
set policy-options prefix-list MSFT-WHITE-LIST-V6 2404:f801:8000::/33
set policy-options prefix-list MSFT-WHITE-LIST-V6 2a01:110:8000::/33
set policy-options prefix-list MSFT-WHITE-LIST-V6 2a01:111:f003::/48
set policy-options prefix-list MSFT-WHITE-LIST-V6 2a01:111:f006::/48
set policy-options prefix-list PERMIT-DNS
set policy-options prefix-list PRIVATE-IP-SPACE 10.0.0.0/8
set policy-options prefix-list PRIVATE-IP-SPACE 100.64.0.0/10
set policy-options prefix-list PRIVATE-IP-SPACE 172.16.0.0/12
set policy-options prefix-list PRIVATE-IP-SPACE 192.168.0.0/16
set policy-options prefix-list PRIVATE-V4 10.0.0.0/8
set policy-options prefix-list PRIVATE-V4 13.96.0.0/13
set policy-options prefix-list PRIVATE-V4 20.35.252.0/22
set policy-options prefix-list PRIVATE-V4 20.128.0.0/16
set policy-options prefix-list PRIVATE-V4 20.130.0.0/16
set policy-options prefix-list PRIVATE-V4 20.144.0.0/14
set policy-options prefix-list PRIVATE-V4 20.176.0.0/14
set policy-options prefix-list PRIVATE-V4 20.180.0.0/14
set policy-options prefix-list PRIVATE-V4 21.0.0.0/8
set policy-options prefix-list PRIVATE-V4 22.0.0.0/8
set policy-options prefix-list PRIVATE-V4 23.103.0.0/18
set policy-options prefix-list PRIVATE-V4 25.0.0.0/12
set policy-options prefix-list PRIVATE-V4 25.28.0.0/14
set policy-options prefix-list PRIVATE-V4 25.33.80.0/20
set policy-options prefix-list PRIVATE-V4 25.41.3.0/25
set policy-options prefix-list PRIVATE-V4 25.64.0.0/10
set policy-options prefix-list PRIVATE-V4 25.128.0.0/14
set policy-options prefix-list PRIVATE-V4 25.142.0.0/15
set policy-options prefix-list PRIVATE-V4 25.144.0.0/12
set policy-options prefix-list PRIVATE-V4 25.160.0.0/11
set policy-options prefix-list PRIVATE-V4 25.192.0.0/11
set policy-options prefix-list PRIVATE-V4 25.224.0.0/12
set policy-options prefix-list PRIVATE-V4 25.244.0.0/14
set policy-options prefix-list PRIVATE-V4 25.248.0.0/13
set policy-options prefix-list PRIVATE-V4 40.66.128.0/17
set policy-options prefix-list PRIVATE-V4 40.108.0.0/19
set policy-options prefix-list PRIVATE-V4 40.108.32.0/19
set policy-options prefix-list PRIVATE-V4 40.108.64.0/18
set policy-options prefix-list PRIVATE-V4 40.109.0.0/16
set policy-options prefix-list PRIVATE-V4 52.132.0.0/14
set policy-options prefix-list PRIVATE-V4 52.145.0.0/16
set policy-options prefix-list PRIVATE-V4 100.64.0.0/10
set policy-options prefix-list PRIVATE-V4 104.146.0.0/19
set policy-options prefix-list PRIVATE-V4 104.146.32.0/19
set policy-options prefix-list PRIVATE-V4 104.146.64.0/18
set policy-options prefix-list PRIVATE-V4 104.147.0.0/16
set policy-options prefix-list PRIVATE-V4 129.75.0.0/16
set policy-options prefix-list PRIVATE-V4 134.177.0.0/16
set policy-options prefix-list PRIVATE-V4 138.196.0.0/16
set policy-options prefix-list PRIVATE-V4 141.251.0.0/16
set policy-options prefix-list PRIVATE-V4 146.147.0.0/16
set policy-options prefix-list PRIVATE-V4 172.16.0.0/12
set policy-options prefix-list PRIVATE-V4 191.232.4.0/26
set policy-options prefix-list PRIVATE-V4 191.232.6.0/23
set policy-options prefix-list PRIVATE-V4 191.235.9.0/24
set policy-options prefix-list PRIVATE-V4 191.235.10.0/24
set policy-options prefix-list PRIVATE-V4 191.235.13.0/24
set policy-options prefix-list PRIVATE-V4 191.235.14.0/24
set policy-options prefix-list PRIVATE-V4 192.32.0.0/16
set policy-options prefix-list PRIVATE-V4 192.100.102.0/24
set policy-options prefix-list PRIVATE-V4 192.100.103.0/24
set policy-options prefix-list PRIVATE-V4 192.168.0.0/16
set policy-options prefix-list PRIVATE-V4 198.18.0.0/15
set policy-options prefix-list PRIVATE-V6 2001:506:28::/48
set policy-options prefix-list PRIVATE-V6 2001:4898::/33
set policy-options prefix-list PRIVATE-V6 2001:4899::/32
set policy-options prefix-list PRIVATE-V6 2001:489a::/35
set policy-options prefix-list PRIVATE-V6 2001:489a:e000::/35
set policy-options prefix-list PRIVATE-V6 2404:f800::/32
set policy-options prefix-list PRIVATE-V6 2404:f801::/33
set policy-options prefix-list PRIVATE-V6 2406:e500:8000::/33
set policy-options prefix-list PRIVATE-V6 2603:1080::/25
set policy-options prefix-list PRIVATE-V6 2801:80:1d0:2000::/52
set policy-options prefix-list PRIVATE-V6 2a01:110::/33
set policy-options prefix-list PRIVATE-V6 2a01:111::/36
set policy-options prefix-list PRIVATE-V6 2a01:111:e000::/36
set policy-options prefix-list PRIVATE-V6 2a01:4180:8000::/33
set policy-options prefix-list SCAVENGER-DST-DDOS 192.0.0.9/32
set policy-options prefix-list SCAVENGER-SRC-DDOS 2.2.2.2/32
set policy-options prefix-list SCAVENGER-SRC-DDOS 13.107.246.40/32
set policy-options prefix-list SCAVENGER-SRC-DDOS 192.0.0.8/32
set policy-options prefix-list SPOOF-EXCEPTION-V4 40.72.0.0/15
set policy-options prefix-list SPOOF-EXCEPTION-V4 40.125.128.0/17
set policy-options prefix-list SPOOF-EXCEPTION-V4 40.126.64.0/18
set policy-options prefix-list SPOOF-EXCEPTION-V4 64.41.193.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 65.53.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 65.55.28.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 65.55.42.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 65.55.88.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 91.190.216.0/21
set policy-options prefix-list SPOOF-EXCEPTION-V4 94.245.84.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 103.36.96.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 103.255.140.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 131.107.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.54.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.55.52.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.56.70.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.56.152.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.57.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.58.2.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.58.248.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.59.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 157.60.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 167.220.0.0/16
set policy-options prefix-list SPOOF-EXCEPTION-V4 191.234.96.0/19
set policy-options prefix-list SPOOF-EXCEPTION-V4 194.69.96.0/19
set policy-options prefix-list SPOOF-EXCEPTION-V4 198.105.232.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 199.2.137.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 199.242.48.0/22
set policy-options prefix-list SPOOF-EXCEPTION-V4 202.89.232.0/21
set policy-options prefix-list SPOOF-EXCEPTION-V4 204.176.46.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 204.182.144.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 204.255.244.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 209.1.15.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.144.64/27
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.144.160/27
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.145.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.146.128/25
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.147.96/27
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.147.128/25
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.150.0/23
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.152.0/26
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.152.64/26
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.153.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 213.199.155.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 216.32.180.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 216.34.51.0/24
set policy-options prefix-list SPOOF-EXCEPTION-V4 216.128.112.0/20
set policy-options prefix-list SWAN-SVCS 100.0.0.0/8
set policy-options prefix-list TEAMS-PREFIX-V4 52.120.0.0/15
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.17.96/27
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.17.160/27
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.19.96/27
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.20.0/26
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.20.64/29
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.21.0/27
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.21.32/27
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.21.128/25
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.22.0/24
set policy-options prefix-list TEMP-DENY-207-46-0-0 207.46.23.0/24
set policy-options prefix-list TEMP-DENY-207-46-96-0 207.46.96.0/26
set policy-options prefix-list TEMP-DENY-207-46-96-0 207.46.96.96/27
set policy-options prefix-list TEMP-DENY-207-46-96-0 207.46.96.240/28
set policy-options prefix-list TEMP-DENY-207-46-96-0 207.46.97.128/25
set policy-options prefix-list WPS-EDGE 157.55.112.64/27
set policy-options prefix-list WPS-PTNR 157.56.144.64/26
set policy-options prefix-list XBOX-V4 52.120.0.0/15
set policy-options prefix-list adcenter-vip 10.2.161.23/32
set policy-options prefix-list adcenter-vip 10.28.37.166/32
set policy-options prefix-list adcenter-vip 64.4.22.45/32
set policy-options prefix-list adcenter-vip 65.52.107.201/32
set policy-options prefix-list adcenter-vip 65.52.107.205/32
set policy-options prefix-list adcenter-vip 65.54.165.16/32
set policy-options prefix-list adcenter-vip 65.54.165.25/32
set policy-options prefix-list adcenter-vip 65.54.165.43/32
set policy-options prefix-list adcenter-vip 65.54.165.73/32
set policy-options prefix-list adcenter-vip 65.54.165.77/32
set policy-options prefix-list adcenter-vip 65.54.165.78/32
set policy-options prefix-list adcenter-vip 65.54.165.96/32
set policy-options prefix-list adcenter-vip 65.54.165.121/32
set policy-options prefix-list adcenter-vip 65.54.165.124/32
set policy-options prefix-list adcenter-vip 65.54.248.170/32
set policy-options prefix-list adcenter-vip 65.54.248.181/32
set policy-options prefix-list adcenter-vip 65.54.248.182/32
set policy-options prefix-list adcenter-vip 65.54.249.180/32
set policy-options prefix-list adcenter-vip 65.54.249.181/32
set policy-options prefix-list adcenter-vip 65.55.129.212/32
set policy-options prefix-list adcenter-vip 65.55.130.11/32
set policy-options prefix-list adcenter-vip 65.55.130.14/32
set policy-options prefix-list adcenter-vip 65.55.130.20/32
set policy-options prefix-list adcenter-vip 65.55.130.32/32
set policy-options prefix-list adcenter-vip 65.55.130.34/32
set policy-options prefix-list adcenter-vip 65.55.130.36/32
set policy-options prefix-list adcenter-vip 65.55.157.87/32
set policy-options prefix-list adcenter-vip 111.221.21.42/32
set policy-options prefix-list adcenter-vip 157.55.40.29/32
set policy-options prefix-list adcenter-vip 207.46.202.50/32
set policy-options prefix-list adcenter-vip 207.46.202.77/32
set policy-options prefix-list adcenter-vip 207.46.202.78/32
set policy-options prefix-list adcenter-vip 207.46.202.97/32
set policy-options prefix-list adcenter-vip 207.46.202.100/32
set policy-options prefix-list adcenter-vip 207.46.202.109/32
set policy-options prefix-list adcenter-vip 207.46.202.114/32
set policy-options prefix-list adcenter-vip 207.46.202.118/32
set policy-options prefix-list adcenter-vip 207.46.202.125/32
set policy-options prefix-list adcenter-vip 207.46.202.126/32
set policy-options prefix-list bgp-list apply-path "protocols bgp group <*> neighbor <*>"
set policy-options prefix-list bgp-vrf apply-path "routing-instances <*> protocols bgp group <*> neighbor <*>"
set policy-options prefix-list bing-fd-vip 10.6.215.19/32
set policy-options prefix-list bing-fd-vip 10.6.215.21/32
set policy-options prefix-list bing-fd-vip 10.6.215.27/32
set policy-options prefix-list bing-fd-vip 10.6.215.54/32
set policy-options prefix-list bing-fd-vip 10.6.215.57/32
set policy-options prefix-list bing-fd-vip 10.8.66.8/32
set policy-options prefix-list bing-fd-vip 10.8.67.6/32
set policy-options prefix-list bing-fd-vip 10.8.67.44/32
set policy-options prefix-list bing-fd-vip 10.8.74.6/32
set policy-options prefix-list bing-fd-vip 10.8.74.80/32
set policy-options prefix-list bing-fd-vip 10.8.74.81/32
set policy-options prefix-list bing-fd-vip 10.8.75.13/32
set policy-options prefix-list bing-fd-vip 10.8.75.74/32
set policy-options prefix-list bing-fd-vip 10.8.75.84/32
set policy-options prefix-list bing-fd-vip 10.8.75.85/32
set policy-options prefix-list bing-fd-vip 10.12.56.178/32
set policy-options prefix-list bing-fd-vip 10.12.56.224/32
set policy-options prefix-list bing-fd-vip 10.12.56.225/32
set policy-options prefix-list bing-fd-vip 10.12.103.42/32
set policy-options prefix-list bing-fd-vip 10.12.103.47/32
set policy-options prefix-list bing-fd-vip 10.12.103.56/32
set policy-options prefix-list bing-fd-vip 10.12.103.96/32
set policy-options prefix-list bing-fd-vip 10.12.103.100/32
set policy-options prefix-list bing-fd-vip 10.12.103.110/32
set policy-options prefix-list bing-fd-vip 10.12.103.162/32
set policy-options prefix-list bing-fd-vip 10.12.103.198/32
set policy-options prefix-list bing-fd-vip 10.12.103.205/32
set policy-options prefix-list bing-fd-vip 10.12.103.234/32
set policy-options prefix-list bing-fd-vip 10.12.103.235/32
set policy-options prefix-list bing-fd-vip 10.12.103.236/32
set policy-options prefix-list bing-fd-vip 10.12.103.238/32
set policy-options prefix-list bing-fd-vip 10.24.205.14/32
set policy-options prefix-list bing-fd-vip 10.24.205.15/32
set policy-options prefix-list bing-fd-vip 10.24.205.27/32
set policy-options prefix-list bing-fd-vip 10.24.205.64/32
set policy-options prefix-list bing-fd-vip 10.24.205.65/32
set policy-options prefix-list bing-fd-vip 10.29.89.14/32
set policy-options prefix-list bing-fd-vip 10.29.89.41/32
set policy-options prefix-list bing-fd-vip 10.29.89.55/32
set policy-options prefix-list bing-fd-vip 10.29.89.57/32
set policy-options prefix-list bing-fd-vip 10.29.171.124/32
set policy-options prefix-list bing-fd-vip 10.46.252.11/32
set policy-options prefix-list bing-fd-vip 10.46.252.12/32
set policy-options prefix-list bing-fd-vip 10.46.253.5/32
set policy-options prefix-list bing-fd-vip 10.48.160.43/32
set policy-options prefix-list bing-fd-vip 10.54.142.224/32
set policy-options prefix-list bing-fd-vip 10.55.209.139/32
set policy-options prefix-list bing-fd-vip 10.55.209.140/32
set policy-options prefix-list bing-fd-vip 10.55.209.141/32
set policy-options prefix-list bing-fd-vip 10.55.209.142/32
set policy-options prefix-list bing-fd-vip 10.55.209.143/32
set policy-options prefix-list bing-fd-vip 10.55.209.144/32
set policy-options prefix-list bing-fd-vip 10.55.209.145/32
set policy-options prefix-list bing-fd-vip 10.55.209.146/32
set policy-options prefix-list bing-fd-vip 10.55.209.147/32
set policy-options prefix-list bing-fd-vip 10.55.209.148/32
set policy-options prefix-list bing-fd-vip 10.55.209.149/32
set policy-options prefix-list bing-fd-vip 10.55.209.150/32
set policy-options prefix-list bing-fd-vip 10.55.209.151/32
set policy-options prefix-list bing-fd-vip 10.55.209.152/32
set policy-options prefix-list bing-fd-vip 10.55.209.153/32
set policy-options prefix-list bing-fd-vip 10.55.209.154/32
set policy-options prefix-list bing-fd-vip 10.55.209.155/32
set policy-options prefix-list bing-fd-vip 10.55.209.158/32
set policy-options prefix-list bing-fd-vip 10.173.152.52/32
set policy-options prefix-list bing-fd-vip 10.173.152.53/32
set policy-options prefix-list bing-fd-vip 10.173.152.121/32
set policy-options prefix-list bing-fd-vip 10.173.152.123/32
set policy-options prefix-list bing-fd-vip 10.173.152.124/32
set policy-options prefix-list bing-fd-vip 10.173.152.125/32
set policy-options prefix-list bing-fd-vip 10.173.152.127/32
set policy-options prefix-list bing-fd-vip 10.173.152.141/32
set policy-options prefix-list bing-fd-vip 10.173.152.162/32
set policy-options prefix-list bing-fd-vip 10.173.152.163/32
set policy-options prefix-list bing-fd-vip 10.173.152.164/32
set policy-options prefix-list bing-fd-vip 10.173.152.165/32
set policy-options prefix-list bing-fd-vip 10.173.154.90/32
set policy-options prefix-list bing-fd-vip 10.173.154.101/32
set policy-options prefix-list bing-fd-vip 10.173.155.5/32
set policy-options prefix-list bing-fd-vip 10.173.155.15/32
set policy-options prefix-list bing-fd-vip 10.173.155.16/32
set policy-options prefix-list bing-fd-vip 10.173.155.26/32
set policy-options prefix-list bing-fd-vip 10.173.155.41/32
set policy-options prefix-list bing-fd-vip 10.173.156.116/32
set policy-options prefix-list bing-fd-vip 10.173.156.122/32
set policy-options prefix-list bing-fd-vip 10.173.156.166/32
set policy-options prefix-list bing-fd-vip 10.173.156.169/32
set policy-options prefix-list bing-fd-vip 10.173.157.35/32
set policy-options prefix-list bing-fd-vip 10.173.157.45/32
set policy-options prefix-list bing-fd-vip 10.173.157.46/32
set policy-options prefix-list bing-fd-vip 10.173.157.116/32
set policy-options prefix-list bing-fd-vip 10.173.157.197/32
set policy-options prefix-list bing-fd-vip 10.173.157.198/32
set policy-options prefix-list bing-fd-vip 10.173.157.207/32
set policy-options prefix-list bing-fd-vip 10.173.157.223/32
set policy-options prefix-list bing-fd-vip 10.173.157.242/32
set policy-options prefix-list bing-fd-vip 10.173.157.243/32
set policy-options prefix-list bing-fd-vip 10.173.157.249/32
set policy-options prefix-list bing-fd-vip 10.173.157.254/32
set policy-options prefix-list bing-fd-vip 10.210.32.37/32
set policy-options prefix-list bing-fd-vip 65.55.4.14/32
set policy-options prefix-list bing-fd-vip 65.55.4.20/32
set policy-options prefix-list bing-fd-vip 65.55.60.167/32
set policy-options prefix-list bing-fd-vip 65.55.60.168/32
set policy-options prefix-list bing-fd-vip 65.55.60.169/32
set policy-options prefix-list bing-fd-vip 65.55.60.170/32
set policy-options prefix-list bing-fd-vip 65.55.60.190/32
set policy-options prefix-list bing-fd-vip 65.55.105.11/32
set policy-options prefix-list bing-fd-vip 65.55.105.20/32
set policy-options prefix-list bing-fd-vip 65.55.105.41/32
set policy-options prefix-list bing-fd-vip 65.55.105.54/32
set policy-options prefix-list bing-fd-vip 65.55.105.64/32
set policy-options prefix-list bing-fd-vip 65.55.105.104/32
set policy-options prefix-list bing-fd-vip 65.55.105.123/32
set policy-options prefix-list bing-fd-vip 65.55.105.224/32
set policy-options prefix-list bing-fd-vip 65.55.105.226/32
set policy-options prefix-list bing-fd-vip 65.55.105.227/32
set policy-options prefix-list bing-fd-vip 65.55.105.229/32
set policy-options prefix-list bing-fd-vip 65.55.105.247/32
set policy-options prefix-list bing-fd-vip 65.55.105.254/32
set policy-options prefix-list bing-fd-vip 65.55.106.18/32
set policy-options prefix-list bing-fd-vip 65.55.106.58/32
set policy-options prefix-list bing-fd-vip 65.55.106.106/32
set policy-options prefix-list bing-fd-vip 65.55.106.139/32
set policy-options prefix-list bing-fd-vip 65.55.106.179/32
set policy-options prefix-list bing-fd-vip 65.55.106.218/32
set policy-options prefix-list bing-fd-vip 65.55.106.219/32
set policy-options prefix-list bing-fd-vip 65.55.106.220/32
set policy-options prefix-list bing-fd-vip 65.55.107.5/32
set policy-options prefix-list bing-fd-vip 65.55.107.95/32
set policy-options prefix-list bing-fd-vip 65.55.107.102/32
set policy-options prefix-list bing-fd-vip 65.55.107.111/32
set policy-options prefix-list bing-fd-vip 65.55.250.6/32
set policy-options prefix-list bing-fd-vip 65.55.250.7/32
set policy-options prefix-list bing-fd-vip 65.55.250.8/32
set policy-options prefix-list bing-fd-vip 65.55.250.10/32
set policy-options prefix-list bing-fd-vip 65.55.250.15/32
set policy-options prefix-list bing-fd-vip 111.221.29.3/32
set policy-options prefix-list bing-fd-vip 111.221.30.4/32
set policy-options prefix-list bing-fd-vip 111.221.30.8/32
set policy-options prefix-list bing-fd-vip 111.221.30.11/32
set policy-options prefix-list bing-fd-vip 111.221.30.12/32
set policy-options prefix-list bing-fd-vip 111.221.30.13/32
set policy-options prefix-list bing-fd-vip 111.221.30.15/32
set policy-options prefix-list bing-fd-vip 111.221.30.18/32
set policy-options prefix-list bing-fd-vip 111.221.30.29/32
set policy-options prefix-list bing-fd-vip 111.221.30.34/32
set policy-options prefix-list bing-fd-vip 111.221.30.40/32
set policy-options prefix-list bing-fd-vip 111.221.30.41/32
set policy-options prefix-list bing-fd-vip 111.221.30.42/32
set policy-options prefix-list bing-fd-vip 111.221.30.43/32
set policy-options prefix-list bing-fd-vip 111.221.30.44/32
set policy-options prefix-list bing-fd-vip 111.221.30.45/32
set policy-options prefix-list bing-fd-vip 111.221.30.50/32
set policy-options prefix-list bing-fd-vip 131.253.12.51/32
set policy-options prefix-list bing-fd-vip 131.253.12.52/32
set policy-options prefix-list bing-fd-vip 131.253.12.55/32
set policy-options prefix-list bing-fd-vip 131.253.12.168/32
set policy-options prefix-list bing-fd-vip 131.253.12.177/32
set policy-options prefix-list bing-fd-vip 131.253.12.183/32
set policy-options prefix-list bing-fd-vip 131.253.12.186/32
set policy-options prefix-list bing-fd-vip 131.253.12.246/32
set policy-options prefix-list bing-fd-vip 131.253.13.1/32
set policy-options prefix-list bing-fd-vip 131.253.13.2/32
set policy-options prefix-list bing-fd-vip 131.253.13.4/32
set policy-options prefix-list bing-fd-vip 131.253.13.5/32
set policy-options prefix-list bing-fd-vip 131.253.13.6/32
set policy-options prefix-list bing-fd-vip 131.253.13.8/32
set policy-options prefix-list bing-fd-vip 131.253.13.19/32
set policy-options prefix-list bing-fd-vip 131.253.13.21/32
set policy-options prefix-list bing-fd-vip 131.253.13.48/32
set policy-options prefix-list bing-fd-vip 131.253.13.52/32
set policy-options prefix-list bing-fd-vip 131.253.13.117/32
set policy-options prefix-list bing-fd-vip 131.253.13.134/32
set policy-options prefix-list bing-fd-vip 131.253.13.140/32
set policy-options prefix-list bing-fd-vip 131.253.13.162/32
set policy-options prefix-list bing-fd-vip 131.253.13.163/32
set policy-options prefix-list bing-fd-vip 131.253.13.165/32
set policy-options prefix-list bing-fd-vip 131.253.13.200/32
set policy-options prefix-list bing-fd-vip 131.253.13.208/32
set policy-options prefix-list bing-fd-vip 131.253.13.226/32
set policy-options prefix-list bing-fd-vip 131.253.13.229/32
set policy-options prefix-list bing-fd-vip 131.253.13.238/32
set policy-options prefix-list bing-fd-vip 131.253.13.239/32
set policy-options prefix-list bing-fd-vip 131.253.13.244/32
set policy-options prefix-list bing-fd-vip 131.253.14.138/32
set policy-options prefix-list bing-fd-vip 131.253.14.210/32
set policy-options prefix-list bing-fd-vip 131.253.15.16/32
set policy-options prefix-list bing-fd-vip 131.253.15.35/32
set policy-options prefix-list bing-fd-vip 131.253.21.10/32
set policy-options prefix-list bing-fd-vip 131.253.21.20/32
set policy-options prefix-list bing-fd-vip 131.253.32.4/32
set policy-options prefix-list bing-fd-vip 131.253.32.12/32
set policy-options prefix-list bing-fd-vip 131.253.32.20/32
set policy-options prefix-list bing-fd-vip 131.253.32.28/32
set policy-options prefix-list bing-fd-vip 131.253.32.36/32
set policy-options prefix-list bing-fd-vip 131.253.32.44/32
set policy-options prefix-list bing-fd-vip 131.253.32.52/32
set policy-options prefix-list bing-fd-vip 131.253.32.60/32
set policy-options prefix-list bing-fd-vip 131.253.32.68/32
set policy-options prefix-list bing-fd-vip 131.253.32.76/32
set policy-options prefix-list bing-fd-vip 131.253.33.202/32
set policy-options prefix-list bing-fd-vip 131.253.34.1/32
set policy-options prefix-list bing-fd-vip 131.253.40.1/32
set policy-options prefix-list bing-fd-vip 131.253.40.37/32
set policy-options prefix-list bing-fd-vip 134.170.220.30/32
set policy-options prefix-list bing-fd-vip 134.170.220.43/32
set policy-options prefix-list bing-fd-vip 134.170.220.157/32
set policy-options prefix-list bing-fd-vip 134.170.221.14/32
set policy-options prefix-list bing-fd-vip 134.170.221.17/32
set policy-options prefix-list bing-fd-vip 134.170.221.18/32
set policy-options prefix-list bing-fd-vip 134.170.221.19/32
set policy-options prefix-list bing-fd-vip 134.170.221.29/32
set policy-options prefix-list bing-fd-vip 134.170.221.59/32
set policy-options prefix-list bing-fd-vip 134.170.221.60/32
set policy-options prefix-list bing-fd-vip 134.170.221.61/32
set policy-options prefix-list bing-fd-vip 134.170.221.62/32
set policy-options prefix-list bing-fd-vip 134.170.221.63/32
set policy-options prefix-list bing-fd-vip 134.170.221.67/32
set policy-options prefix-list bing-fd-vip 134.170.221.113/32
set policy-options prefix-list bing-fd-vip 134.170.221.149/32
set policy-options prefix-list bing-fd-vip 134.170.221.150/32
set policy-options prefix-list bing-fd-vip 134.170.222.3/32
set policy-options prefix-list bing-fd-vip 134.170.222.23/32
set policy-options prefix-list bing-fd-vip 134.170.222.55/32
set policy-options prefix-list bing-fd-vip 134.170.222.56/32
set policy-options prefix-list bing-fd-vip 134.170.222.91/32
set policy-options prefix-list bing-fd-vip 134.170.223.46/32
set policy-options prefix-list bing-fd-vip 134.170.223.48/32
set policy-options prefix-list bing-fd-vip 134.170.223.73/32
set policy-options prefix-list bing-fd-vip 134.170.223.106/32
set policy-options prefix-list bing-fd-vip 134.170.223.141/32
set policy-options prefix-list bing-fd-vip 157.55.37.50/32
set policy-options prefix-list bing-fd-vip 157.55.55.104/32
set policy-options prefix-list bing-fd-vip 157.55.55.108/32
set policy-options prefix-list bing-fd-vip 157.55.55.109/32
set policy-options prefix-list bing-fd-vip 157.55.55.115/32
set policy-options prefix-list bing-fd-vip 157.55.55.126/32
set policy-options prefix-list bing-fd-vip 157.55.55.127/32
set policy-options prefix-list bing-fd-vip 157.55.55.132/32
set policy-options prefix-list bing-fd-vip 157.55.55.141/32
set policy-options prefix-list bing-fd-vip 157.55.55.145/32
set policy-options prefix-list bing-fd-vip 157.55.55.160/32
set policy-options prefix-list bing-fd-vip 191.234.6.100/32
set policy-options prefix-list bing-fd-vip 191.234.6.121/32
set policy-options prefix-list bing-fd-vip 191.234.6.200/32
set policy-options prefix-list bing-fd-vip 202.89.233.70/32
set policy-options prefix-list bing-fd-vip 204.79.197.10/32
set policy-options prefix-list bing-fd-vip 204.79.197.20/32
set policy-options prefix-list bing-fd-vip 204.79.197.200/32
set policy-options prefix-list bing-fd-vip 204.79.197.201/32
set policy-options prefix-list bing-fd-vip 207.46.194.1/32
set policy-options prefix-list bing-fd-vip 207.68.174.4/32
set policy-options prefix-list bing-fd-vip 207.68.174.9/32
set policy-options prefix-list bing-fd-vip 207.68.174.11/32
set policy-options prefix-list bing-fd-vip 207.68.174.39/32
set policy-options prefix-list bing-fd-vip 207.68.174.49/32
set policy-options prefix-list bing-fd-vip 207.68.174.81/32
set policy-options prefix-list bing-fd-vip 207.68.174.84/32
set policy-options prefix-list bing-fd-vip 207.68.174.91/32
set policy-options prefix-list bing-fd-vip 207.68.174.93/32
set policy-options prefix-list bing-fd-vip 207.68.174.97/32
set policy-options prefix-list bing-fd-vip 207.68.174.99/32
set policy-options prefix-list bing-fd-vip 207.68.174.102/32
set policy-options prefix-list bing-fd-vip 207.68.174.130/32
set policy-options prefix-list bing-fd-vip 207.68.174.140/32
set policy-options prefix-list bing-fd-vip 207.68.174.141/32
set policy-options prefix-list bing-fd-vip 207.68.174.148/32
set policy-options prefix-list bing-fd-vip 207.68.174.163/32
set policy-options prefix-list bing-fd-vip 207.68.174.169/32
set policy-options prefix-list bing-fd-vip 207.68.174.170/32
set policy-options prefix-list bing-fd-vip 207.68.174.171/32
set policy-options prefix-list bing-fd-vip 207.68.174.174/32
set policy-options prefix-list bing-fd-vip 207.68.174.179/32
set policy-options prefix-list bing-fd-vip 207.68.174.180/32
set policy-options prefix-list bing-fd-vip 207.68.174.227/32
set policy-options prefix-list bing-fd-vip 213.199.169.7/32
set policy-options prefix-list bmp-station 10.52.180.177/32
set policy-options prefix-list bmp-station 25.71.41.207/32
set policy-options prefix-list bmp-station 25.71.55.150/32
set policy-options prefix-list bmp-station 25.114.116.25/32
set policy-options prefix-list deny_static_bgp
set policy-options prefix-list dns-list apply-path "system name-server <*>"
set policy-options prefix-list dst-traceme 3.3.0.0/24
set policy-options prefix-list ipv6-bgp-list apply-path "protocols bgp group <*> neighbor <*>"
set policy-options prefix-list ipv6-bgp-vrf apply-path "routing-instances <*> protocols bgp group <*> neighbor <*>"
set policy-options prefix-list ipv6-customer-ip-space 2001:4898::/32
set policy-options prefix-list ipv6-customer-ip-space 2620:0:30::/45
set policy-options prefix-list ipv6-dacis_partners_prefixes 2001:5a0:4406:ffd0::/61
set policy-options prefix-list ipv6-prefix-windows-update 2620:1ec:5::54/128
set policy-options prefix-list ipv6-prefix-windows-update 2620:1ec:29::10/128
set policy-options prefix-list ipv6-prefix-windows-update 2620:1ec:29::254/128
set policy-options prefix-list ipv6-prefix-windows-update 2620:1ec:bdf::11/128
set policy-options prefix-list ipv6-prefix-windows-update 2a01:111:2003::50/128
set policy-options prefix-list ipv6-prefix-windows-update 2a01:111:2003::54/128
set policy-options prefix-list ipv6-prefix-windows-update 2a01:111:202c::50/128
set policy-options prefix-list ipv6-snmp-list
set policy-options prefix-list ipv6-ssh-list 2001:506:28::/52
set policy-options prefix-list ipv6-ssh-list 2001:506:28:6000::/52
set policy-options prefix-list ipv6-tools-list 2001:506:28::/52
set policy-options prefix-list ipv6-tools-list 2001:506:28:6000::/52
set policy-options prefix-list ipv6_deny_connected_bgp
set policy-options prefix-list ipv6_permit_aggregate_bgp
set policy-options prefix-list ipv6_permit_pullup_bgp
set policy-options prefix-list ipv6_permit_static_bgp
set policy-options prefix-list ipv6_permit_static_bgp_anchor
set policy-options prefix-list local-ips apply-path "interfaces <*> unit <*> family inet address <*>"
set policy-options prefix-list local-ips-v6 apply-path "interfaces <*> unit <*> family inet6 address <*>"
set policy-options prefix-list loopback apply-path "interfaces lo0 unit 0 family inet address <*>"
set policy-options prefix-list loopback_allow 10.3.151.4/32
set policy-options prefix-list loopback_allow 10.3.151.8/32
set policy-options prefix-list loopback_allow 10.3.151.14/32
set policy-options prefix-list loopback_allow 10.3.151.24/32
set policy-options prefix-list loopback_allow 10.3.151.27/32
set policy-options prefix-list loopback_allow 10.3.151.34/32
set policy-options prefix-list loopback_allow 10.3.151.39/32
set policy-options prefix-list loopback_allow 10.3.151.41/32
set policy-options prefix-list loopback_allow 10.3.151.46/32
set policy-options prefix-list lspend-ips apply-path "protocols mpls label-switched-path <*> to <*>"
set policy-options prefix-list ntp-list apply-path "system ntp server <*>"
set policy-options prefix-list overlapp-blocks 10.244.0.0/25
set policy-options prefix-list overlapp-blocks 10.244.0.128/26
set policy-options prefix-list overlapp-blocks 65.55.80.8/30
set policy-options prefix-list overlapp-blocks 131.253.61.64/29
set policy-options prefix-list overlapp-blocks 131.253.61.80/29
set policy-options prefix-list overlapp-blocks 131.253.61.96/29
set policy-options prefix-list permit_connected_bgp
set policy-options prefix-list permit_connected_bgp_exceptions 10.12.97.128/26
set policy-options prefix-list permit_connected_bgp_exceptions 10.20.81.64/26
set policy-options prefix-list permit_connected_bgp_exceptions 66.119.150.0/26
set policy-options prefix-list permit_connected_bgp_exceptions 66.119.150.64/26
set policy-options prefix-list permit_connected_bgp_exceptions 207.46.33.32/28
set policy-options prefix-list permit_static_bgp
set policy-options prefix-list permit_static_bgp_anchor
set policy-options prefix-list prefix-snmpx 10.3.145.60/32
set policy-options prefix-list prefix-snmpx 10.20.6.32/27
set policy-options prefix-list prefix-snmpx 10.20.6.64/27
set policy-options prefix-list prefix-snmpx 10.20.6.192/27
set policy-options prefix-list prefix-snmpx 10.20.17.160/27
set policy-options prefix-list prefix-snmpx 10.20.17.224/27
set policy-options prefix-list prefix-windows-update 13.107.4.50/32
set policy-options prefix-list prefix-windows-update 13.107.4.54/32
set policy-options prefix-list prefix-windows-update 13.107.12.54/32
set policy-options prefix-list prefix-windows-update 13.107.246.11/32
set policy-options prefix-list prefix-windows-update 13.107.253.10/32
set policy-options prefix-list prefix-windows-update 13.107.253.254/32
set policy-options prefix-list prefix-windows-update 40.77.226.72/32
set policy-options prefix-list prefix-windows-update 40.77.226.181/32
set policy-options prefix-list prefix-windows-update 40.77.228.30/32
set policy-options prefix-list prefix-windows-update 40.77.232.59/32
set policy-options prefix-list prefix-windows-update 131.253.33.50/32
set policy-options prefix-list provisioning-list 10.8.184.0/25
set policy-options prefix-list snmp-list apply-path "snmp community <*> clients <*>"
set policy-options prefix-list snmp-traps-list apply-path "snmp trap-group <*> targets <*>"
set policy-options prefix-list src-traceme 0.0.0.1/32
set policy-options prefix-list ssh-list 10.3.144.0/20
set policy-options prefix-list ssh-list 10.20.0.0/18
set policy-options prefix-list ssh-list 10.20.192.0/18
set policy-options prefix-list ssh-list 10.41.192.0/18
set policy-options prefix-list ssh-list 10.64.0.0/18
set policy-options prefix-list ssh-list 10.130.48.5/32
set policy-options prefix-list ssh-list 25.66.128.0/17
set policy-options prefix-list ssh-list 40.90.144.235/32
set policy-options prefix-list ssh-list 40.90.146.191/32
set policy-options prefix-list ssh-list 40.90.147.119/32
set policy-options prefix-list ssh-list 40.90.155.26/32
set policy-options prefix-list ssh-list 70.37.160.97/32
set policy-options prefix-list ssh-list 70.37.161.124/32
set policy-options prefix-list ssh-list 100.64.0.0/10
set policy-options prefix-list ssh-list 168.62.208.162/32
set policy-options prefix-list ssh-list 168.62.209.95/32
set policy-options prefix-list ssh-list-er 13.87.35.147/32
set policy-options prefix-list ssh-list-er 13.87.36.246/32
set policy-options prefix-list ssh-list-er 13.93.112.146/32
set policy-options prefix-list ssh-list-er 13.93.117.26/32
set policy-options prefix-list ssh-list-er 51.140.63.41/32
set policy-options prefix-list ssh-list-er 51.140.114.209/32
set policy-options prefix-list ssh-list-er 51.141.25.80/32
set policy-options prefix-list ssh-list-er 51.141.29.178/32
set policy-options prefix-list ssh-list-er 51.142.209.124/32
set policy-options prefix-list ssh-list-er 51.142.210.184/32
set policy-options prefix-list ssh-list-er 52.136.137.15/32
set policy-options prefix-list ssh-list-er 52.136.137.16/32
set policy-options prefix-list ssh-list-er 52.143.136.58/32
set policy-options prefix-list ssh-list-er 52.143.136.59/32
set policy-options prefix-list ssh-list-er 52.169.225.171/32
set policy-options prefix-list ssh-list-er 52.169.231.163/32
set policy-options prefix-list tacacs-list 10.241.221.33/32
set policy-options prefix-list tacacs-list 10.241.221.44/32
set policy-options prefix-list tacacs-list 10.241.221.45/32
set policy-options prefix-list tools-list 10.20.0.0/18
set policy-options prefix-list tools-list 10.41.192.0/18
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_bogon from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_bogon then reject
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_transit from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_transit from as-path as-path-100
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_transit then reject
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_stupid_long_as_path from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_stupid_long_as_path from as-path as-path-75
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject_stupid_long_as_path then reject
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term overload-knob then next term
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload from as-path as-path-16
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload from color 10293
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then metric 80
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then color 20
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then local-preference 10
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then community add 8075-FREEPRIVATE-COMMUNITY
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path_overload then accept
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path from as-path as-path-16
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then metric 80
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then color 20
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then local-preference 100
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then community add 8075-FREEPRIVATE-COMMUNITY
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term depref_long_as_path then accept
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload from color 10293
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then metric 80
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then color 20
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then local-preference 10
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then community add 8075-FREEPRIVATE-COMMUNITY
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest_overload then accept
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest from protocol bgp
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then metric 80
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then color 20
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then local-preference 300
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then community add 8075-FREEPRIVATE-COMMUNITY
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term accept_rest then accept
set policy-options policy-statement 8075-FREEPRIVATE-PEER-IN term reject-rest then reject
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068_overload from protocol bgp
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068_overload from as-path AS8068
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068_overload from color 10293
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068_overload then local-preference 10
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068_overload then accept
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068 from protocol bgp
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068 from as-path AS8068
set policy-options policy-statement ADVERTISE-AS8068 term allow_8068 then accept
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term bogon from protocol bgp
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term bogon then reject
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term no-advertise from protocol bgp
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term no-advertise then reject
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term region-no-advertise from protocol bgp
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term region-no-advertise from community REGIONAL-NO-ADV-TO-PEERS
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term region-no-advertise then reject
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term overload-knob then next term
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term overload-reject from color 10293
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term overload-reject then reject
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast from protocol bgp
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast from as-path as-path-50
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast from community COMM_FUNC_LOCAL_AFD
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast then metric 100
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast then community set ANYCAST-OUT-COMMUNITIES
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast then as-path-prepend 8075
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd-anycast then accept
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd from protocol bgp
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd from as-path as-path-50
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd from community COMM_FUNC_LOCAL_AFD
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd then metric 100
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd then community delete all
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term announce-local-afd then accept
set policy-options policy-statement ADVERTISE-LOCAL-AFD-ONLY term reject then reject
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term overload-knob then next term
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics_overload from protocol bgp
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics_overload from color 10293
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics_overload from route-filter 10.20.160.0/19 orlonger
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics_overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics_overload then accept
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics from protocol bgp
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics from route-filter 10.20.160.0/19 orlonger
set policy-options policy-statement ADVERTISE-OOB-SPECIFICS term allow_oob_specifics then accept
set policy-options policy-statement ANYCAST-IP-SPACE term ANYCAST-IP-SPACE from route-filter 131.253.12.0/22 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE term ANYCAST-IP-SPACE from route-filter 207.68.174.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE term ANYCAST-IP-SPACE from route-filter 70.37.135.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE term ANYCAST-IP-SPACE then accept
set policy-options policy-statement ANYCAST-IP-SPACE term reject then reject
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 131.253.21.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 191.234.4.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 191.234.5.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 191.234.6.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 191.234.7.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 191.234.64.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 193.221.113.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 204.79.195.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 204.79.197.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 204.79.252.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 207.46.98.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 208.76.45.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 208.76.46.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 208.84.0.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 208.84.2.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 65.55.117.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 65.55.60.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 65.55.230.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 65.55.231.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 65.55.44.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.0.0/16 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.10.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.44.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.58.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.188.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.240.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.1.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.2.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.3.0/24 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 10.64.5.5/32 exact
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 10.64.6.6/32 exact
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 10.64.6.7/32 exact
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 10.20.37.176/28 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 64.4.48.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 40.90.4.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.160.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE from route-filter 13.107.24.0/23 orlonger
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term ANYCAST-IP-SPACE then accept
set policy-options policy-statement ANYCAST-IP-SPACE-LP-HIGH term reject then reject
set policy-options policy-statement BGP-EDGE-PEER-POLICY from prefix-list BGP-EDGE-PEER-PREFIX
set policy-options policy-statement BGP-EDGE-PEER-POLICY then accept
set policy-options policy-statement BINGEDGE-SUBREGIONAL term match-bingedge-subregional-routing from community BINGEDGE-SUBREGIONAL-CUSTOMER-COMMUNITY
set policy-options policy-statement BINGEDGE-SUBREGIONAL term match-bingedge-subregional-routing then community delete BINGEDGE-SUBREGIONAL-CUSTOMER-COMMUNITY
set policy-options policy-statement BINGEDGE-SUBREGIONAL term match-bingedge-subregional-routing then community add BINGEDGE-SUBREGIONAL-LOCALREGION
set policy-options policy-statement BINGEDGE-SUBREGIONAL term match-bingedge-subregional-routing then next policy
set policy-options policy-statement BLOCK-ANYCAST-WU term block-wu-blocks from protocol bgp
set policy-options policy-statement BLOCK-ANYCAST-WU term block-wu-blocks from prefix-list-filter ANYCAST-PREFIX-WU orlonger
set policy-options policy-statement BLOCK-ANYCAST-WU term block-wu-blocks then reject
set policy-options policy-statement CONN-TO-BGP term allowloopback from protocol direct
set policy-options policy-statement CONN-TO-BGP term allowloopback from prefix-list loopback_allow
set policy-options policy-statement CONN-TO-BGP term allowloopback then accept
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload from color 10293
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload from route-filter 10.20.8.129/32 exact
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload from route-filter 10.20.8.130/32 exact
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload then local-preference 10
set policy-options policy-statement CONN-TO-BGP term allow_ntp_overload then accept
set policy-options policy-statement CONN-TO-BGP term allow_ntp from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_ntp from route-filter 10.20.8.129/32 exact
set policy-options policy-statement CONN-TO-BGP term allow_ntp from route-filter 10.20.8.130/32 exact
set policy-options policy-statement CONN-TO-BGP term allow_ntp then local-preference 400
set policy-options policy-statement CONN-TO-BGP term allow_ntp then accept
set policy-options policy-statement CONN-TO-BGP term deny_loopback from protocol direct
set policy-options policy-statement CONN-TO-BGP term deny_loopback from interface lo0.0
set policy-options policy-statement CONN-TO-BGP term deny_loopback then reject
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p_overload from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p_overload from color 10293
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p_overload from route-filter 0.0.0.0/0 prefix-length-range /30-/31
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p_overload then local-preference 10
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p_overload then accept
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p from route-filter 0.0.0.0/0 prefix-length-range /30-/31
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p then local-preference 400
set policy-options policy-statement CONN-TO-BGP term allow_connect_p2p then accept
set policy-options policy-statement CONN-TO-BGP term allow_exception_overload from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_exception_overload from color 10293
set policy-options policy-statement CONN-TO-BGP term allow_exception_overload from prefix-list permit_connected_bgp_exceptions
set policy-options policy-statement CONN-TO-BGP term allow_exception_overload then local-preference 10
set policy-options policy-statement CONN-TO-BGP term allow_exception_overload then accept
set policy-options policy-statement CONN-TO-BGP term allow_exception from protocol direct
set policy-options policy-statement CONN-TO-BGP term allow_exception from prefix-list permit_connected_bgp_exceptions
set policy-options policy-statement CONN-TO-BGP term allow_exception then local-preference 400
set policy-options policy-statement CONN-TO-BGP term allow_exception then accept
set policy-options policy-statement CONN-TO-BGP term reject_default from protocol direct
set policy-options policy-statement CONN-TO-BGP term reject_default then reject
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-GLOBAL from community COMM_FUNC_PREMIUM_GLOBAL
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-GLOBAL then metric 80
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-GLOBAL then local-preference 100
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-GLOBAL then community add COMM_RT_ITE_PREMIUM_GLOBAL
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-GLOBAL then accept
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-CONTINENT from community COMM_FUNC_PREMIUM_CONTINENT
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-CONTINENT then metric 80
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-CONTINENT then local-preference 100
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-CONTINENT then community add COMM_RT_ITE_PREMIUM_CONTINENT
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-CONTINENT then accept
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-IRR from community COMM_FUNC_PREMIUM_IRR
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-IRR then metric 80
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-IRR then local-preference 100
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-IRR then community add COMM_RT_ITE_PREMIUM_IRR
set policy-options policy-statement COPY-TO-PREMIUM-VRF term ITEM-PREMIUM-IRR then accept
set policy-options policy-statement COPY-TO-PREMIUM-VRF term then-reject then reject
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term overload-knob then next term
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES-overload from community COMM_FUNC_LEAK_AR
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES-overload from color 10293
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES-overload then local-preference 10
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES-overload then community add COMM_OVERLOAD
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES-overload then accept
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES from community COMM_FUNC_LEAK_AR
set policy-options policy-statement CUST-AR-LEAK-COMM-OUT term LEAK-CUST-ROUTES then accept
set policy-options policy-statement CUST-BING-EDGE-IN term ADD-ORIGIN-CODE then community add COMM_ORIGIN_PROPERTY_THEEDGE
set policy-options policy-statement CUST-BING-EDGE-IN term ADD-ORIGIN-CODE then next policy
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST term 100 from route-filter 10.243.240.0/22 orlonger
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST term 100 from route-filter 10.254.31.128/26 orlonger
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST term 100 from route-filter 202.89.236.96/32 exact
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST term 100 from route-filter 202.89.236.97/32 exact
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST term 100 then accept
set policy-options policy-statement CUST-BINGVPN-PREFIX-LIST then reject
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.2.146.0/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.2.146.128/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.3.129.0/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.10.0.0/16 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.20.76.0/21 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.20.88.0/22 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.63.112.0/22 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.63.110.0/23 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 10.74.12.0/24 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 40.69.224.0/19 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 40.87.240.0/20 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 40.90.1.128/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 40.127.112.0/20 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.44.217.128/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.47.192.0/21 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.209.96.0/19 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.210.224.0/19 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.44.107.128/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 104.44.5.128/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 167.220.0.0/23 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 167.220.2.0/24 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 207.46.32.52/32 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 207.46.32.146/32 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 207.46.32.172/32 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 207.46.160.0/25 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 from route-filter 207.46.160.128/26 orlonger
set policy-options policy-statement CUST-DACIS-PREFIX-LIST term 100 then accept
set policy-options policy-statement CUST-DACIS-PREFIX-LIST then reject
set policy-options policy-statement CUST-EBGP-AR-IN term ADD-ORIGIN-CODE then community add COMM_ORIGIN_PROPERTY_AR
set policy-options policy-statement CUST-EBGP-AR-IN term ADD-ORIGIN-CODE then next policy
set policy-options policy-statement CUST-FABRIC-IN term ADD-ORIGIN-CODE then community add COMM_ORIGIN_PROPERTY_FABRIC
set policy-options policy-statement CUST-FABRIC-IN term PERMIT-12076-SPECIFICS from as-path AS12076
set policy-options policy-statement CUST-FABRIC-IN term PERMIT-12076-SPECIFICS from prefix-list-filter ER-LOOPBACKS orlonger
set policy-options policy-statement CUST-FABRIC-IN term PERMIT-12076-SPECIFICS then next policy
set policy-options policy-statement CUST-FABRIC-IN term DENY-12076-PREFIXES from as-path AS12076
set policy-options policy-statement CUST-FABRIC-IN term DENY-12076-PREFIXES then reject
set policy-options policy-statement DDOS-GEO-IN term accept-continental from community COMM_FUNC_DONTADV_ALL
set policy-options policy-statement DDOS-GEO-IN term accept-continental then community set COMM_RT_TMS_GEO
set policy-options policy-statement DDOS-GEO-IN term accept-continental then accept
set policy-options policy-statement DDOS-GEO-IN term accept-irr from community COMM_ROUTE_DDOS_IRR
set policy-options policy-statement DDOS-GEO-IN term accept-irr then community set COMM_RT_TMS_IRR
set policy-options policy-statement DDOS-GEO-IN term accept-irr then accept
set policy-options policy-statement DDOS-GEO-IN term accept-rest then community set COMM_RT_TMS_GLOBAL
set policy-options policy-statement DDOS-GEO-IN term accept-rest then accept
set policy-options policy-statement DENY-ALL then reject
set policy-options policy-statement DENY-LEAKED-ROUTES-FROM-NSSA term deny from tag 4321
set policy-options policy-statement DENY-LEAKED-ROUTES-FROM-NSSA term deny then reject
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term reject-tag-routes from tag 4321
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term reject-tag-routes then reject
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term leak-isis-routes from protocol isis
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term leak-isis-routes then tag 4321
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term leak-isis-routes then external type 1
set policy-options policy-statement EXPORT-ISIS-TO-OSPF term leak-isis-routes then accept
set policy-options policy-statement EXPORT-OSPF-TO-ISIS term reject-tagged-routes from tag 4321
set policy-options policy-statement EXPORT-OSPF-TO-ISIS term reject-tagged-routes from tag 1234
set policy-options policy-statement EXPORT-OSPF-TO-ISIS term reject-tagged-routes then reject
set policy-options policy-statement EXPORT-TO-ISIS term reject-all then default-action reject
set policy-options policy-statement EXPORT-TO-ISIS term ipv4-node-sid from route-filter 10.3.159.85/32 exact
set policy-options policy-statement EXPORT-TO-ISIS term ipv4-node-sid then tag 1000
set policy-options policy-statement EXPORT-TO-ISIS term ipv4-node-sid then prefix-segment index 1160
set policy-options policy-statement EXPORT-TO-ISIS term ipv4-node-sid then prefix-segment node-segment
set policy-options policy-statement EXPORT-TO-ISIS term ipv4-node-sid then accept
set policy-options policy-statement EXPORT-TO-ISIS term ipv6-node-sid from route-filter 2a01:111:e210:1:10:3:159:85/128 exact
set policy-options policy-statement EXPORT-TO-ISIS term ipv6-node-sid then tag 1000
set policy-options policy-statement EXPORT-TO-ISIS term ipv6-node-sid then prefix-segment index 1260
set policy-options policy-statement EXPORT-TO-ISIS term ipv6-node-sid then prefix-segment node-segment
set policy-options policy-statement EXPORT-TO-ISIS term ipv6-node-sid then accept
set policy-options policy-statement EXPORT-TO-ISIS term allow-passive-interfaces apply-groups isis-passive-interfaces
set policy-options policy-statement EXPORT-TO-ISIS term allow-passive-interfaces then tag 1000
set policy-options policy-statement EXPORT-TO-ISIS term allow-passive-interfaces then accept
set policy-options policy-statement EXPORT-TO-ISIS term allow-ite-loopback from protocol direct
set policy-options policy-statement EXPORT-TO-ISIS term allow-ite-loopback from route-filter 10.1.0.0/24 orlonger
set policy-options policy-statement EXPORT-TO-ISIS term allow-ite-loopback from route-filter 10.1.32.0/23 orlonger
set policy-options policy-statement EXPORT-TO-ISIS term allow-ite-loopback then accept
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 0.0.0.0/0 exact
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 0.0.0.0/0 prefix-length-range /1-/7
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 0.0.0.0/0 prefix-length-range /25-/32
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 0.0.0.0/8 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 10.0.0.0/8 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 100.64.0.0/10 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 127.0.0.0/8 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 169.254.0.0/16 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 172.16.0.0/12 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 192.0.2.0/24 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 192.168.0.0/16 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 224.0.0.0/4 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 240.0.0.0/4 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 192.0.0.0/24 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 203.0.113.0/24 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 198.51.100.0/24 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER from route-filter 198.18.0.0/24 orlonger
set policy-options policy-statement GLOBAL-BOGON-FILTER term GLOBAL-BOGON-FILTER then accept
set policy-options policy-statement GLOBAL-BOGON-FILTER term reject then reject
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload from route-filter 0.0.0.0/0 exact
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default-overload then accept
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default from protocol bgp
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default from protocol static
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default from route-filter 0.0.0.0/0 exact
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term default then accept
set policy-options policy-statement GLOBAL-CUST-DEFAULT-OUT term reject then reject
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term bogon from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term bogon then reject
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term reject-msft-private from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term reject-msft-private then reject
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from tag 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast from protocol static
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast from tag 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-anycast then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from tag 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from prefix-list permit_static_bgp_anchor
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then community delete all
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes from protocol static
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes from tag 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes from prefix-list permit_static_bgp_anchor
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes then community delete all
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-local-routes then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast-overload then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-anycast then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then community delete all
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term announce-bgp-routes then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept-overload from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept-overload then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept from protocol bgp
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term accept then accept
set policy-options policy-statement GLOBAL-CUST-FULL-OUT term reject then reject
set policy-options policy-statement GLOBAL-CUST-IN term block-long-as from as-path as-path-75
set policy-options policy-statement GLOBAL-CUST-IN term block-long-as then reject
set policy-options policy-statement GLOBAL-CUST-IN term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-CUST-IN term overload-knob then next term
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload from route-filter 10.0.0.0/8 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload from route-filter 100.64.0.0/10 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload from route-filter 172.16.0.0/12 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload from route-filter 192.168.0.0/16 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload then color 20
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload then local-preference 10
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918-overload then accept
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 from route-filter 10.0.0.0/8 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 from route-filter 100.64.0.0/10 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 from route-filter 172.16.0.0/12 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 from route-filter 192.168.0.0/16 orlonger
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 then color 20
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 then local-preference 400
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term RFC1918 then accept
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload then color 20
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload then local-preference 10
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC-overload then accept
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC then color 20
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC then local-preference 400
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term SPECIFIC then accept
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload then color 20
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload then local-preference 10
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE-overload then accept
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE then color 20
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE then local-preference 400
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-CUST-IN term MICROSOFT-PRIVATE then accept
set policy-options policy-statement GLOBAL-CUST-IN term reject then reject
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term bogon from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term bogon then reject
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term reject-msft-private from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term reject-msft-private then reject
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from tag 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from protocol static
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from tag 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from tag 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from prefix-list permit_static_bgp_anchor
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then community delete all
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from protocol static
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from tag 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from prefix-list permit_static_bgp_anchor
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then community delete all
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-anycast then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then community delete all
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then accept
set policy-options policy-statement GLOBAL-CUST-PARTIAL-OUT term reject then reject
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload from policy PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private-overload then accept
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private from protocol static
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private from policy PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term private then accept
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload from protocol static
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload from color 10293
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private-overload then accept
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private from protocol bgp
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private from protocol static
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private from policy MICROSOFT-PRIVATE-ROUTES
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term msft-private then accept
set policy-options policy-statement GLOBAL-CUST-PRIVATE-OUT term reject then reject
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 13.64.0.0/11 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 13.104.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.0.0.0/11 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.33.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.34.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.36.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.40.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.48.0.0/12 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.64.0.0/10 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.135.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.136.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.140.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.143.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.150.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.152.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.153.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.157.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.158.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.160.0.0/12 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.184.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 20.192.0.0/10 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 23.96.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 23.100.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 23.102.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 23.103.64.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 23.103.128.0/17 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 40.64.0.0/10 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.10.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.12.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.51.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.53.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.103.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.104.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.107.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.116.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.120.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.124.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.132.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.136.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.138.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.140.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 51.144.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.96.0.0/12 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.112.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.120.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.125.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.126.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.136.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.146.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.148.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.152.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.160.0.0/11 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 52.224.0.0/11 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 64.4.0.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 64.41.193.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 65.52.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 65.221.5.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 66.119.144.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 70.37.0.0/17 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 70.37.128.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 91.190.216.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 94.245.64.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 102.37.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 102.133.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 103.25.156.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 103.36.96.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 103.255.140.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 104.40.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 104.146.0.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 104.146.128.0/17 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 104.208.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 111.221.16.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 111.221.64.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 128.94.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.107.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.1.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.3.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.5.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.6.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.8.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.12.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.16.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.18.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.21.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.22.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.24.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.32.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.61.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.62.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.64.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 131.253.128.0/17 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 132.245.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 134.170.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 135.149.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 137.116.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 137.135.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 138.91.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 138.239.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 143.64.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 147.145.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 147.243.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 148.7.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 150.171.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 155.62.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 157.54.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 157.56.0.0/14 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 157.60.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 158.158.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 159.27.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 163.228.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 167.105.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 167.220.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 168.61.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 168.62.0.0/15 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 169.138.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 170.165.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 191.232.0.0/13 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.48.225.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.84.160.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.92.196.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.102.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.103.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.104.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.112.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.120.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.100.128.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 192.197.157.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 193.149.64.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 193.221.113.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 194.41.16.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 194.69.96.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 195.134.224.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 198.49.8.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 198.105.232.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 198.180.95.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 198.200.130.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 198.206.164.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.2.137.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.30.16.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.60.28.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.74.210.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.103.90.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.103.122.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.242.32.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 199.242.48.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 202.89.224.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.13.120.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.14.180.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.135.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.179.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.180.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.188.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.195.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.196.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.197.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.79.252.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.95.96.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.152.18.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.152.140.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.176.46.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.182.144.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.192.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.194.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.196.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.200.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.208.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.231.236.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 204.255.244.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 205.174.224.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 206.138.168.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 206.191.224.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 207.46.0.0/16 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 207.68.128.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 207.82.250.0/23 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 208.68.136.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 208.76.44.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 208.84.0.0/21 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 209.1.15.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 209.185.128.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 209.185.240.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 209.240.192.0/19 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 213.199.128.0/18 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 216.32.180.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 216.32.240.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 216.33.240.0/22 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 216.34.51.0/24 exact
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE from route-filter 216.220.208.0/20 upto /24
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term GLOBAL-EGRESS-IP-SPACE then accept
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE term reject then reject
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 13.64.0.0/11 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 13.104.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.0.0.0/11 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.33.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.34.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.36.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.40.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.48.0.0/12 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.64.0.0/10 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.135.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.136.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.140.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.143.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.150.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.152.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.153.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.157.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.158.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.160.0.0/12 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.184.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 20.192.0.0/10 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 23.96.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 23.100.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 23.102.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 23.103.64.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 23.103.128.0/17 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 40.64.0.0/10 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.10.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.12.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.51.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.53.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.103.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.104.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.107.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.116.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.120.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.124.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.132.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.136.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.138.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.140.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 51.144.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.96.0.0/12 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.112.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.120.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.125.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.126.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.136.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.146.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.148.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.152.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.160.0.0/11 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 52.224.0.0/11 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 64.4.0.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 64.41.193.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 65.52.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 65.221.5.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 66.119.144.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 70.37.0.0/17 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 70.37.128.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 91.190.216.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 94.245.64.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 102.37.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 102.133.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 103.25.156.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 103.36.96.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 103.255.140.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 104.40.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 104.146.0.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 104.146.128.0/17 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 104.208.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 111.221.16.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 111.221.64.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 128.94.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.107.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.1.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.3.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.5.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.6.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.8.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.12.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.16.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.18.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.21.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.22.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.24.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.32.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.61.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.62.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.64.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 131.253.128.0/17 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 132.245.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 134.170.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 135.149.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 137.116.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 137.135.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 138.91.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 138.239.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 143.64.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 147.145.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 147.243.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 148.7.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 150.171.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 155.62.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 157.54.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 157.56.0.0/14 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 157.60.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 158.158.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 159.27.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 163.228.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 167.105.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 167.220.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 168.61.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 168.62.0.0/15 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 169.138.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 170.165.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 191.232.0.0/13 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.48.225.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.84.160.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.92.196.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.102.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.103.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.104.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.112.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.120.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.100.128.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 192.197.157.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 193.149.64.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 193.221.113.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 194.41.16.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 194.69.96.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 195.134.224.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 198.49.8.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 198.105.232.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 198.180.95.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 198.200.130.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 198.206.164.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.2.137.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.30.16.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.60.28.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.74.210.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.103.90.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.103.122.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.242.32.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 199.242.48.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 202.89.224.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.13.120.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.14.180.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.135.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.179.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.180.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.188.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.195.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.196.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.197.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.79.252.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.95.96.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.152.18.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.152.140.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.176.46.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.182.144.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.192.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.194.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.196.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.200.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.208.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.231.236.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 204.255.244.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 205.174.224.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 206.138.168.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 206.191.224.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 207.46.0.0/16 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 207.68.128.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 207.82.250.0/23 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 208.68.136.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 208.76.44.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 208.84.0.0/21 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 209.1.15.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 209.185.128.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 209.185.240.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 209.240.192.0/19 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 213.199.128.0/18 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 216.32.180.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 216.32.240.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 216.33.240.0/22 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 216.34.51.0/24 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS from route-filter 216.220.208.0/20 upto /32
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term GLOBAL-EGRESS-IP-SPACE-SPECIFICS then accept
set policy-options policy-statement GLOBAL-EGRESS-IP-SPACE-SPECIFICS term reject then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term bogon from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term bogon then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term no-advertise then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term region-no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term region-no-advertise from community REGIONAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term region-no-advertise then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term overload-knob then next term
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term overload-reject from color 10293
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term overload-reject then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject-regional-routes from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject-regional-routes from as-path as-path-50
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject-regional-routes from community COMM_FUNC_ADV_REGION
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject-regional-routes from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject-regional-routes then reject
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast from as-path as-path-50
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast then metric 100
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast then community set ANYCAST-OUT-COMMUNITIES
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-anycast then accept
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes from as-path as-path-50
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes then metric 100
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes then community delete all
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-bgp-routes then accept
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes from as-path AS14413
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes from prefix-list-filter LinkedIn-V4 orlonger
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes then metric 100
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes then community delete all
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-LinkedIn-routes then accept
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes from protocol bgp
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes from as-path AS-BYOIP
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes then metric 100
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes then community delete all
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term announce-BYOIP-routes then accept
set policy-options policy-statement GLOBAL-PEER-OUT-NO-REGIONAL term reject then reject
set policy-options policy-statement GLOBAL-STD-DONOTADV-AF then community add COMM_FUNC_DONTADV_AF
set policy-options policy-statement GLOBAL-STD-DONOTADV-ALL then community add COMM_FUNC_DONTADV_ALL
set policy-options policy-statement GLOBAL-STD-DONOTADV-AN then community add COMM_FUNC_DONTADV_AN
set policy-options policy-statement GLOBAL-STD-DONOTADV-AS then community add COMM_FUNC_DONTADV_AS
set policy-options policy-statement GLOBAL-STD-DONOTADV-EU then community add COMM_FUNC_DONTADV_EU
set policy-options policy-statement GLOBAL-STD-DONOTADV-ME then community add COMM_FUNC_DONTADV_ME
set policy-options policy-statement GLOBAL-STD-DONOTADV-NA then community add COMM_FUNC_DONTADV_NA
set policy-options policy-statement GLOBAL-STD-DONOTADV-OC then community add COMM_FUNC_DONTADV_OC
set policy-options policy-statement GLOBAL-STD-DONOTADV-SA then community add COMM_FUNC_DONTADV_SA
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term REJECT-TRANSIT from protocol bgp
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term REJECT-TRANSIT from as-path ASPATH-TRANSIT
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term REJECT-TRANSIT then reject
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term SET-DEFAULT-LP then local-preference 300
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term SET-DEFAULT-MED then metric 80
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term SET-PEER-COMMUNITY then community add COMM_ROUTE_FREEPEER_PRIVATE
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term SET-PEER-COMMUNITY then community add 8075-FREEPRIVATE-COMMUNITY
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term DEPREF-LONG-AS from as-path as-path-16
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term DEPREF-LONG-AS then local-preference 100
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-FREEPRIVATE-PEER-IN term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term REJECT-TRANSIT from protocol bgp
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term REJECT-TRANSIT from as-path ASPATH-TRANSIT
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term REJECT-TRANSIT then reject
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term SET-DEFAULT-LP then local-preference 300
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term SET-DEFAULT-MED then metric 80
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term SET-PEER-COMMUNITY then community add COMM_ROUTE_FREEPEER_PUBLIC
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term SET-PEER-COMMUNITY then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term DEPREF-LONG-AS from as-path as-path-16
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term DEPREF-LONG-AS then local-preference 100
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term REJECT-TRANSIT from protocol bgp
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term REJECT-TRANSIT from as-path ASPATH-TRANSIT
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term REJECT-TRANSIT then reject
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term SET-DEFAULT-ASPATH then as-path-expand last-as count 1
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term SET-DEFAULT-LP then local-preference 300
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term SET-DEFAULT-MED then metric 80
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term SET-PEER-COMMUNITY then community add COMM_ROUTE_FREEPEER_PUBLIC
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term SET-PEER-COMMUNITY then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term DEPREF-LONG-AS from as-path as-path-16
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term DEPREF-LONG-AS then local-preference 10
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SKIP-ONNET from community COMM_ROUTE_PAIDPEER_ONNET
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SKIP-ONNET from community 8075-PAIDONNET-COMMUNITY
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SKIP-ONNET then next policy
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SET-DEFAULT-LP then local-preference 100
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SET-DEFAULT-MED then metric 10000
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SET-PEER-COMMUNITY then community add COMM_ROUTE_PAIDPEER_OFFNET
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term SET-PEER-COMMUNITY then community add 8075-PAIDOFFNET-COMMUNITY
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-PAID-OFFNET-PEER-IN term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term SET-DEFAULT-LP then local-preference 200
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term SET-DEFAULT-MED then metric 10000
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term SET-PEER-COMMUNITY then community add COMM_ROUTE_PAIDPEER_ONNET
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term SET-PEER-COMMUNITY then community add 8075-PAIDONNET-COMMUNITY
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term DEPREF-LONG-AS from as-path as-path-16
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term DEPREF-LONG-AS then local-preference 100
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-PAID-ONNET-PEER-IN term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement GLOBAL-STD-PEER-IN term implement-overload then reject
deactivate policy-options policy-statement GLOBAL-STD-PEER-IN term implement-overload
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-PRIVATE
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BAD-AS then reject
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BOGONS from route-filter 0.0.0.0/0 exact
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BOGONS from route-filter 0.0.0.0/0 prefix-length-range /25-/32
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BOGONS from prefix-list-filter BOGON-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-BOGONS then reject
set policy-options policy-statement GLOBAL-STD-PEER-IN term ALLOW-WHITE-LIST from prefix-list-filter MSFT-WHITE-LIST-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PEER-IN term ALLOW-WHITE-LIST then next policy
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement GLOBAL-STD-PEER-IN term REJECT-MSFT-PREFIXES then reject
set policy-options policy-statement GLOBAL-STD-PEER-IN term REMOVE-MSFT-COMMUNITIES then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement GLOBAL-STD-PEER-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement GLOBAL-STD-PEER-OUT term bogon from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement GLOBAL-STD-PEER-OUT term bogon then reject
set policy-options policy-statement GLOBAL-STD-PEER-OUT term no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term no-advertise then reject
set policy-options policy-statement GLOBAL-STD-PEER-OUT term region-no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term region-no-advertise from community REGIONAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term region-no-advertise then reject
set policy-options policy-statement GLOBAL-STD-PEER-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-STD-PEER-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-STD-PEER-OUT term overload-reject from color 10293
set policy-options policy-statement GLOBAL-STD-PEER-OUT term overload-reject then reject
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast from protocol static
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast from protocol aggregate
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast from tag 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast then community set ANYCAST-OUT-COMMUNITIES
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-anycast then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes from protocol static
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes from tag 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes from prefix-list permit_static_bgp_anchor
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes then community delete all
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-local-routes then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast from as-path as-path-50
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast then community set ANYCAST-OUT-COMMUNITIES
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-anycast then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes from as-path as-path-50
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-bgp-routes then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes from as-path AS14413
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes from prefix-list-filter LinkedIn-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes then community delete all
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-LinkedIn-routes then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes from as-path AS-BYOIP
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes then community delete all
set policy-options policy-statement GLOBAL-STD-PEER-OUT term announce-BYOIP-routes then accept
set policy-options policy-statement GLOBAL-STD-PEER-OUT term reject then reject
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-PRIVATE
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BAD-AS then reject
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BOGONS from route-filter 0.0.0.0/0 exact
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BOGONS from route-filter 0.0.0.0/0 prefix-length-range /25-/32
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BOGONS from prefix-list-filter BOGON-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-BOGONS then reject
set policy-options policy-statement GLOBAL-STD-PTNR-IN term ALLOW-WHITE-LIST from prefix-list-filter MSFT-WHITE-LIST-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-IN term ALLOW-WHITE-LIST then next policy
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-MSFT-PREFIXES from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-MSFT-PREFIXES from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-MSFT-PREFIXES from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-IN term REJECT-MSFT-PREFIXES then reject
set policy-options policy-statement GLOBAL-STD-PTNR-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement GLOBAL-STD-PTNR-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term bogon from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term bogon then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term no-advertise then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term region-no-advertise from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term region-no-advertise from community REGIONAL-NO-ADV-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term region-no-advertise then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term overload-knob then next term
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term overload-reject from color 10293
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term overload-reject then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-private-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-private-routes from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-private-routes then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from as-path as-path-50
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes then accept
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics then reject
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes from as-path AS14413
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes from prefix-list-filter LinkedIn-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-LinkedIn-routes then accept
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes from as-path AS-BYOIP
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes then metric 100
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-BYOIP-routes then accept
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Peer-routes from protocol bgp
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Peer-routes from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term announce-Peer-routes then accept
set policy-options policy-statement GLOBAL-STD-PTNR-OUT term reject then reject
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-TRANSIT from protocol bgp
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-TRANSIT from as-path ASPATH-TRANSIT
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-TRANSIT then reject
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-ROUTESERVER-AS-PATH from protocol bgp
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-ROUTESERVER-AS-PATH from as-path as-path-deny-from-routeserver
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term REJECT-ROUTESERVER-AS-PATH then reject
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term SET-DEFAULT-LP then local-preference 300
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term SET-DEFAULT-MED then metric 80
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term SET-PEER-COMMUNITY then community add COMM_ROUTE_FREEPEER_ROUTESERVER
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term SET-PEER-COMMUNITY then community add 8075-ROUTESERVER-COMMUNITY
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term DEPREF-LONG-AS from as-path as-path-16
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term DEPREF-LONG-AS then local-preference 100
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term OVERLOAD-COMM from community COMM_OVERLOAD
set policy-options policy-statement GLOBAL-STD-ROUTESERVER-PEER-IN term OVERLOAD-COMM then local-preference 10
set policy-options policy-statement IPR-TO-EWA term permit_all from protocol bgp
set policy-options policy-statement IPR-TO-EWA term permit_all then next-hop self
set policy-options policy-statement IPR-TO-EWA term permit_all then load-balance per-packet
set policy-options policy-statement IPR-TO-EWA term permit_all then accept
set policy-options policy-statement IPR-TO-EWA term permit_direct from protocol direct
set policy-options policy-statement IPR-TO-EWA term permit_direct then accept
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-bogons from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-bogons from policy IPV6-GLOBAL-BOGON-FILTER
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-bogons then reject
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-transit from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-transit from as-path as-path-100
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-transit then reject
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-private from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-private from as-path as-path-110
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-private then reject
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-broken-aspath from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-broken-aspath from as-path as-path-75
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-broken-aspath then reject
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term overload-knob then next term
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload from family inet6
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload from as-path as-path-16
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload from color 10293
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then metric 80
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then color 20
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then local-preference 10
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path-overload then accept
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path from family inet6
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path from as-path as-path-16
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then metric 80
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then color 20
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then local-preference 100
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term long-as-path then accept
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload from family inet6
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload from color 10293
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then metric 80
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then color 20
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then local-preference 10
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path-overload then accept
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path from family inet6
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path from protocol bgp
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then metric 80
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then color 20
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then local-preference 300
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then community add 8075-FREEPUBLIC-COMMUNITY
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term short-as-path then accept
set policy-options policy-statement IPV6-8075-ROUTESERVER-PEER-IN term reject-rest then reject
set policy-options policy-statement IPV6-CUST-BING-EDGE-IN term ADD-ORIGIN-CODE then community add COMM_ORIGIN_PROPERTY_THEEDGE
set policy-options policy-statement IPV6-CUST-BING-EDGE-IN term ADD-ORIGIN-CODE then next policy
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow from family inet6
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow from route-filter 2001::/32 exact
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow from route-filter 2002::/16 exact
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow from route-filter 2000::/3 upto /48
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow then reject
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from family inet6
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter ::/0 exact
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter ::/96 exact
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 2001:db8::/32 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 3ffe::/16 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 5f00::/8 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 2001:10::/28 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 2001::/32 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter 2002::/16 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter fc00::/7 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter fe80::/10 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter fec0::/10 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block from route-filter ff00::/8 upto /128
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term block then accept
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow-up-to-48 from family inet6
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow-up-to-48 from route-filter 2000::/3 upto /48
set policy-options policy-statement IPV6-GLOBAL-BOGON-FILTER term allow-up-to-48 then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default-overload from route-filter ::/0 exact
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default from route-filter ::/0 exact
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term default then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-DEFAULT-OUT term reject then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term bogon from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term bogon from policy IPV6-GLOBAL-BOGON-FILTER
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term bogon then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast then as-path-prepend 8075
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-anycast then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-local-routes then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-anycast then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term announce-bgp-routes then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept-overload from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term accept then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-FULL-OUT term reject then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term block-long-as from as-path as-path-75
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term block-long-as then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload then color 20
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload then local-preference 10
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific then color 20
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific then local-preference 400
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term private-specific then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload from policy IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload then color 20
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload then local-preference 10
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific from policy IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific then color 20
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific then local-preference 400
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term public-specific then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-IN term reject then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term bogon from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term bogon from policy IPV6-GLOBAL-BOGON-FILTER
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term bogon then reject
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then as-path-prepend 8075
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-anycast then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from protocol static
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from tag 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-local-routes then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast from prefix-list IPV6-ANYCAST-IP-SPACE
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-anycast then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes-overload then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term announce-bgp-routes then accept
set policy-options policy-statement IPV6-GLOBAL-CUST-PARTIAL-OUT term reject then reject
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2404:f800::/32 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2a01:110::/32 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2a01:111::/32 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:4898::/32 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2620:0:30::/45 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:df0:7::/48 exact
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2801:80:1d0::/48 exact
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2404:f801::/32 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:df0:d7::/48 exact
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2603:1000::/25 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2620:1ec::/36 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:489a:2000::/35 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:489a:4000::/35 upto /48
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:df0:d8::/48 exact
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE from route-filter 2001:df0:d9::/48 exact
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term IPV6-GLOBAL-EGRESS-SPACE then accept
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE term reject then reject
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2404:f800::/32 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2a01:110::/32 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2a01:111::/32 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:4898::/32 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2620:0:30::/45 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:df0:7::/48 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2801:80:1d0::/48 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2404:f801::/32 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:df0:d7::/48 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2603:1000::/25 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2620:1ec::/36 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:489a:2000::/35 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:489a:4000::/35 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:df0:d8::/48 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS from route-filter 2001:df0:d9::/48 orlonger
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS then accept
set policy-options policy-statement IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS term reject then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term implement-overload then reject
deactivate policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term implement-overload
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-PRIVATE
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-BAD-AS then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-BOGONS from route-filter ::/0 exact
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-BOGONS from route-filter ::/0 prefix-length-range /49-/128
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-BOGONS from prefix-list-filter BOGON-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-BOGONS then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term ALLOW-WHITE-LIST from prefix-list-filter MSFT-WHITE-LIST-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term ALLOW-WHITE-LIST then next policy
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-MSFT-PREFIXES from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-MSFT-PREFIXES from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REJECT-IPV6-MSFT-PREFIXES then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term REMOVE-MSFT-COMMUNITIES then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from protocol static
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from tag 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from policy IPV6-GLOBAL-EGRESS-SPACE
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes-overload then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from protocol static
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from protocol aggregate
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from tag 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from policy IPV6-GLOBAL-EGRESS-SPACE
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-local-routes then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term reject-static from protocol static
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term reject-static then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term bogon from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term bogon from policy IPV6-GLOBAL-BOGON-FILTER
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term bogon then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term no-advertise from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term no-advertise then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from as-path as-path-68
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from community GLOBAL-SEND-CUST-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload from prefix-list ipv6-customer-ip-space
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes-overload then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes from as-path as-path-68
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes from community GLOBAL-SEND-CUST-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes from prefix-list ipv6-customer-ip-space
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-customer-routes then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from as-path as-path-66
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload from policy IPV6-GLOBAL-EGRESS-SPACE
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes-overload then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes from as-path as-path-66
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes from policy IPV6-GLOBAL-EGRESS-SPACE
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-bgp-routes then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from as-path AS14413
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload from prefix-list-filter LinkedIn-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn-overload then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn from as-path AS14413
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn from prefix-list-filter LinkedIn-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-LinkedIn then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from as-path AS-BYOIP
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP-overload then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP from as-path AS-BYOIP
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term announce-BYOIP then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PEER-OUT term reject-all then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-PRIVATE
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-BAD-AS then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-BOGONS from route-filter ::/0 exact
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-BOGONS from route-filter ::/0 prefix-length-range /49-/128
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-BOGONS from prefix-list-filter BOGON-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-BOGONS then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term ALLOW-WHITE-LIST from prefix-list-filter MSFT-WHITE-LIST-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term ALLOW-WHITE-LIST then next policy
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-MSFT-PREFIXES from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-MSFT-PREFIXES from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term REJECT-IPV6-MSFT-PREFIXES then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term bogon from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term bogon from policy IPV6-GLOBAL-BOGON-FILTER
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term bogon then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term no-advertise from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term no-advertise then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term overload-knob then next term
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term overload-reject from color 10293
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term overload-reject then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-private-routes from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-private-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-private-routes from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-private-routes then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from as-path as-path-50
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes from policy IPV6-GLOBAL-EGRESS-SPACE
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Microsoft-routes then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics from policy IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject-Microsoft-Specifics then reject
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn from as-path AS14413
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn from prefix-list-filter LinkedIn-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-LinkedIn then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP from family inet6
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP from as-path AS-BYOIP
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP then metric 100
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP then community delete all
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-BYOIP then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Peer-routes from protocol bgp
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Peer-routes from community GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term announce-Peer-routes then accept
set policy-options policy-statement IPV6-GLOBAL-STD-PTNR-OUT term reject then reject
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term overload-knob then next term
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default-overload from color 10293
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default-overload from route-filter ::/0 exact
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default-overload then as-path-prepend "8075 8075 8075"
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default-overload then accept
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default from route-filter ::/0 exact
set policy-options policy-statement IPV6-IER-DEFAULT-OUT term default then accept
set policy-options policy-statement IPV6-IRR-ANCHOR-PRIORITY term high-priority from protocol bgp
set policy-options policy-statement IPV6-IRR-ANCHOR-PRIORITY term high-priority from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IPV6-IRR-ANCHOR-PRIORITY term high-priority from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-IRR-ANCHOR-PRIORITY term high-priority then priority high
set policy-options policy-statement IPV6-IRR-ANCHOR-PRIORITY term high-priority then accept
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE from family inet6
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE from route-filter 2404:f800::/32 upto /128
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE from route-filter 2a01:111::/32 upto /128
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE from route-filter 2001:df0:7::/48 upto /128
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE from route-filter 2620:0:30::/45 upto /128
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term IPV6-MICROSOFT-IP-SPACE then accept
set policy-options policy-statement IPV6-MICROSOFT-IP-SPACE term reject then reject
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term SET-DEFAULT-LP then local-preference 350
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term CUST-DEPREF then local-preference 340
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC from prefix-list-filter LinkedIn-V6 orlonger
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC then community add COMM_ORIGIN_PARTNER_LINKEDIN
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC then next policy
set policy-options policy-statement IPV6-PTNR-LINKEDIN-IN term REJECT-REST then reject
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term overload-knob then next term
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default-overload from color 10293
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default-overload from route-filter ::/0 exact
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default-overload then metric 65000
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default-overload then next-hop self
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default-overload then accept
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default from route-filter ::/0 exact
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default then next-hop self
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term ipv6-send-default then accept
set policy-options policy-statement IPV6-SEND-DEFAULT-ONLY term reject-rest then reject
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color20 from protocol bgp
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color20 from color 20
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color20 then next-hop self
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color20 then next policy
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color30 from protocol bgp
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color30 from color 30
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color30 then local-preference subtract 1
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color30 then next-hop self
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-color30 then next policy
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-type from protocol bgp
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-type from route-type external
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-type then next-hop self
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-type then next policy
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-comm from protocol bgp
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-comm from community COMM_ORIGIN_PROPERTY_AR
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-comm then next-hop self
set policy-options policy-statement IPV6-SET-NEXT-HOP-SELF term match-comm then next policy
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term REJECT-LONG-AS then reject
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term CUST-DEPREF then local-preference 390
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-ANYCAST from prefix-list-filter IPV6-ANYCAST-IP-SPACE orlonger
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-ANYCAST then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PRIVATE from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PRIVATE then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PRIVATE then next policy
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PUBLIC from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PUBLIC then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term ALLOW-IPV6-MSFT-PUBLIC then next policy
set policy-options policy-statement IPV6-STD-CUST-EBGP-IN term REJECT-REST then reject
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term REJECT-LONG-AS then reject
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term CUST-DEPREF then local-preference 390
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-ANYCAST from prefix-list-filter IPV6-ANYCAST-IP-SPACE orlonger
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-ANYCAST then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PRIVATE from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PRIVATE then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PRIVATE then next policy
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PUBLIC from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PUBLIC then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-IPV6-MSFT-PUBLIC then next policy
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-BYOIP from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-BYOIP then local-preference 425
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-BYOIP then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-BYOIP then community add COMM_FUNC_FABRIC_BYOIP
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term ALLOW-BYOIP then next policy
set policy-options policy-statement IPV6-STD-CUST-FABRIC-IN term REJECT-REST then reject
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term REJECT-LONG-AS then reject
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_PROPERTY_AR
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-NH-SELF then color 30
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term SET-NH-SELF then local-preference add 1
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE-V6 from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE-V6 then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE-V6 then next policy
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC-V6 from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC-V6 then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC-V6 then next policy
set policy-options policy-statement IPV6-STD-CUST-IBGP-IN term reject then reject
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BAD-AS then reject
set policy-options policy-statement IPV6-STD-PARTNER-IN term REMOVE-MSFT-COMMUNITIES then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement IPV6-STD-PARTNER-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement IPV6-STD-PARTNER-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement IPV6-STD-PARTNER-IN term ALLOW-INFRA-SPACES from as-path as-path-12076
set policy-options policy-statement IPV6-STD-PARTNER-IN term ALLOW-INFRA-SPACES from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-STD-PARTNER-IN term ALLOW-INFRA-SPACES from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-STD-PARTNER-IN term ALLOW-INFRA-SPACES then next policy
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BOGONS from route-filter ::/0 exact
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BOGONS from prefix-list-filter BOGON-V6 orlonger
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-BOGONS then reject
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-STD-PARTNER-IN term REJECT-MSFT-PREFIXES then reject
set policy-options policy-statement IPV6-TO-BGP term allow_good_bgp from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_good_bgp from protocol bgp
set policy-options policy-statement IPV6-TO-BGP term allow_good_bgp from route-filter 2000::/3 upto /128
set policy-options policy-statement IPV6-TO-BGP term allow_good_bgp from route-filter e000::/3 upto /128
set policy-options policy-statement IPV6-TO-BGP term allow_good_bgp then accept
set policy-options policy-statement IPV6-TO-BGP term reject_bad_bgp from family inet6
set policy-options policy-statement IPV6-TO-BGP term reject_bad_bgp from protocol bgp
set policy-options policy-statement IPV6-TO-BGP term reject_bad_bgp from route-filter ::/0 upto /128
set policy-options policy-statement IPV6-TO-BGP term reject_bad_bgp then reject
set policy-options policy-statement IPV6-TO-BGP term reject_loopback from family inet6
set policy-options policy-statement IPV6-TO-BGP term reject_loopback from protocol direct
set policy-options policy-statement IPV6-TO-BGP term reject_loopback from interface lo0.0
set policy-options policy-statement IPV6-TO-BGP term reject_loopback then reject
set policy-options policy-statement IPV6-TO-BGP term deny_connected from family inet6
set policy-options policy-statement IPV6-TO-BGP term deny_connected from protocol direct
set policy-options policy-statement IPV6-TO-BGP term deny_connected from prefix-list ipv6_deny_connected_bgp
set policy-options policy-statement IPV6-TO-BGP term deny_connected then reject
set policy-options policy-statement IPV6-TO-BGP term allow_connected from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_connected from protocol direct
set policy-options policy-statement IPV6-TO-BGP term allow_connected from route-filter 2000::/3 prefix-length-range /126-/127
set policy-options policy-statement IPV6-TO-BGP term allow_connected then accept
set policy-options policy-statement IPV6-TO-BGP term allow_anchor from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_anchor from protocol static
set policy-options policy-statement IPV6-TO-BGP term allow_anchor from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term allow_anchor from tag 100
set policy-options policy-statement IPV6-TO-BGP term allow_anchor from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-TO-BGP term allow_anchor then local-preference 400
set policy-options policy-statement IPV6-TO-BGP term allow_anchor then community add ANCHOR
set policy-options policy-statement IPV6-TO-BGP term allow_anchor then next-hop ::ffff:207.46.32.38
set policy-options policy-statement IPV6-TO-BGP term allow_anchor then accept
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics from protocol static
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics from tag 200
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics from prefix-list ipv6_permit_static_bgp
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics then community add LEAK_SPECIFICS
set policy-options policy-statement IPV6-TO-BGP term allow_leak_specifics then accept
set policy-options policy-statement IPV6-TO-BGP term allow_other_routes from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_other_routes from protocol static
set policy-options policy-statement IPV6-TO-BGP term allow_other_routes from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term allow_other_routes from prefix-list ipv6_permit_static_bgp
set policy-options policy-statement IPV6-TO-BGP term allow_other_routes then accept
set policy-options policy-statement IPV6-TO-BGP term allow_pullup from family inet6
set policy-options policy-statement IPV6-TO-BGP term allow_pullup from protocol static
set policy-options policy-statement IPV6-TO-BGP term allow_pullup from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term allow_pullup from prefix-list ipv6_permit_pullup_bgp
set policy-options policy-statement IPV6-TO-BGP term allow_pullup then next-hop ::ffff:207.46.32.38
set policy-options policy-statement IPV6-TO-BGP term allow_pullup then accept
set policy-options policy-statement IPV6-TO-BGP term aggregate_localpref_400 from family inet6
set policy-options policy-statement IPV6-TO-BGP term aggregate_localpref_400 from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term aggregate_localpref_400 from prefix-list ipv6_permit_aggregate_bgp
set policy-options policy-statement IPV6-TO-BGP term aggregate_localpref_400 then local-preference 400
set policy-options policy-statement IPV6-TO-BGP term aggregate_localpref_400 then accept
set policy-options policy-statement IPV6-TO-BGP term black_hole from family inet6
set policy-options policy-statement IPV6-TO-BGP term black_hole from community 8075-RBL
set policy-options policy-statement IPV6-TO-BGP term black_hole then next-hop ::ffff:207.46.32.38
set policy-options policy-statement IPV6-TO-BGP term reject-all from family inet6
set policy-options policy-statement IPV6-TO-BGP term reject-all from protocol static
set policy-options policy-statement IPV6-TO-BGP term reject-all from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP term reject-all then reject
set policy-options policy-statement IPV6-TO-BGP-NATIVE term reject_loopback from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term reject_loopback from protocol direct
set policy-options policy-statement IPV6-TO-BGP-NATIVE term reject_loopback from interface lo0.0
set policy-options policy-statement IPV6-TO-BGP-NATIVE term reject_loopback then reject
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups from protocol static
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups from tag 100
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups from prefix-list ipv6_permit_static_bgp_anchor
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups then local-preference 400
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups then community add ANCHOR
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups then default-action accept
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_public_pullups then next policy
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups from protocol static
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups from tag 200
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups from prefix-list ipv6_permit_static_bgp
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups then local-preference 400
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups then community add LEAK_SPECIFICS
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups then default-action accept
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_private_pullups then next policy
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics from protocol direct
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics from protocol static
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics from prefix-list-filter IPV6-MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics then community add COMM_ROUTE_PRIVATE_SPECIFIC_CORE
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_private_specifics then next term
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics from protocol direct
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics from protocol static
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics from policy IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics then community add COMM_ROUTE_PUBLIC_SPECIFIC_CORE
set policy-options policy-statement IPV6-TO-BGP-NATIVE term check_public_specifics then next term
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected from protocol direct
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected from route-filter 2000::/3 prefix-length-range /126-/127
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected then local-preference 400
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected then default-action accept
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_connected then next policy
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes from protocol static
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes from protocol aggregate
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes from prefix-list ipv6_permit_static_bgp
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes then local-preference 400
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes then next-hop self
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes then default-action accept
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_static_routes then next policy
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp from family inet6
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp from protocol bgp
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp from route-filter 2000::/3 upto /128
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp from route-filter 58::/3 upto /128
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp then default-action accept
set policy-options policy-statement IPV6-TO-BGP-NATIVE term allow_good_bgp then next policy
set policy-options policy-statement IPV6-TO-BGP-NATIVE term reject-rest then reject
set policy-options policy-statement IRR-ANCHOR-PRIORITY term high-priority from protocol bgp
set policy-options policy-statement IRR-ANCHOR-PRIORITY term high-priority from community GLOBAL-SEND-TO-PEERS
set policy-options policy-statement IRR-ANCHOR-PRIORITY term high-priority from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement IRR-ANCHOR-PRIORITY term high-priority then priority high
set policy-options policy-statement IRR-ANCHOR-PRIORITY term high-priority then accept
set policy-options policy-statement ITE-BGP-CONDUIT-IN term REJECT-PRIVATE from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-IN term REJECT-PRIVATE from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-IN term REJECT-PRIVATE then reject
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL from community COMM_CUST_ITE_UC_INTERNAL
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL then local-preference 425
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_ORIGIN_CONDUIT_ITE
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_NO_ADVERTISE
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-INTERNAL then reject
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL from community COMM_CUST_ITE_UC_EXTERNAL
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL then local-preference 325
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_ORIGIN_CONDUIT_ITE
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_NO_ADVERTISE
set policy-options policy-statement ITE-BGP-CONDUIT-IN term ACCEPT-CONDUIT-EXTERNAL then accept
set policy-options policy-statement ITE-BGP-CONDUIT-IN term REJECT-REST then reject
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term REJECT-PRIVATE from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term REJECT-PRIVATE from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term REJECT-PRIVATE then reject
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL from community COMM_CUST_ITE_UC_INTERNAL
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL then local-preference 425
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_ORIGIN_CONDUIT_ITE
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL then community add COMM_RT_ITE_SITE
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-INTERNAL then reject
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL from community COMM_CUST_ITE_UC_EXTERNAL
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then local-preference 325
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_ORIGIN_CONDUIT_ITE
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_RT_ITE_SITE
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then community add COMM_RT_ITE_REGION
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term ACCEPT-CONDUIT-EXTERNAL then accept
set policy-options policy-statement ITE-BGP-CONDUIT-L3VPN-IN term REJECT-REST then reject
set policy-options policy-statement ITE-BackboneToEdgeCongestionControl-199.27.73.230 term one from route-filter 3.224.0.0/12 exact
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 term one from route-filter 13.64.0.0/11 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 term one from route-filter 68.218.0.0/15 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 term one from route-filter 104.208.0.0/13 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 term one from route-filter 13.104.0.0/14 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 term one from route-filter 52.224.0.0/11 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-140.82.127.147 then next policy
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-165.225.250.65 term one from route-filter 172.200.0.0/13 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-165.225.250.65 term one from route-filter 168.62.0.0/15 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-165.225.250.65 then next policy
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-172.20.48.3 then next policy
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-172.21.150.2 then next policy
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-99.82.180.152 term one from route-filter 23.102.0.0/16 exact reject
set policy-options policy-statement ITE-EdgeToBackboneCongestionControl-99.82.180.152 then next policy
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term ALLOW-MSFT-PUBLIC from community COMM_FUNC_HIJACK_MITIGATION
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term ALLOW-MSFT-PUBLIC from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term ALLOW-MSFT-PUBLIC from prefix-list-filter IXIA_PREFIXES orlonger
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term ALLOW-MSFT-PUBLIC then local-preference 400
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term ALLOW-MSFT-PUBLIC then next policy
set policy-options policy-statement ITE-HIJACK-MITIGATION-IN term reject then reject
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V4 from community COMM_FUNC_ITE_BYOIP
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V4 from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V4 then local-preference 400
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V4 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V6 from community COMM_FUNC_ITE_BYOIP
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V6 from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V6 then local-preference 400
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-BYOIP-V6 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V4 from community COMM_FUNC_HIJACK_MITIGATION
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V4 from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V4 from prefix-list-filter IXIA_PREFIXES orlonger
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V4 then local-preference 400
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V4 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP125 from community COMM_FUNC_ITE_EGRESS_LP125_MATCH
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP125 then local-preference 125
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP125 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP225 from community COMM_FUNC_ITE_EGRESS_LP225_MATCH
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP225 then local-preference 225
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP225 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP325 from community COMM_FUNC_ITE_EGRESS_LP325_MATCH
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP325 then local-preference 325
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-EGRESS-CONGESTION-LP325 then next policy
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V6 from community COMM_FUNC_HIJACK_MITIGATION
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V6 from prefix-list-filter IPV6-GLOBAL-EGRESS-SPACE orlonger
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V6 then local-preference 400
set policy-options policy-statement ITE-IBGP-CONDUIT-IN term ITE-HIJACK-V6 then next policy
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-BYOIP from community COMM_FUNC_ITE_BYOIP
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-BYOIP from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-BYOIP then next policy
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-FABRIC-BYOIP from as-path ASPATH-PRIVATE
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-FABRIC-BYOIP from community COMM_FUNC_FABRIC_BYOIP
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-FABRIC-BYOIP from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-FABRIC-BYOIP then local-preference 375
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-FABRIC-BYOIP then next policy
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP125 from community COMM_FUNC_ITE_EGRESS_LP125_MATCH
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then local-preference 100
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then community delete COMM_FUNC_ITE_EGRESS_LP125
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then next-hop self
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then next policy
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP225 from community COMM_FUNC_ITE_EGRESS_LP225_MATCH
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then local-preference 200
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then community delete COMM_FUNC_ITE_EGRESS_LP225
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then next-hop self
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then next policy
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP325 from community COMM_FUNC_ITE_EGRESS_LP325_MATCH
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then local-preference 300
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then community delete COMM_FUNC_ITE_EGRESS_LP325
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then next-hop self
set policy-options policy-statement ITE-IBGP-V4 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then next policy
set policy-options policy-statement ITE-IBGP-V4 term NEXT then next policy
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-BYOIP from community COMM_FUNC_ITE_BYOIP
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-BYOIP from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-BYOIP then next policy
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-FABRIC-BYOIP from as-path ASPATH-PRIVATE
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-FABRIC-BYOIP from community COMM_FUNC_FABRIC_BYOIP
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-FABRIC-BYOIP from prefix-list-filter BYOIP-V6 orlonger
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-FABRIC-BYOIP then local-preference 375
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-FABRIC-BYOIP then next policy
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP125 from community COMM_FUNC_ITE_EGRESS_LP125_MATCH
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then local-preference 100
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then community delete COMM_FUNC_ITE_EGRESS_LP125
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then next-hop self
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP125 then next policy
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP225 from community COMM_FUNC_ITE_EGRESS_LP225_MATCH
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then local-preference 200
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then community delete COMM_FUNC_ITE_EGRESS_LP225
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then next-hop self
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP225 then next policy
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP325 from community COMM_FUNC_ITE_EGRESS_LP325_MATCH
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then local-preference 300
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then community delete COMM_FUNC_ITE_EGRESS_LP325
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then next-hop self
set policy-options policy-statement ITE-IBGP-V6 term PERMIT-ITE-EGRESS-CONGESTION-LP325 then next policy
set policy-options policy-statement ITE-IngressCongestionControl-172.20.48.3 then next policy
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_global from protocol bgp
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_global from community COMM_RT_ITE_PREMIUM_GLOBAL
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_global then accept
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_cont from protocol bgp
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_cont from community COMM_RT_ITE_PREMIUM_CONTINENT
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_cont then accept
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_irr from protocol bgp
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_irr from community COMM_RT_ITE_PREMIUM_IRR
set policy-options policy-statement ITEPREMIUM-EXPORT term advertise_irr then accept
set policy-options policy-statement ITEPREMIUM-EXPORT term reject then reject
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_global from protocol bgp
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_global from community COMM_RT_ITE_PREMIUM_GLOBAL
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_global then accept
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_cont from protocol bgp
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_cont from community COMM_RT_ITE_PREMIUM_CONTINENT
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_cont then accept
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_irr from protocol bgp
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_irr from community COMM_RT_ITE_PREMIUM_IRR
set policy-options policy-statement ITEPREMIUM-IMPORT term accept_irr then accept
set policy-options policy-statement ITEPREMIUM-IMPORT term reject then reject
set policy-options policy-statement ITEVRF-EXPORT term direct from protocol direct
set policy-options policy-statement ITEVRF-EXPORT term direct then community add COMM_RT_ITE_SITE
set policy-options policy-statement ITEVRF-EXPORT term direct then community add COMM_RT_ITE_REGION
set policy-options policy-statement ITEVRF-EXPORT term direct then accept
set policy-options policy-statement ITEVRF-EXPORT term bgp-site from protocol bgp
set policy-options policy-statement ITEVRF-EXPORT term bgp-site from community COMM_RT_ITE_SITE
set policy-options policy-statement ITEVRF-EXPORT term bgp-site then accept
set policy-options policy-statement ITEVRF-EXPORT term bgp-region from protocol bgp
set policy-options policy-statement ITEVRF-EXPORT term bgp-region from community COMM_RT_ITE_REGION
set policy-options policy-statement ITEVRF-EXPORT term bgp-region then accept
set policy-options policy-statement ITEVRF-EXPORT term reject then reject
set policy-options policy-statement ITEVRF-IMPORT term global from protocol bgp
set policy-options policy-statement ITEVRF-IMPORT term global from community COMM_RT_ITE_SITE
set policy-options policy-statement ITEVRF-IMPORT term global from community COMM_RT_ITE_REGION
set policy-options policy-statement ITEVRF-IMPORT term global then accept
set policy-options policy-statement ITEVRF-IMPORT term reject then reject
set policy-options policy-statement LOCAL-CLIENT-BGP term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement LOCAL-CLIENT-BGP term overload-knob then next term
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local_overload from protocol bgp
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local_overload from as-path LOCAL
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local_overload from color 10293
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local_overload then local-preference 10
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local_overload then accept
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local from protocol bgp
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local from as-path LOCAL
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_local then accept
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068_overload from protocol bgp
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068_overload from as-path AS8068
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068_overload from color 10293
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068_overload then local-preference 10
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068_overload then accept
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068 from protocol bgp
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068 from as-path AS8068
set policy-options policy-statement LOCAL-CLIENT-BGP term allow_8068 then accept
set policy-options policy-statement LOCAL-CLIENT-BGP term reject_rest then reject
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 13.96.0.0/13 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.35.252.0/22 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.128.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.130.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.144.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.176.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 20.180.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 21.0.0.0/8 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 22.0.0.0/8 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 23.103.0.0/18 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.0.0.0/12 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.28.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.33.80.0/20 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.41.3.0/25 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.64.0.0/10 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.128.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.142.0.0/15 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.144.0.0/12 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.160.0.0/11 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.192.0.0/11 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.224.0.0/12 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.244.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 25.248.0.0/13 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 40.66.128.0/17 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 40.108.0.0/19 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 40.108.32.0/19 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 40.108.64.0/18 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 40.109.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 52.132.0.0/14 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 52.145.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 104.146.0.0/19 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 104.146.32.0/19 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 104.146.64.0/18 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 104.147.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 129.75.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 134.177.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 138.196.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 141.251.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 146.147.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.232.4.0/26 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.232.6.0/23 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.235.9.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.235.10.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.235.13.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 191.235.14.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 192.32.0.0/16 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 192.100.102.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 192.100.103.0/24 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES from route-filter 198.18.0.0/15 orlonger
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term MICROSOFT-PRIVATE-ROUTES then accept
set policy-options policy-statement MICROSOFT-PRIVATE-ROUTES term reject then reject
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-ANCHORS from community COMM_ROUTE_PUBLIC_ANCHOR_CORE
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-ANCHORS from community COMM_ROUTE_PRIVATE_ANCHOR_CORE
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-ANCHORS from community COMM_DEFAULT_ROUTE_ANCHOR
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-ANCHORS then next-hop 207.46.32.255
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-ANCHORS then next policy
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-RTBH from community COMM_ROUTE_RTBH
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-RTBH then next-hop 192.0.2.66
set policy-options policy-statement NEXTHOP-REWRITE-IPV4 term REWRITE-RTBH then next policy
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-ANCHORS from community COMM_ROUTE_PUBLIC_ANCHOR_CORE
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-ANCHORS from community COMM_ROUTE_PRIVATE_ANCHOR_CORE
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-ANCHORS from community COMM_DEFAULT_ROUTE_ANCHOR
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-ANCHORS then next-hop 2001:506:28:9000:ffff:ffff:ffff:ffff
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-ANCHORS then next policy
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-RTBH from community COMM_ROUTE_RTBH
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-RTBH then next-hop 100::6666:6666:6666:6666
set policy-options policy-statement NEXTHOP-REWRITE-IPV6 term REWRITE-RTBH then next policy
set policy-options policy-statement OVERLOAD-SCRIPT-FLAG then reject
set policy-options policy-statement PASS_ALL then accept
set policy-options policy-statement PERMIT-ALL term permit-all then accept
set policy-options policy-statement PRIVATE-ROUTES term PRIVATE-ROUTES from route-filter 10.0.0.0/8 orlonger accept
set policy-options policy-statement PRIVATE-ROUTES term PRIVATE-ROUTES from route-filter 100.64.0.0/10 orlonger accept
set policy-options policy-statement PRIVATE-ROUTES term PRIVATE-ROUTES from route-filter 172.16.0.0/12 orlonger accept
set policy-options policy-statement PRIVATE-ROUTES term PRIVATE-ROUTES from route-filter 192.168.0.0/16 orlonger accept
set policy-options policy-statement PRIVATE-ROUTES term reject then reject
set policy-options policy-statement PTNR-LINKEDIN-IN term SET-DEFAULT-LP then local-preference 350
set policy-options policy-statement PTNR-LINKEDIN-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement PTNR-LINKEDIN-IN term CUST-DEPREF then local-preference 340
set policy-options policy-statement PTNR-LINKEDIN-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement PTNR-LINKEDIN-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement PTNR-LINKEDIN-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC from prefix-list-filter LinkedIn-V4 orlonger
set policy-options policy-statement PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC then community add COMM_ORIGIN_PARTNER_LINKEDIN
set policy-options policy-statement PTNR-LINKEDIN-IN term ALLOW-LINKEDIN-PUBLIC then next policy
set policy-options policy-statement PTNR-LINKEDIN-IN term REJECT-REST then reject
set policy-options policy-statement REGION-STD-PEER-OUT term bogon from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term bogon from policy GLOBAL-BOGON-FILTER
set policy-options policy-statement REGION-STD-PEER-OUT term bogon then reject
set policy-options policy-statement REGION-STD-PEER-OUT term no-advertise from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term no-advertise from community GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement REGION-STD-PEER-OUT term no-advertise then reject
set policy-options policy-statement REGION-STD-PEER-OUT term region-no-advertise from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term region-no-advertise from community REGIONAL-NO-ADV-TO-PEERS
set policy-options policy-statement REGION-STD-PEER-OUT term region-no-advertise then reject
set policy-options policy-statement REGION-STD-PEER-OUT term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement REGION-STD-PEER-OUT term overload-knob then next term
set policy-options policy-statement REGION-STD-PEER-OUT term overload-reject from color 10293
set policy-options policy-statement REGION-STD-PEER-OUT term overload-reject then reject
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast from as-path as-path-50
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast from community COMM_FUNC_ADV_REGION
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast from prefix-list ANYCAST-IP-SPACE
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast then metric 100
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast then community set ANYCAST-OUT-COMMUNITIES
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast then as-path-prepend 8075
set policy-options policy-statement REGION-STD-PEER-OUT term announce-anycast then accept
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes from as-path as-path-50
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes from community COMM_FUNC_ADV_REGION
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes then metric 100
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes then community delete all
set policy-options policy-statement REGION-STD-PEER-OUT term announce-bgp-routes then accept
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd from as-path as-path-50
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd from community COMM_FUNC_LOCAL_AFD
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd then metric 100
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd then community delete all
set policy-options policy-statement REGION-STD-PEER-OUT term announce-local-afd then accept
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes from as-path AS14413
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes from community COMM_FUNC_ADV_REGION
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes from prefix-list-filter LinkedIn-V4 orlonger
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes then metric 100
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes then community delete all
set policy-options policy-statement REGION-STD-PEER-OUT term announce-LinkedIn-routes then accept
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes from protocol bgp
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes from as-path AS-BYOIP
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes from community COMM_FUNC_ADV_REGION
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes then metric 100
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes then community delete all
set policy-options policy-statement REGION-STD-PEER-OUT term announce-BYOIP-routes then accept
set policy-options policy-statement REGION-STD-PEER-OUT term reject then reject
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS704 from as-path AS704
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS704 then reject
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS407 from as-path AS407
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS407 then reject
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS174 from as-path AS174
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term AS174 then reject
set policy-options policy-statement REJECT_VARUN_IXIA_PREFIXES term ACCEPT then accept
set policy-options policy-statement RPKI-VALIDITY-DEPREF term VALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-DEPREF term VALID from validation-database valid
set policy-options policy-statement RPKI-VALIDITY-DEPREF term VALID then validation-state valid
set policy-options policy-statement RPKI-VALIDITY-DEPREF term VALID then community add COMM_ROUTE_RPKI-VALID
set policy-options policy-statement RPKI-VALIDITY-DEPREF term VALID then next policy
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID from validation-database invalid
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID then local-preference 20
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID then validation-state invalid
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID then community add COMM_ROUTE_RPKI-INVALID
set policy-options policy-statement RPKI-VALIDITY-DEPREF term INVALID then next policy
set policy-options policy-statement RPKI-VALIDITY-DEPREF term UNKNOWN from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-DEPREF term UNKNOWN then validation-state unknown
set policy-options policy-statement RPKI-VALIDITY-DEPREF term UNKNOWN then community add COMM_ROUTE_RPKI-UNKNOWN
set policy-options policy-statement RPKI-VALIDITY-DEPREF term UNKNOWN then next policy
set policy-options policy-statement RPKI-VALIDITY-REJECT term VALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-REJECT term VALID from validation-database valid
set policy-options policy-statement RPKI-VALIDITY-REJECT term VALID then validation-state valid
set policy-options policy-statement RPKI-VALIDITY-REJECT term VALID then community add COMM_ROUTE_RPKI-VALID
set policy-options policy-statement RPKI-VALIDITY-REJECT term VALID then next policy
set policy-options policy-statement RPKI-VALIDITY-REJECT term INVALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-REJECT term INVALID from validation-database invalid
set policy-options policy-statement RPKI-VALIDITY-REJECT term INVALID then reject
set policy-options policy-statement RPKI-VALIDITY-REJECT term UNKNOWN from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-REJECT term UNKNOWN then validation-state unknown
set policy-options policy-statement RPKI-VALIDITY-REJECT term UNKNOWN then community add COMM_ROUTE_RPKI-UNKNOWN
set policy-options policy-statement RPKI-VALIDITY-REJECT term UNKNOWN then next policy
set policy-options policy-statement RPKI-VALIDITY-TAG term VALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-TAG term VALID from validation-database valid
set policy-options policy-statement RPKI-VALIDITY-TAG term VALID then validation-state valid
set policy-options policy-statement RPKI-VALIDITY-TAG term VALID then community add COMM_ROUTE_RPKI-VALID
set policy-options policy-statement RPKI-VALIDITY-TAG term VALID then next policy
set policy-options policy-statement RPKI-VALIDITY-TAG term INVALID from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-TAG term INVALID from validation-database invalid
set policy-options policy-statement RPKI-VALIDITY-TAG term INVALID then validation-state invalid
set policy-options policy-statement RPKI-VALIDITY-TAG term INVALID then community add COMM_ROUTE_RPKI-INVALID
set policy-options policy-statement RPKI-VALIDITY-TAG term INVALID then next policy
set policy-options policy-statement RPKI-VALIDITY-TAG term UNKNOWN from protocol bgp
set policy-options policy-statement RPKI-VALIDITY-TAG term UNKNOWN then validation-state unknown
set policy-options policy-statement RPKI-VALIDITY-TAG term UNKNOWN then community add COMM_ROUTE_RPKI-UNKNOWN
set policy-options policy-statement RPKI-VALIDITY-TAG term UNKNOWN then next policy
set policy-options policy-statement SET-BGP-ORIGIN-IGP term SET-BGP-ORIGIN-IGP then origin igp
set policy-options policy-statement SET-BGP-ORIGIN-IGP term SET-BGP-ORIGIN-IGP then next policy
set policy-options policy-statement SET-NEXT-HOP-SELF term match-color30 from protocol bgp
set policy-options policy-statement SET-NEXT-HOP-SELF term match-color30 from color 30
set policy-options policy-statement SET-NEXT-HOP-SELF term match-color30 then local-preference subtract 1
set policy-options policy-statement SET-NEXT-HOP-SELF term match-color30 then next-hop self
set policy-options policy-statement SET-NEXT-HOP-SELF term match-color30 then next policy
set policy-options policy-statement SET-NEXT-HOP-SELF term match-type from protocol bgp
set policy-options policy-statement SET-NEXT-HOP-SELF term match-type from route-type external
set policy-options policy-statement SET-NEXT-HOP-SELF term match-type then next-hop self
set policy-options policy-statement SET-NEXT-HOP-SELF term match-type then next policy
set policy-options policy-statement SET-OVERLOAD-ASPATH term implement-overload then next policy
set policy-options policy-statement SET-OVERLOAD-LOCAL-PREF term implement-overload then next policy
set policy-options policy-statement SET-OVERLOAD-REJECT term implement-overload then next policy
set policy-options policy-statement SET-SR-TE-COLOR term set_bgp_te_color then community add srte
set policy-options policy-statement SET-SR-TE-COLOR term set_bgp_te_color then next policy
set policy-options policy-statement STATIC-TO-BGP term deny_disallowed from family inet
set policy-options policy-statement STATIC-TO-BGP term deny_disallowed from protocol static
set policy-options policy-statement STATIC-TO-BGP term deny_disallowed from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term deny_disallowed from prefix-list deny_static_bgp
set policy-options policy-statement STATIC-TO-BGP term deny_disallowed then reject
set policy-options policy-statement STATIC-TO-BGP term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement STATIC-TO-BGP term overload-knob then next term
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from tag 100
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from color 10293
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload from prefix-list permit_static_bgp_anchor
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload then local-preference 10
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload then community add ANCHOR
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups_overload then accept
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups from tag 100
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups from prefix-list permit_static_bgp_anchor
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups then local-preference 400
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups then community add ANCHOR
set policy-options policy-statement STATIC-TO-BGP term allow_intended_pullups then accept
set policy-options policy-statement STATIC-TO-BGP term aggregate_localpref_400 from family inet
set policy-options policy-statement STATIC-TO-BGP term aggregate_localpref_400 from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term aggregate_localpref_400 from prefix-list permit_static_bgp
set policy-options policy-statement STATIC-TO-BGP term aggregate_localpref_400 then local-preference 400
set policy-options policy-statement STATIC-TO-BGP term aggregate_localpref_400 then next term
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from tag 200
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from color 10293
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload from prefix-list permit_static_bgp
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload then local-preference 10
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload then community add LEAK_SPECIFICS
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics_overload then accept
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics from tag 200
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics from prefix-list permit_static_bgp
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics then community add LEAK_SPECIFICS
set policy-options policy-statement STATIC-TO-BGP term allow_intended_specifics then accept
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload from color 10293
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload from prefix-list permit_static_bgp
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload then local-preference 10
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest_overload then accept
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest from family inet
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest from protocol static
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest from prefix-list permit_static_bgp
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest then local-preference 400
set policy-options policy-statement STATIC-TO-BGP term allow_intended_rest then accept
set policy-options policy-statement STATIC-TO-BGP term reject_default from family inet
set policy-options policy-statement STATIC-TO-BGP term reject_default from protocol static
set policy-options policy-statement STATIC-TO-BGP term reject_default from protocol aggregate
set policy-options policy-statement STATIC-TO-BGP term reject_default then reject
set policy-options policy-statement STD-CUST-EBGP-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement STD-CUST-EBGP-IN term REJECT-LONG-AS then reject
set policy-options policy-statement STD-CUST-EBGP-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement STD-CUST-EBGP-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement STD-CUST-EBGP-IN term CUST-DEPREF then local-preference 390
set policy-options policy-statement STD-CUST-EBGP-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement STD-CUST-EBGP-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement STD-CUST-EBGP-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement STD-CUST-EBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement STD-CUST-EBGP-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-ANYCAST from prefix-list-filter ANYCAST-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-ANYCAST then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PRIVATE then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PRIVATE then next policy
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PUBLIC from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PUBLIC then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-EBGP-IN term ALLOW-MSFT-PUBLIC then next policy
set policy-options policy-statement STD-CUST-EBGP-IN term REJECT-REST then reject
set policy-options policy-statement STD-CUST-FABRIC-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement STD-CUST-FABRIC-IN term REJECT-LONG-AS then reject
set policy-options policy-statement STD-CUST-FABRIC-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement STD-CUST-FABRIC-IN term CUST-DEPREF from community COMM_CUST_DEPREF
set policy-options policy-statement STD-CUST-FABRIC-IN term CUST-DEPREF then local-preference 390
set policy-options policy-statement STD-CUST-FABRIC-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement STD-CUST-FABRIC-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement STD-CUST-FABRIC-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement STD-CUST-FABRIC-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement STD-CUST-FABRIC-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-ANYCAST from prefix-list-filter ANYCAST-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-ANYCAST then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PRIVATE then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PRIVATE then next policy
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PUBLIC from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PUBLIC then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-MSFT-PUBLIC then next policy
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-BYOIP from prefix-list-filter BYOIP-V4 orlonger
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-BYOIP then local-preference 425
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-BYOIP then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-BYOIP then community add COMM_FUNC_FABRIC_BYOIP
set policy-options policy-statement STD-CUST-FABRIC-IN term ALLOW-BYOIP then next policy
set policy-options policy-statement STD-CUST-FABRIC-IN term REJECT-REST then reject
set policy-options policy-statement STD-CUST-IBGP-IN term REJECT-LONG-AS from as-path as-path-75
set policy-options policy-statement STD-CUST-IBGP-IN term REJECT-LONG-AS then reject
set policy-options policy-statement STD-CUST-IBGP-IN term SET-DEFAULT-LP then local-preference 400
set policy-options policy-statement STD-CUST-IBGP-IN term CUST-OVERLOAD from community COMM_OVERLOAD
set policy-options policy-statement STD-CUST-IBGP-IN term CUST-OVERLOAD then local-preference 10
set policy-options policy-statement STD-CUST-IBGP-IN term REMOVE-NON-STD-COMM then community delete COMM_NON_CUST
set policy-options policy-statement STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement STD-CUST-IBGP-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_PROPERTY_AR
set policy-options policy-statement STD-CUST-IBGP-IN term ANYCAST-ROUTES from prefix-list-filter ANYCAST-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-IBGP-IN term ANYCAST-ROUTES then local-preference 400
set policy-options policy-statement STD-CUST-IBGP-IN term ANYCAST-ROUTES then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement STD-CUST-IBGP-IN term SET-NH-SELF then color 30
set policy-options policy-statement STD-CUST-IBGP-IN term SET-NH-SELF then local-preference add 1
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE then community add COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PRIVATE then next policy
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC then community add COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement STD-CUST-IBGP-IN term ALLOW-MSFT-PUBLIC then next policy
set policy-options policy-statement STD-CUST-IBGP-IN term reject then reject
set policy-options policy-statement STD-PARTNER-IN term REJECT-BAD-AS from as-path ASPATH-DOCUMENTATION
set policy-options policy-statement STD-PARTNER-IN term REJECT-BAD-AS from as-path ASPATH-RESERVED
set policy-options policy-statement STD-PARTNER-IN term REJECT-BAD-AS from as-path as-path-75
set policy-options policy-statement STD-PARTNER-IN term REJECT-BAD-AS from as-path LOCAL
set policy-options policy-statement STD-PARTNER-IN term REJECT-BAD-AS then reject
set policy-options policy-statement STD-PARTNER-IN term REMOVE-MSFT-COMMUNITIES then community delete DENY-MSN-COMMUNITIES-IN
set policy-options policy-statement STD-PARTNER-IN term SET-ORIGIN-COMM then community add COMM_ORIGIN_LOCATION
set policy-options policy-statement STD-PARTNER-IN term SET-ORIGIN-COMM then community add GLOBAL-EXT-CUSTOMER-COMMUNITY
set policy-options policy-statement STD-PARTNER-IN term ALLOW-INFRA-SPACES from as-path as-path-12076
set policy-options policy-statement STD-PARTNER-IN term ALLOW-INFRA-SPACES from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement STD-PARTNER-IN term ALLOW-INFRA-SPACES from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement STD-PARTNER-IN term ALLOW-INFRA-SPACES from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement STD-PARTNER-IN term ALLOW-INFRA-SPACES then next policy
set policy-options policy-statement STD-PARTNER-IN term REJECT-BOGONS from route-filter 0.0.0.0/0 exact
set policy-options policy-statement STD-PARTNER-IN term REJECT-BOGONS from prefix-list-filter BOGON-V4 orlonger
set policy-options policy-statement STD-PARTNER-IN term REJECT-BOGONS then reject
set policy-options policy-statement STD-PARTNER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter GLOBAL-EGRESS-IP-SPACE orlonger
set policy-options policy-statement STD-PARTNER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter PRIVATE-IP-SPACE orlonger
set policy-options policy-statement STD-PARTNER-IN term REJECT-MSFT-PREFIXES from prefix-list-filter MICROSOFT-PRIVATE-ROUTES orlonger
set policy-options policy-statement STD-PARTNER-IN term REJECT-MSFT-PREFIXES then reject
set policy-options policy-statement SUBREGIONAL-ROUTING term accept-routes-mysubregions from community SUBREGIONAL-MYSUBREGIONS
set policy-options policy-statement SUBREGIONAL-ROUTING term accept-routes-mysubregions then next policy
set policy-options policy-statement SUBREGIONAL-ROUTING term deny-azure-reuse-blocks from prefix-list-filter AZURE-IP-REUSE-SPACE orlonger
set policy-options policy-statement SUBREGIONAL-ROUTING term deny-azure-reuse-blocks then reject
set policy-options policy-statement SUBREGIONAL-ROUTING term deny-other-subregions from community SUBREGIONAL-ROUTING
set policy-options policy-statement SUBREGIONAL-ROUTING term deny-other-subregions then reject
set policy-options policy-statement TMS-EXPORT term direct from protocol direct
set policy-options policy-statement TMS-EXPORT term direct then community add COMM_RT_TMS_GLOBAL
set policy-options policy-statement TMS-EXPORT term direct then accept
set policy-options policy-statement TMS-EXPORT term continental from protocol bgp
set policy-options policy-statement TMS-EXPORT term continental from community COMM_RT_TMS_GEO
set policy-options policy-statement TMS-EXPORT term continental then accept
set policy-options policy-statement TMS-EXPORT term irr from protocol bgp
set policy-options policy-statement TMS-EXPORT term irr from community COMM_RT_TMS_IRR
set policy-options policy-statement TMS-EXPORT term irr then accept
set policy-options policy-statement TMS-EXPORT term global from protocol bgp
set policy-options policy-statement TMS-EXPORT term global then community add COMM_RT_TMS_GLOBAL
set policy-options policy-statement TMS-EXPORT term global then accept
set policy-options policy-statement TMS-EXPORT term reject then reject
set policy-options policy-statement TMS-IMPORT term global from protocol bgp
set policy-options policy-statement TMS-IMPORT term global from community COMM_RT_TMS_GLOBAL
set policy-options policy-statement TMS-IMPORT term global then accept
set policy-options policy-statement TMS-IMPORT term continental from protocol bgp
set policy-options policy-statement TMS-IMPORT term continental from community COMM_RT_TMS_GEO
set policy-options policy-statement TMS-IMPORT term continental then accept
set policy-options policy-statement TMS-IMPORT term irr from protocol bgp
set policy-options policy-statement TMS-IMPORT term irr from community COMM_RT_TMS_IRR
set policy-options policy-statement TMS-IMPORT term irr then accept
set policy-options policy-statement TMS-IMPORT term reject then reject
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anchor from community COMM_CUST_PUBLIC_ANCHOR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anchor then community delete COMM_CUST_PUBLIC_ANCHOR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anchor then community delete COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anchor then community add COMM_ROUTE_PUBLIC_ANCHOR_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anchor then community add GLOBAL-SEND-TO-PEERS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast from community COMM_CUST_PUBLIC_ANYCAST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast then community delete COMM_CUST_PUBLIC_ANYCAST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast then community delete COMM_ROUTE_PUBLIC_SPECIFIC_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast then community add COMM_ROUTE_PUBLIC_ANCHOR_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast then community add COMM_ROUTE_PUBLIC_ANYCAST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-public-anycast then community add GLOBAL-SEND-TO-PEERS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor from community COMM_CUST_PRIVATE_ANCHOR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor then community delete COMM_CUST_PRIVATE_ANCHOR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor then community delete COMM_ROUTE_PRIVATE_SPECIFIC_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor then community add COMM_ROUTE_PRIVATE_ANCHOR_CUST
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor then community add GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-private-anchor then community add GLOBAL-SEND-TO-CUSTOMERS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-dontadv-all from community COMM_CUST_DONTADV_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-dontadv-all then community delete COMM_CUST_DONTADV_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-dontadv-all then community add COMM_FUNC_DONTADV_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-nopeer-all from community COMM_CUST_NOPEERS_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-nopeer-all from community COMM_NOPEER
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-nopeer-all then community delete COMM_CUST_NOPEERS_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-nopeer-all then community add GLOBAL-NO-ADV-TO-PEERS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-nopeer-all then community add COMM_FUNC_NOPEERS_ALL
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-export from community COMM_CUST_NO_EXPORT
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-export then community delete COMM_CUST_NO_EXPORT
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-export then community add COMM_NO_EXPORT
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-advertise from community COMM_CUST_NO_ADVERTISE
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-advertise then community delete COMM_CUST_NO_ADVERTISE
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-no-advertise then community add COMM_NO_ADVERTISE
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-ar from community COMM_CUST_LEAK_AR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-ar then community delete COMM_CUST_LEAK_AR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-ar then community add COMM_FUNC_LEAK_AR
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-fabric from community COMM_CUST_LEAK_FABRIC
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-fabric then community delete COMM_CUST_LEAK_FABRIC
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-fabric then community add COMM_FUNC_LEAK_FABRIC
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-srch from community COMM_CUST_LEAK_SRCH
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-srch then community delete COMM_CUST_LEAK_SRCH
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-srch then community add COMM_FUNC_LEAK_SRCH
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-cis from community COMM_CUST_LEAK_CIS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-cis then community delete COMM_CUST_LEAK_CIS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-cis then community add COMM_FUNC_LEAK_CIS
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcg from community COMM_CUST_LEAK_XCG
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcg then community delete COMM_CUST_LEAK_XCG
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcg then community add COMM_FUNC_LEAK_XCG
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcgd from community COMM_CUST_LEAK_XCGD
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcgd then community delete COMM_CUST_LEAK_XCGD
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term translate-cust-leak-xcgd then community add COMM_FUNC_LEAK_XCGD
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v4 from family inet
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v4 from community COMM_ROUTE_RTBH
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v4 then community add COMM_NO_EXPORT
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v4 then next-hop 192.0.2.66
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v6 from family inet6
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v6 from community COMM_ROUTE_RTBH
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v6 then community add COMM_NO_EXPORT
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-rtbh-v6 then next-hop 100::6666:6666:6666:6666
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-depref from community COMM_CUST_DEPREF
set policy-options policy-statement TRANSLATE-CUSTOMER-COMMS term cust-depref then local-preference 390
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS704 from as-path AS704
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS704 then accept
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS407 from as-path AS407
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS407 then accept
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS174 from as-path AS174
set policy-options policy-statement VARUN_IXIA_PREFIXES term AS174 then accept
set policy-options policy-statement VARUN_IXIA_PREFIXES term REJECT then reject
set policy-options policy-statement default-originate-ibgp term overload-knob then color apply-groups BGP-OVERLOAD
set policy-options policy-statement default-originate-ibgp term overload-knob then next term
set policy-options policy-statement default-originate-ibgp term pass-default-overload from protocol static
set policy-options policy-statement default-originate-ibgp term pass-default-overload from protocol bgp
set policy-options policy-statement default-originate-ibgp term pass-default-overload from color 10293
set policy-options policy-statement default-originate-ibgp term pass-default-overload from route-filter 0.0.0.0/0 exact
set policy-options policy-statement default-originate-ibgp term pass-default-overload then local-preference 10
set policy-options policy-statement default-originate-ibgp term pass-default-overload then next-hop self
set policy-options policy-statement default-originate-ibgp term pass-default-overload then accept
set policy-options policy-statement default-originate-ibgp term pass-default from protocol static
set policy-options policy-statement default-originate-ibgp term pass-default from protocol bgp
set policy-options policy-statement default-originate-ibgp term pass-default from route-filter 0.0.0.0/0 exact
set policy-options policy-statement default-originate-ibgp term pass-default then next-hop self
set policy-options policy-statement default-originate-ibgp term pass-default then accept
set policy-options policy-statement default-originate-ibgp term overload-leak-overlap-blocks from color 10293
set policy-options policy-statement default-originate-ibgp term overload-leak-overlap-blocks from prefix-list-filter overlapp-blocks orlonger
set policy-options policy-statement default-originate-ibgp term overload-leak-overlap-blocks then local-preference 10
set policy-options policy-statement default-originate-ibgp term overload-leak-overlap-blocks then accept
set policy-options policy-statement default-originate-ibgp term leak-overlap-blocks from prefix-list-filter overlapp-blocks orlonger
set policy-options policy-statement default-originate-ibgp term leak-overlap-blocks then accept
set policy-options policy-statement deny_168.142.196.63 term 1 from route-filter 168.142.196.63/32 exact
set policy-options policy-statement deny_168.142.196.63 term 1 then as-path-prepend "8075 8075 8075"
set policy-options policy-statement deny_168.142.196.63 term 1 then accept
set policy-options policy-statement deny_168.142.196.63 term 2 then next policy
set policy-options policy-statement export-lo0-in-ldp term 1 from interface lo0.0
set policy-options policy-statement export-lo0-in-ldp term 1 from route-filter 10.20.76.0/22 orlonger
set policy-options policy-statement export-lo0-in-ldp term 1 from route-filter 10.20.84.0/22 orlonger
set policy-options policy-statement export-lo0-in-ldp term 1 then accept
set policy-options policy-statement load-balancing then load-balance per-packet
set policy-options policy-statement permit_connected term 1 then accept
set policy-options community 8075-FREEPRIVATE-COMMUNITY members 8075:34000
set policy-options community 8075-FREEPRIVATE-COMMUNITY members 8075:24000
set policy-options community 8075-FREEPRIVATE-COMMUNITY members 8075:38500
set policy-options community 8075-FREEPRIVATE-COMMUNITY members 8075:41360
set policy-options community 8075-FREEPUBLIC-COMMUNITY members 8075:34000
set policy-options community 8075-FREEPUBLIC-COMMUNITY members 8075:24100
set policy-options community 8075-FREEPUBLIC-COMMUNITY members 8075:38500
set policy-options community 8075-FREEPUBLIC-COMMUNITY members 8075:41360
set policy-options community 8075-PAIDOFFNET-COMMUNITY members 8075:34000
set policy-options community 8075-PAIDOFFNET-COMMUNITY members 8075:22100
set policy-options community 8075-PAIDOFFNET-COMMUNITY members 8075:38500
set policy-options community 8075-PAIDOFFNET-COMMUNITY members 8075:41360
set policy-options community 8075-PAIDONNET-COMMUNITY members 8075:34000
set policy-options community 8075-PAIDONNET-COMMUNITY members 8075:22000
set policy-options community 8075-PAIDONNET-COMMUNITY members 8075:38500
set policy-options community 8075-PAIDONNET-COMMUNITY members 8075:41360
set policy-options community 8075-RBL members 8075:6666
set policy-options community 8075-ROUTESERVER-COMMUNITY members 8075:34000
set policy-options community 8075-ROUTESERVER-COMMUNITY members 8075:24200
set policy-options community 8075-ROUTESERVER-COMMUNITY members 8075:38500
set policy-options community 8075-ROUTESERVER-COMMUNITY members 8075:41360
set policy-options community ANCHOR members 8075:34000
set policy-options community ANCHOR members 8075:30000
set policy-options community ANCHOR members 8075:30500
set policy-options community ANCHOR members 8075:41360
set policy-options community ANYCAST-OUT-COMMUNITIES members 8075:13
set policy-options community BINGEDGE-SUBREGIONAL-CUSTOMER-COMMUNITY members 8075:421
set policy-options community BINGEDGE-SUBREGIONAL-LOCALREGION members 8075:51171
set policy-options community COMM_ALL members "^8075:.*$"
set policy-options community COMM_CUST_ALL members "^8075:...$"
set policy-options community COMM_CUST_DEPREF members 8075:390
set policy-options community COMM_CUST_DONTADV_ALL members 8075:900
set policy-options community COMM_CUST_ITE_UC_EXTERNAL members 8075:630
set policy-options community COMM_CUST_ITE_UC_INTERNAL members 8075:620
set policy-options community COMM_CUST_LEAK_AR members 8075:210
set policy-options community COMM_CUST_LEAK_CIS members 8075:213
set policy-options community COMM_CUST_LEAK_FABRIC members 8075:211
set policy-options community COMM_CUST_LEAK_SRCH members 8075:212
set policy-options community COMM_CUST_LEAK_XCG members 8075:214
set policy-options community COMM_CUST_LEAK_XCGD members 8075:215
set policy-options community COMM_CUST_NOPEERS_ALL members 8075:920
set policy-options community COMM_CUST_NO_ADVERTISE members 8075:950
set policy-options community COMM_CUST_NO_EXPORT members 8075:940
set policy-options community COMM_CUST_PARTNER members 8075:341
set policy-options community COMM_CUST_PRIVATE_ANCHOR members 8075:122
set policy-options community COMM_CUST_PRIVATE_ANYCAST members 8075:123
set policy-options community COMM_CUST_PUBLIC_ANCHOR members 8075:112
set policy-options community COMM_CUST_PUBLIC_ANYCAST members 8075:113
set policy-options community COMM_CUST_SDN_UC_EXTERNAL members 8075:610
set policy-options community COMM_CUST_SDN_UC_INTERNAL members 8075:600
set policy-options community COMM_CUST_SUBREGIONAL_CIS members 8075:420
set policy-options community COMM_CUST_SUBREGIONAL_THEEDGE members 8075:421
set policy-options community COMM_DEFAULT_ROUTE_ANCHOR members 8075:99
set policy-options community COMM_FUNC_ADV_REGION members 8075:30000
set policy-options community COMM_FUNC_ADV_REGION members 8075:30500
set policy-options community COMM_FUNC_DONTADV_AF members 8075:50001
set policy-options community COMM_FUNC_DONTADV_ALL members 8075:50000
set policy-options community COMM_FUNC_DONTADV_AN members 8075:50004
set policy-options community COMM_FUNC_DONTADV_AS members 8075:50003
set policy-options community COMM_FUNC_DONTADV_EU members 8075:50005
set policy-options community COMM_FUNC_DONTADV_IN members 8075:50009
set policy-options community COMM_FUNC_DONTADV_ME members 8075:50008
set policy-options community COMM_FUNC_DONTADV_NA members 8075:50007
set policy-options community COMM_FUNC_DONTADV_OC members 8075:50002
set policy-options community COMM_FUNC_DONTADV_SA members 8075:50006
set policy-options community COMM_FUNC_FABRIC_BYOIP members 8075:701
set policy-options community COMM_FUNC_HIJACK_MITIGATION members 8075:670
set policy-options community COMM_FUNC_ITE_BYOIP members 8075:700
set policy-options community COMM_FUNC_ITE_EGRESS_CONGESTION members 8075:710
set policy-options community COMM_FUNC_ITE_EGRESS_LP125 members 8075:711
set policy-options community COMM_FUNC_ITE_EGRESS_LP125_MATCH members 8075:711
set policy-options community COMM_FUNC_ITE_EGRESS_LP125_MATCH members 8075:710
set policy-options community COMM_FUNC_ITE_EGRESS_LP225 members 8075:712
set policy-options community COMM_FUNC_ITE_EGRESS_LP225_MATCH members 8075:712
set policy-options community COMM_FUNC_ITE_EGRESS_LP225_MATCH members 8075:710
set policy-options community COMM_FUNC_ITE_EGRESS_LP325 members 8075:713
set policy-options community COMM_FUNC_ITE_EGRESS_LP325_MATCH members 8075:713
set policy-options community COMM_FUNC_ITE_EGRESS_LP325_MATCH members 8075:710
set policy-options community COMM_FUNC_ITE_TE_LP300 members 8075:690
set policy-options community COMM_FUNC_LEAK_AR members 8075:10100
set policy-options community COMM_FUNC_LEAK_CIS members 8075:10600
set policy-options community COMM_FUNC_LEAK_DACIS members 8075:10450
set policy-options community COMM_FUNC_LEAK_FABRIC members 8075:10400
set policy-options community COMM_FUNC_LEAK_FABRIC2 members 8075:10401
set policy-options community COMM_FUNC_LEAK_MSIT members 8075:10300
set policy-options community COMM_FUNC_LEAK_PTNR_SKYPE members 8075:11301
set policy-options community COMM_FUNC_LEAK_SRCH members 8075:10500
set policy-options community COMM_FUNC_LEAK_THEEDGE members 8075:10753
set policy-options community COMM_FUNC_LEAK_XCG members 8075:10700
set policy-options community COMM_FUNC_LEAK_XCGD members 8075:10751
set policy-options community COMM_FUNC_LEAK_XCGD-MGMT members 8075:10752
set policy-options community COMM_FUNC_LOCAL_AFD members 8075:9110
set policy-options community COMM_FUNC_LOCAL_AFD members 8075:12
set policy-options community COMM_FUNC_LOCAL_AFD members 8075:4136
set policy-options community COMM_FUNC_MAPS members 8075:680
set policy-options community COMM_FUNC_MSEE_TYCOON members 8075:10451
set policy-options community COMM_FUNC_NOPEERS_AF members 8075:52001
set policy-options community COMM_FUNC_NOPEERS_ALL members 8075:52000
set policy-options community COMM_FUNC_NOPEERS_AN members 8075:52004
set policy-options community COMM_FUNC_NOPEERS_AS members 8075:52003
set policy-options community COMM_FUNC_NOPEERS_EU members 8075:52005
set policy-options community COMM_FUNC_NOPEERS_IN members 8075:52009
set policy-options community COMM_FUNC_NOPEERS_ME members 8075:52008
set policy-options community COMM_FUNC_NOPEERS_NA members 8075:52007
set policy-options community COMM_FUNC_NOPEERS_OC members 8075:52002
set policy-options community COMM_FUNC_NOPEERS_SA members 8075:52006
set policy-options community COMM_FUNC_PREMIUM_CONTINENT members 8075:650
set policy-options community COMM_FUNC_PREMIUM_CONTINENT members 8075:4136
set policy-options community COMM_FUNC_PREMIUM_GLOBAL members 8075:640
set policy-options community COMM_FUNC_PREMIUM_GLOBAL members 8075:4136
set policy-options community COMM_FUNC_PREMIUM_IRR members 8075:660
set policy-options community COMM_FUNC_PREMIUM_IRR members 8075:4136
set policy-options community COMM_NON_CUST members "8075:[1-9]$"
set policy-options community COMM_NON_CUST members "8075:[1-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[1-8][0-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[9][0-2][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[9][4-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[1][0][0-3,5-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[1][0][4][0][2-9]$"
set policy-options community COMM_NON_CUST members "8075:[1][0][4][1-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[1][1-9][0-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[2-5][0-9][0-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[6][0-4][0-9][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[6][5][0-4][0-9][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[6][5][5][0-2][0-9]$"
set policy-options community COMM_NON_CUST members "8075:[6][5][5][3][0-5]$"
set policy-options community COMM_NOPEER members 65535:65284
set policy-options community COMM_NO_ADVERTISE members no-advertise
set policy-options community COMM_NO_EXPORT members no-export
set policy-options community COMM_ORIGIN_CONDUIT_ITE members 8075:9003
set policy-options community COMM_ORIGIN_CONDUIT_UC members 8075:9002
set policy-options community COMM_ORIGIN_LOCATION members 8075:4136
set policy-options community COMM_ORIGIN_LOCATION members 8075:2504
set policy-options community COMM_ORIGIN_LOCATION members 8075:1001
set policy-options community COMM_ORIGIN_PARTNER_GALLACAKE members 8075:8001
set policy-options community COMM_ORIGIN_PARTNER_LINKEDIN members 8075:8006
set policy-options community COMM_ORIGIN_PARTNER_MAPS members 8075:8007
set policy-options community COMM_ORIGIN_PARTNER_SIP members 8075:8003
set policy-options community COMM_ORIGIN_PARTNER_TSYS members 8075:8005
set policy-options community COMM_ORIGIN_PARTNER_WPS members 8075:8004
set policy-options community COMM_ORIGIN_PARTNER_YHOO members 8075:8002
set policy-options community COMM_ORIGIN_PROPERTY_AR members 8075:9200
set policy-options community COMM_ORIGIN_PROPERTY_CIS members 8075:9104
set policy-options community COMM_ORIGIN_PROPERTY_CLOUD_DNS members 8075:9115
set policy-options community COMM_ORIGIN_PROPERTY_DCFX members 8075:9109
set policy-options community COMM_ORIGIN_PROPERTY_EPMS members 8075:9119
set policy-options community COMM_ORIGIN_PROPERTY_ER members 8075:9113
set policy-options community COMM_ORIGIN_PROPERTY_FABRIC members 8075:9111
set policy-options community COMM_ORIGIN_PROPERTY_GNSCORE members 8075:9000
set policy-options community COMM_ORIGIN_PROPERTY_IDFX members 8075:9001
set policy-options community COMM_ORIGIN_PROPERTY_IPSLA members 8075:9116
set policy-options community COMM_ORIGIN_PROPERTY_MGFX members 8075:9120
set policy-options community COMM_ORIGIN_PROPERTY_MSIT_CORP members 8075:9114
set policy-options community COMM_ORIGIN_PROPERTY_MSIT_EBL members 8075:9101
set policy-options community COMM_ORIGIN_PROPERTY_MSIT_INTERNET members 8075:9100
set policy-options community COMM_ORIGIN_PROPERTY_MSIT_LAB members 8075:9102
set policy-options community COMM_ORIGIN_PROPERTY_OOB members 8075:9117
set policy-options community COMM_ORIGIN_PROPERTY_ORB members 8075:9121
set policy-options community COMM_ORIGIN_PROPERTY_SKYPE members 8075:9108
set policy-options community COMM_ORIGIN_PROPERTY_SRCH members 8075:9103
set policy-options community COMM_ORIGIN_PROPERTY_THEEDGE members 8075:9110
set policy-options community COMM_ORIGIN_PROPERTY_WDG members 8075:9112
set policy-options community COMM_ORIGIN_PROPERTY_WDGIS members 8075:9118
set policy-options community COMM_ORIGIN_PROPERTY_XBOX_LSG members 8075:9107
set policy-options community COMM_ORIGIN_PROPERTY_XCG members 8075:9105
set policy-options community COMM_ORIGIN_PROPERTY_XCGD members 8075:9106
set policy-options community COMM_OVERLOAD members 65535:0
set policy-options community COMM_PTNR_ER members 12076:12076
set policy-options community COMM_PTNR_LEAK_SKYPE members 8075:301
set policy-options community COMM_ROUTE_DDOS_IRR members 8075:668
set policy-options community COMM_ROUTE_FREEPEER members "^8075:3[3-5]$"
set policy-options community COMM_ROUTE_FREEPEER_PRIVATE members 8075:33
set policy-options community COMM_ROUTE_FREEPEER_PUBLIC members 8075:34
set policy-options community COMM_ROUTE_FREEPEER_ROUTESERVER members 8075:35
set policy-options community COMM_ROUTE_PAIDPEER members "^8075:3[1-2]$"
set policy-options community COMM_ROUTE_PAIDPEER_OFFNET members 8075:32
set policy-options community COMM_ROUTE_PAIDPEER_ONNET members 8075:31
set policy-options community COMM_ROUTE_PARTNER members 8075:41
set policy-options community COMM_ROUTE_PARTNER_ALL members "^8075:4[0-9]$"
set policy-options community COMM_ROUTE_PARTNER_SPECIFIC members 8075:42
set policy-options community COMM_ROUTE_PEER_ALL members "^8075:3[0-9]$"
set policy-options community COMM_ROUTE_PRIVATE members "8075:2[1-3]$"
set policy-options community COMM_ROUTE_PRIVATE_ALL members "^8075:2[0-9]$"
set policy-options community COMM_ROUTE_PRIVATE_ANCHOR members "8075:2[1-2]$"
set policy-options community COMM_ROUTE_PRIVATE_ANCHOR_CORE members 8075:21
set policy-options community COMM_ROUTE_PRIVATE_ANCHOR_CUST members 8075:22
set policy-options community COMM_ROUTE_PRIVATE_ANYCAST members 8075:23
set policy-options community COMM_ROUTE_PRIVATE_SPECIFIC_ANYCAST members 8075:27
set policy-options community COMM_ROUTE_PRIVATE_SPECIFIC_CORE members 8075:25
set policy-options community COMM_ROUTE_PRIVATE_SPECIFIC_CUST members 8075:26
set policy-options community COMM_ROUTE_PUBLIC members "^8075:1[1-3]$"
set policy-options community COMM_ROUTE_PUBLIC_ALL members "^8075:1[0-9]$"
set policy-options community COMM_ROUTE_PUBLIC_ANCHOR members "^8075:1[1-2]$"
set policy-options community COMM_ROUTE_PUBLIC_ANCHOR_CORE members 8075:11
set policy-options community COMM_ROUTE_PUBLIC_ANCHOR_CUST members 8075:12
set policy-options community COMM_ROUTE_PUBLIC_ANYCAST members 8075:13
set policy-options community COMM_ROUTE_PUBLIC_SPECIFIC_ANYCAST members 8075:17
set policy-options community COMM_ROUTE_PUBLIC_SPECIFIC_CORE members 8075:15
set policy-options community COMM_ROUTE_PUBLIC_SPECIFIC_CUST members 8075:16
set policy-options community COMM_ROUTE_RPKI-INVALID members 0x4300:0.0.0.0:2
set policy-options community COMM_ROUTE_RPKI-INVALID members 8075:52
set policy-options community COMM_ROUTE_RPKI-UNKNOWN members 0x4300:0.0.0.0:1
set policy-options community COMM_ROUTE_RPKI-UNKNOWN members 8075:51
set policy-options community COMM_ROUTE_RPKI-VALID members 0x4300:0.0.0.0:0
set policy-options community COMM_ROUTE_RPKI-VALID members 8075:50
set policy-options community COMM_ROUTE_RTBH members 8075:666
set policy-options community COMM_RT_ITE_PREMIUM_CONTINENT members target:8075:3031001
set policy-options community COMM_RT_ITE_PREMIUM_GLOBAL members target:8075:3000300
set policy-options community COMM_RT_ITE_PREMIUM_IRR members target:8075:3032018
set policy-options community COMM_RT_ITE_REGION members target:8075:51171
set policy-options community COMM_RT_ITE_SITE members target:8075:3004136
set policy-options community COMM_RT_TMS_GEO members target:8075:3000201
set policy-options community COMM_RT_TMS_GLOBAL members target:8075:3000101
set policy-options community COMM_RT_TMS_IRR members target:8075:3000302
set policy-options community CUSTOMER-TRANSIT members 8075:65000
set policy-options community DENY-MSN-COMMUNITIES-IN members "806[8-9]:*"
set policy-options community DENY-MSN-COMMUNITIES-IN members "807[0-5]:*"
set policy-options community GLOBAL-EXT-CUSTOMER-COMMUNITY members 8075:34000
set policy-options community GLOBAL-EXT-CUSTOMER-COMMUNITY members 8075:60000
set policy-options community GLOBAL-EXT-CUSTOMER-COMMUNITY members 8075:38500
set policy-options community GLOBAL-EXT-CUSTOMER-COMMUNITY members 8075:41360
set policy-options community GLOBAL-NO-ADV-TO-PEERS members 8075:10000
set policy-options community GLOBAL-SEND-CUST-TO-PEERS members 8075:60100
set policy-options community GLOBAL-SEND-TO-CUSTOMERS members 8075:34000
set policy-options community GLOBAL-SEND-TO-PEERS members 8075:30000
set policy-options community LEAK_SPECIFICS members 8075:10000
set policy-options community LEAK_SPECIFICS members 8075:34000
set policy-options community LEAK_SPECIFICS members 8075:41360
set policy-options community REGIONAL-NO-ADV-TO-PEERS members 8075:36500
set policy-options community SUBREGIONAL-MYSUBREGIONS members "(8075:51000)|(8075:51171)"
set policy-options community SUBREGIONAL-ROUTING members "8075:51[0-9][0-9][0-9]"
set policy-options community all members *:*
set policy-options community srte members color:0:0
set policy-options as-path as-path-12076 "^12076$|^12076 65515$"
set policy-options as-path as-path-75 "^.{75,}$"
set policy-options as-path ASPATH-DOCUMENTATION "^.*(64496-64511|65536-65551).*$"
set policy-options as-path ASPATH-PRIVATE "^.*(64512-65534|4200000000-4294967294).*$"
set policy-options as-path ASPATH-RESERVED "^.*(0|65535|65552-131071|4294967295).*$"
set policy-options as-path LOCAL "^$"
set policy-options as-path as-path-msft "(^$|^3598.*|^5761+|^6469+|^6584 .*|^[8068-8074].*|.* 12076 .*|^20046+|^23468+|^40066+|^198097+|^198015+|.* 64512-65534 .*|^200517+)"
set policy-options as-path as-path-16 "^.{6,}$"
set policy-options as-path as-path-14 "^.{4,}$"
set policy-options as-path AS8068 "^8068$"
set policy-options as-path AS59662 ".*(59662).*"
set policy-options as-path AS14413 "^(14413).*"
set policy-options as-path AS12076 ".*(12076).*"
set policy-options as-path as-path-66 "^$|^8068+|8069+|8075+|3598+|8070+|8071+|8073+|6584+|30121+|30142+|^8075 30121|^8075 30142"
set policy-options as-path as-path-68 "3598+|30121+|30142+|^8075 30121|^8075 30142"
set policy-options as-path AS-BYOIP "^()"
set policy-options as-path ASPATH-TRANSIT "^.*(174|209|701|1299|2914|3257|3320|3356|3491|4134|4713|4766|4826|4837|5483|5511|5617|6453|6762|7015|7018|7922|8966|12956|13367|15169|33490|33662|33668).*$"
set policy-options as-path as-path-deny-from-routeserver "714 .*|1248 .*|4648 .*|5511 .*|.* 6453 .*|6830 .*|6939 .*|7713 .*|8657 .*|9498 .*|9650 .*|10026 .*|10310 .*|13285 .*|15169 .*|16509 .*|20940 .*|24324 .*|38082 .*|60937 .*|62052 .*|133612 .*|395358 .*"
set policy-options as-path as-path-160 "(^$|^3598|^5761|^6469|^8068$|^8068 20046.*|^6584 .*|^8070|^8071$|^59067$|^8073 .*|^8074|^12076 .*|^8068 12076 .*|^20046|^23468|^40066|^198097$|^198015$|.* 64512-65535 .*)"
set policy-options as-path AS14413-ANY ".*(14413).*"
set policy-options as-path as-path-100 "^$|.*8069.*|.*8075.*|.*(0|701|7018|3356|209).*|.*64512-65535.*"
set policy-options as-path as-path-110 "^$|.*8069.*|.*8075.*|.*(0).*|.*64512-65535.*"
set policy-options as-path ASPATH-MICROSOFT "^()|^3598.*|^6584+|^8068+|^8069+|^8070+|^8073+|^8075+|^8812+|^23468+|^62540+"
set policy-options as-path as-path-50 "^()|^3598.*|^6584+|^8068+|^8069+|^8070+|^8073+|^8075+|^8812+|^23468+|^62540+"
set policy-options as-path ASPATH-BYOASN "(8811|8812).*"
set policy-options as-path AS704 ".*704$"
set policy-options as-path AS407 ".*407$"
set policy-options as-path AS174 ".*174$"
set class-of-service classifiers dscp dscp_classifier forwarding-class best-effort loss-priority high code-points be
set class-of-service classifiers dscp dscp_classifier forwarding-class control loss-priority low code-points cs6
set class-of-service classifiers dscp dscp_classifier forwarding-class control loss-priority low code-points cs7
set class-of-service classifiers dscp dscp_classifier forwarding-class interactive loss-priority low code-points af41
set class-of-service classifiers dscp dscp_classifier forwarding-class interactive loss-priority low code-points af21
set class-of-service classifiers dscp dscp_classifier forwarding-class scavenger loss-priority high code-points af11
set class-of-service classifiers dscp dscp_classifier forwarding-class scavenger loss-priority high code-points cs1
set class-of-service classifiers dscp dscp_classifier forwarding-class voice loss-priority low code-points ef
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class best-effort loss-priority high code-points be
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class control loss-priority low code-points cs6
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class control loss-priority low code-points cs7
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class interactive loss-priority low code-points af41
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class interactive loss-priority low code-points af21
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class scavenger loss-priority high code-points af11
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class scavenger loss-priority high code-points cs1
set class-of-service classifiers dscp-ipv6 ipv6_dscp_classifier forwarding-class voice loss-priority low code-points ef
set class-of-service classifiers exp mpls_exp_classifier forwarding-class best-effort loss-priority high code-points 000
set class-of-service classifiers exp mpls_exp_classifier forwarding-class control loss-priority low code-points 110
set class-of-service classifiers exp mpls_exp_classifier forwarding-class interactive loss-priority low code-points 100
set class-of-service classifiers exp mpls_exp_classifier forwarding-class scavenger loss-priority high code-points 001
set class-of-service classifiers exp mpls_exp_classifier forwarding-class voice loss-priority low code-points 101
set class-of-service host-outbound-traffic forwarding-class control
set class-of-service host-outbound-traffic dscp-code-point cs6
set class-of-service drop-profiles discard-eligible interpolate fill-level 50
set class-of-service drop-profiles discard-eligible interpolate fill-level 65
set class-of-service drop-profiles discard-eligible interpolate fill-level 80
set class-of-service drop-profiles discard-eligible interpolate drop-probability 0
set class-of-service drop-profiles discard-eligible interpolate drop-probability 50
set class-of-service drop-profiles discard-eligible interpolate drop-probability 100
set class-of-service drop-profiles in-contract fill-level 100 drop-probability 100
set class-of-service drop-profiles in-contract-tcp interpolate fill-level 90
set class-of-service drop-profiles in-contract-tcp interpolate fill-level 95
set class-of-service drop-profiles in-contract-tcp interpolate fill-level 100
set class-of-service drop-profiles in-contract-tcp interpolate drop-probability 0
set class-of-service drop-profiles in-contract-tcp interpolate drop-probability 50
set class-of-service drop-profiles in-contract-tcp interpolate drop-probability 100
set class-of-service forwarding-classes queue 0 best-effort
set class-of-service forwarding-classes queue 1 scavenger
set class-of-service forwarding-classes queue 4 interactive
set class-of-service forwarding-classes queue 5 voice
set class-of-service forwarding-classes queue 6 control
set class-of-service interfaces et-* scheduler-map sched-map0
set class-of-service interfaces et-* unit * classifiers dscp dscp_classifier
set class-of-service interfaces et-* unit * classifiers dscp-ipv6 ipv6_dscp_classifier
set class-of-service interfaces et-* unit * classifiers exp mpls_exp_classifier
set class-of-service interfaces et-* unit * rewrite-rules exp mpls_exp_rewrite
set class-of-service interfaces ge-* scheduler-map sched-map0
set class-of-service interfaces ge-* unit * classifiers dscp dscp_classifier
set class-of-service interfaces ge-* unit * classifiers dscp-ipv6 ipv6_dscp_classifier
set class-of-service interfaces ge-* unit * classifiers exp mpls_exp_classifier
set class-of-service interfaces ge-* unit * rewrite-rules exp mpls_exp_rewrite
set class-of-service interfaces so-* scheduler-map sched-map0
set class-of-service interfaces so-* unit * classifiers dscp dscp_classifier
set class-of-service interfaces so-* unit * classifiers dscp-ipv6 ipv6_dscp_classifier
set class-of-service interfaces so-* unit * classifiers exp mpls_exp_classifier
set class-of-service interfaces so-* unit * rewrite-rules exp mpls_exp_rewrite
set class-of-service interfaces xe-* scheduler-map sched-map0
set class-of-service interfaces xe-* unit * classifiers dscp dscp_classifier
set class-of-service interfaces xe-* unit * classifiers dscp-ipv6 ipv6_dscp_classifier
set class-of-service interfaces xe-* unit * classifiers exp mpls_exp_classifier
set class-of-service interfaces xe-* unit * rewrite-rules exp mpls_exp_rewrite
set class-of-service interfaces ae* scheduler-map sched-map0
set class-of-service interfaces ae* unit * classifiers dscp dscp_classifier
set class-of-service interfaces ae* unit * classifiers dscp-ipv6 ipv6_dscp_classifier
set class-of-service interfaces ae* unit * classifiers exp mpls_exp_classifier
set class-of-service interfaces ae* unit * rewrite-rules exp mpls_exp_rewrite
set class-of-service interfaces ae60 scheduler-map sched-edge
set class-of-service interfaces ae60 unit * rewrite-rules dscp clear_dscp_internet_edge
set class-of-service rewrite-rules dscp DSCP_REWRITE forwarding-class best-effort loss-priority medium-high code-point be
set class-of-service rewrite-rules dscp DSCP_REWRITE forwarding-class control loss-priority medium-high code-point cs6
set class-of-service rewrite-rules dscp DSCP_REWRITE forwarding-class interactive loss-priority medium-high code-point af41
set class-of-service rewrite-rules dscp DSCP_REWRITE forwarding-class scavenger loss-priority medium-high code-point cs1
set class-of-service rewrite-rules dscp DSCP_REWRITE forwarding-class voice loss-priority medium-high code-point ef
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class best-effort loss-priority high code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class best-effort loss-priority low code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class interactive loss-priority high code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class interactive loss-priority low code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class scavenger loss-priority high code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class scavenger loss-priority low code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class voice loss-priority high code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internet_edge forwarding-class voice loss-priority low code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internal_edge forwarding-class best-effort loss-priority high code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internal_edge forwarding-class best-effort loss-priority low code-point 000000
set class-of-service rewrite-rules dscp clear_dscp_internal_edge forwarding-class scavenger loss-priority high code-point af23
set class-of-service rewrite-rules dscp clear_dscp_internal_edge forwarding-class scavenger loss-priority low code-point af23
set class-of-service rewrite-rules dscp dscp_rewrite forwarding-class best-effort loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp dscp_rewrite forwarding-class control loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp dscp_rewrite forwarding-class interactive loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp dscp_rewrite forwarding-class scavenger loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp dscp_rewrite forwarding-class voice loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 DSCP_IPV6_REWRITE forwarding-class best-effort loss-priority medium-high code-point be
set class-of-service rewrite-rules dscp-ipv6 DSCP_IPV6_REWRITE forwarding-class control loss-priority medium-high code-point cs6
set class-of-service rewrite-rules dscp-ipv6 DSCP_IPV6_REWRITE forwarding-class interactive loss-priority medium-high code-point af41
set class-of-service rewrite-rules dscp-ipv6 DSCP_IPV6_REWRITE forwarding-class scavenger loss-priority medium-high code-point cs1
set class-of-service rewrite-rules dscp-ipv6 DSCP_IPV6_REWRITE forwarding-class voice loss-priority medium-high code-point ef
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class best-effort loss-priority high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class best-effort loss-priority low code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class interactive loss-priority high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class interactive loss-priority low code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class scavenger loss-priority high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class scavenger loss-priority low code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class voice loss-priority high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 ipv6_clear_dscp_internet_edge forwarding-class voice loss-priority low code-point 000000
set class-of-service rewrite-rules dscp-ipv6 dscp_ipv6_rewrite forwarding-class best-effort loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 dscp_ipv6_rewrite forwarding-class control loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 dscp_ipv6_rewrite forwarding-class interactive loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 dscp_ipv6_rewrite forwarding-class scavenger loss-priority medium-high code-point 000000
set class-of-service rewrite-rules dscp-ipv6 dscp_ipv6_rewrite forwarding-class voice loss-priority medium-high code-point 000000
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class best-effort loss-priority high code-point 000
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class best-effort loss-priority low code-point 000
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class best-effort loss-priority medium-high code-point 000
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class control loss-priority high code-point 110
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class control loss-priority low code-point 110
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class control loss-priority medium-high code-point 110
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class interactive loss-priority high code-point 100
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class interactive loss-priority low code-point 100
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class interactive loss-priority medium-high code-point 100
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class scavenger loss-priority high code-point 001
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class scavenger loss-priority low code-point 001
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class scavenger loss-priority medium-high code-point 001
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class voice loss-priority high code-point 101
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class voice loss-priority low code-point 101
set class-of-service rewrite-rules exp mpls_exp_rewrite forwarding-class voice loss-priority medium-high code-point 101
set class-of-service scheduler-maps sched-edge forwarding-class best-effort scheduler best-effort-scheduler
set class-of-service scheduler-maps sched-edge forwarding-class control scheduler control-scheduler
set class-of-service scheduler-maps sched-edge forwarding-class interactive scheduler interactive-scheduler
set class-of-service scheduler-maps sched-edge forwarding-class scavenger scheduler scavenger-scheduler
set class-of-service scheduler-maps sched-edge forwarding-class voice scheduler voice-scheduler
set class-of-service scheduler-maps sched-map0 forwarding-class best-effort scheduler best-effort-scheduler
set class-of-service scheduler-maps sched-map0 forwarding-class control scheduler control-scheduler
set class-of-service scheduler-maps sched-map0 forwarding-class interactive scheduler interactive-scheduler
set class-of-service scheduler-maps sched-map0 forwarding-class scavenger scheduler scavenger-scheduler
set class-of-service scheduler-maps sched-map0 forwarding-class voice scheduler voice-scheduler
set class-of-service schedulers best-effort-scheduler transmit-rate percent 60
set class-of-service schedulers best-effort-scheduler excess-rate percent 90
set class-of-service schedulers best-effort-scheduler buffer-size remainder
set class-of-service schedulers best-effort-scheduler priority low
set class-of-service schedulers best-effort-scheduler excess-priority low
set class-of-service schedulers best-effort-scheduler-edge transmit-rate percent 65
set class-of-service schedulers best-effort-scheduler-edge excess-rate percent 99
set class-of-service schedulers best-effort-scheduler-edge buffer-size remainder
set class-of-service schedulers best-effort-scheduler-edge priority low
set class-of-service schedulers best-effort-scheduler-edge excess-priority low
set class-of-service schedulers control-scheduler transmit-rate percent 5
set class-of-service schedulers control-scheduler transmit-rate exact
set class-of-service schedulers control-scheduler buffer-size percent 5
set class-of-service schedulers control-scheduler priority medium-high
set class-of-service schedulers control-scheduler-edge transmit-rate percent 5
set class-of-service schedulers control-scheduler-edge transmit-rate exact
set class-of-service schedulers control-scheduler-edge buffer-size percent 5
set class-of-service schedulers control-scheduler-edge priority medium-high
set class-of-service schedulers interactive-scheduler transmit-rate percent 20
set class-of-service schedulers interactive-scheduler excess-rate percent 50
set class-of-service schedulers interactive-scheduler buffer-size percent 5
set class-of-service schedulers interactive-scheduler priority medium-high
set class-of-service schedulers interactive-scheduler excess-priority low
set class-of-service schedulers interactive-scheduler-edge transmit-rate percent 20
set class-of-service schedulers interactive-scheduler-edge excess-rate percent 50
set class-of-service schedulers interactive-scheduler-edge buffer-size percent 5
set class-of-service schedulers interactive-scheduler-edge priority medium-high
set class-of-service schedulers interactive-scheduler-edge excess-priority low
set class-of-service schedulers scavenger-scheduler excess-rate percent 10
set class-of-service schedulers scavenger-scheduler buffer-size percent 20
set class-of-service schedulers scavenger-scheduler priority low
set class-of-service schedulers scavenger-scheduler excess-priority low
set class-of-service schedulers scavenger-scheduler-edge transmit-rate percent 20
set class-of-service schedulers scavenger-scheduler-edge excess-rate percent 1
set class-of-service schedulers scavenger-scheduler-edge buffer-size percent 20
set class-of-service schedulers scavenger-scheduler-edge priority low
set class-of-service schedulers scavenger-scheduler-edge excess-priority low
set class-of-service schedulers scavenger-scheduler-edge drop-profile-map loss-priority low protocol any drop-profile discard-eligible
set class-of-service schedulers scavenger-scheduler-edge drop-profile-map loss-priority high protocol any drop-profile discard-eligible
set class-of-service schedulers voice-scheduler transmit-rate percent 10
set class-of-service schedulers voice-scheduler excess-rate percent 50
set class-of-service schedulers voice-scheduler buffer-size percent 5
set class-of-service schedulers voice-scheduler priority high
set class-of-service schedulers voice-scheduler excess-priority low
set class-of-service schedulers voice-scheduler-edge transmit-rate percent 10
set class-of-service schedulers voice-scheduler-edge excess-rate percent 50
set class-of-service schedulers voice-scheduler-edge buffer-size percent 5
set class-of-service schedulers voice-scheduler-edge priority high
set class-of-service schedulers voice-scheduler-edge excess-priority low
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP from destination-prefix-list MAPS-VOICE-PSTN-PREFIX
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP from destination-port 5060-5061
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP then count HONOR-INBOUND-QOS-SIP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP then forwarding-class interactive
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-SIP then dscp af41
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA from destination-prefix-list MAPS-VOICE-PSTN-PREFIX
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA from destination-port 32768-36864
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA from destination-port 49152-53247
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA then count HONOR-INBOUND-QOS-MEDIA
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA then forwarding-class voice
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term HONOR-INBOUND-QOS-MEDIA then dscp ef
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term CLEAR_DSCP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term CLEAR_DSCP then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term CLEAR_DSCP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-BOGON from source-prefix-list BOGON-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-BOGON then count DENY-SRC-BOGON
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-BOGON then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-BOGON from destination-prefix-list BOGON-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-BOGON then count DENY-DST-BOGON
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-BOGON then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-PRIVATE from source-prefix-list PRIVATE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-PRIVATE then count DENY-SRC-PRIVATE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-PRIVATE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PRIVATE from destination-prefix-list PRIVATE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PRIVATE then count DENY-DST-PRIVATE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PRIVATE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-LOOPBACK from destination-prefix-list EDGE-LOOPBACK-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-LOOPBACK then count DENY-DST-LOOPBACK
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-LOOPBACK then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-GRE-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-GRE-AZURE from protocol gre
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-GRE-AZURE then count DENY-GRE-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-GRE-AZURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE from source-port 64000-64255
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE from destination-port 65330
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE then count DENY-VXLAN-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-VXLAN-AZURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 from source-prefix-list ITE-INPUT-SRC-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then count ITE-INPUT-SRC-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 from destination-prefix-list ITE-INPUT-DST-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 then count ITE-INPUT-DST-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term ITE-INPUT-DST-DDOS-V4 then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE then count PERMIT-DST-INFRASTRUCTURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-INFRASTRUCTURE then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-INFRASTRUCTURE then count DENY-DST-INFRASTRUCTURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-INFRASTRUCTURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD from source-prefix-list local-ips
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD from destination-prefix-list local-ips
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD from port 3784
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD from port 4784
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD then count PERMIT-BFD
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BFD then accept
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-DDOS from source-prefix-list DENY-SRC-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-DDOS then count DENY-SRC-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-DDOS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DEST-DDOS from destination-prefix-list DENY-DEST-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DEST-DDOS then count DENY-DEST-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DEST-DDOS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP from destination-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP from port 179
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP then count PERMIT-DST-BGP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BGP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-PEER-ICMP from source-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-PEER-ICMP from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-PEER-ICMP then count PERMIT-PEERING-ICMP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-PEER-ICMP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-PEER-ICMP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PEER-IP from destination-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PEER-IP then count DENY-DST-PEER-IP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-PEER-IP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION from source-prefix-list SPOOF-EXCEPTION-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then count PERMIT-SRC-SPOOF-EXCEPTION
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-SPOOF from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-SPOOF then count DENY-SRC-SPOOF
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-SPOOF then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP from destination-address 65.55.56.206/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP from destination-address 64.4.10.33/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP from destination-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP then count PERMIT-DST-NTP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-NTP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP from source-address 64.147.116.229/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP from source-address 129.6.15.30/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP from source-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP then count PERMIT-SRC-NTP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-NTP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP from destination-port 3478
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP from destination-port 3479
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP from destination-port 3480
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP from destination-port 3481
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP then count PERMIT-DST-SKYPE-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SKYPE-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP from destination-prefix-list XBOX-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP from destination-port 1024-1193
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP then count PERMIT-DST-XBOX-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-XBOX-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP from destination-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP then count PERMIT-DST-OTHER-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP from source-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP then count PERMIT-SRC-OTHER-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-OTHER-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 from source-prefix-list BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 then count BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-SRC-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 from destination-prefix-list BEST-EFFORT-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 then count BEST-EFFORT-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-DST-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV then count PERMIT-UDP-SCAV
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-UDP-SCAV then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MSIT from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MSIT then count PERMIT-DST-MSIT
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MSIT then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MSIT then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-AZURE then count PERMIT-DST-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-AZURE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-AZURE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MOONCAKE from destination-prefix-list MOONCAKE-PUBLIC-IP-SPACE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MOONCAKE then count PERMIT-DST-MOONCAKE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MOONCAKE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-MOONCAKE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER from destination-prefix-list EDGE-OTHER-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER then count PERMIT-DST-OTHER
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-OTHER then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BYOIP from destination-prefix-list BYOIP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BYOIP then count PERMIT-DST-BYOIP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BYOIP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-BYOIP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-LINKEDIN from destination-prefix-list LinkedIn-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-LINKEDIN then count PERMIT-DST-LINKEDIN
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-LINKEDIN then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-LINKEDIN then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH from destination-prefix-list EDGE-PERMIT-SSH-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH from destination-port 22
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH then count PERMIT-DST-SSH
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-SSH then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 55
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 77
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol pim
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS then count DENY-NA-IP_PROTOCOLS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-NA-IP_PROTOCOLS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 13
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 22
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 23
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 42
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 111
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 113
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 119
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 135
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 136
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 137
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 138
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 139
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 161
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 162
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 389
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 445
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 465
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 512
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 514
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 593
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 636
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 873
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 901
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 1083
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 2049
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 2301
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 2381
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 3268
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 3306
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 3389
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 5432
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 5631
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 5800
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 5900
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP from destination-port 6698
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP then count DENY-DST-TCP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-TCP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 13
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 19
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 69
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 111
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 135
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 136
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 137
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 138
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 139
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 161
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 162
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 445
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 593
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 1434
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 2049
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP from destination-port 5632
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP then count DENY-DST-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-DST-UDP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-UDP from source-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-UDP then count DENY-SRC-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-SRC-UDP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP from destination-prefix-list TEAMS-PREFIX-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP then count PERMIT-DST-TEAMS-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-TEAMS-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP from destination-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP then count PERMIT-DST-GLOBAL-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP from source-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP then count PERMIT-SRC-GLOBAL-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-SRC-GLOBAL-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-type unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code network-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code host-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code port-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code fragmentation-needed
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-network-unknown
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-host-unknown
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then count PERMIT-DST-ICMP-UNREACHABLE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type echo-reply
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type source-quench
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type time-exceeded
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type parameter-problem
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE then count PERMIT-DST-ICMP-TYPE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-TYPE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-ALL from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-ALL then count PERMIT-DST-ICMP-ALL
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-ALL then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-ICMP-ALL then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BGP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BGP from port 179
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BGP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-BGP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from source-prefix-list BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then count BEST-EFFORT-GLOBAL-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 from destination-prefix-list BEST-EFFORT-GLOBAL-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 then count BEST-EFFORT-GLOBAL-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term BEST-EFFORT-GLOBAL-DST-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER then count PERMIT-DST-GLOBAL-UDP-SCAVENGER
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-GLOBAL-UDP-SCAVENGER then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-IP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-IP then count PERMIT-DST-IP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-IP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term PERMIT-DST-IP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-ALL then count DENY-ALL
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4 term DENY-ALL then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT fast-lookup-filter
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP from destination-prefix-list MAPS-VOICE-PSTN-PREFIX
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP from destination-port 5060-5061
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP then count HONOR-INBOUND-QOS-SIP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP then forwarding-class interactive
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-SIP then dscp af41
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA from destination-prefix-list MAPS-VOICE-PSTN-PREFIX
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA from destination-port 32768-36864
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA from destination-port 49152-53247
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA then count HONOR-INBOUND-QOS-MEDIA
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA then forwarding-class voice
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term HONOR-INBOUND-QOS-MEDIA then dscp ef
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term CLEAR_DSCP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term CLEAR_DSCP then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term CLEAR_DSCP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-BOGON from source-prefix-list BOGON-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-BOGON then count DENY-SRC-BOGON
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-BOGON then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-BOGON from destination-prefix-list BOGON-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-BOGON then count DENY-DST-BOGON
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-BOGON then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-PRIVATE from source-prefix-list PRIVATE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-PRIVATE then count DENY-SRC-PRIVATE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-PRIVATE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PRIVATE from destination-prefix-list PRIVATE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PRIVATE then count DENY-DST-PRIVATE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PRIVATE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-LOOPBACK from destination-prefix-list EDGE-LOOPBACK-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-LOOPBACK then count DENY-DST-LOOPBACK
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-LOOPBACK then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-GRE-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-GRE-AZURE from protocol gre
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-GRE-AZURE then count DENY-GRE-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-GRE-AZURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE from source-port 64000-64255
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE from destination-port 65330
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE then count DENY-VXLAN-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-VXLAN-AZURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 from source-prefix-list ITE-INPUT-SRC-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 then count ITE-INPUT-SRC-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-SRC-DDOS-V4 then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 from destination-prefix-list ITE-INPUT-DST-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 then count ITE-INPUT-DST-DDOS-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 then next term
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term ITE-INPUT-DST-DDOS-V4 then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE then count PERMIT-DST-INFRASTRUCTURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-INFRASTRUCTURE then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-INFRASTRUCTURE then count DENY-DST-INFRASTRUCTURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-INFRASTRUCTURE then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD from source-prefix-list local-ips
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD from destination-prefix-list local-ips
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD from port 3784
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD from port 4784
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD then count PERMIT-BFD
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BFD then accept
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-DDOS from source-prefix-list DENY-SRC-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-DDOS then count DENY-SRC-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-DDOS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DEST-DDOS from destination-prefix-list DENY-DEST-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DEST-DDOS then count DENY-DEST-DDOS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DEST-DDOS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP from destination-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP from port 179
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP then count PERMIT-DST-BGP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BGP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-PEER-ICMP from source-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-PEER-ICMP from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-PEER-ICMP then count PERMIT-PEERING-ICMP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-PEER-ICMP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-PEER-ICMP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PEER-IP from destination-prefix-list EDGE-BGP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PEER-IP then count DENY-DST-PEER-IP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-PEER-IP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-SPOOF-EXCEPTION from source-prefix-list SPOOF-EXCEPTION-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-SPOOF-EXCEPTION then count PERMIT-SRC-SPOOF-EXCEPTION
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-SPOOF-EXCEPTION then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-SPOOF-EXCEPTION then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-SPOOF from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-SPOOF then count DENY-SRC-SPOOF
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-SPOOF then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP from destination-address 65.55.56.206/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP from destination-address 64.4.10.33/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP from destination-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP then count PERMIT-DST-NTP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-NTP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP from source-address 64.147.116.229/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP from source-address 129.6.15.30/32
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP from source-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP then count PERMIT-SRC-NTP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-NTP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP from destination-port 3478
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP from destination-port 3479
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP from destination-port 3480
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP from destination-port 3481
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP then count PERMIT-DST-SKYPE-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SKYPE-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP from destination-prefix-list XBOX-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP from destination-port 1024-1193
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP then count PERMIT-DST-XBOX-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-XBOX-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP from destination-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP then count PERMIT-DST-OTHER-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP from source-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP then count PERMIT-SRC-OTHER-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-OTHER-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 from source-prefix-list BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 then count BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-SRC-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 from destination-prefix-list BEST-EFFORT-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 then count BEST-EFFORT-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-DST-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV then count PERMIT-UDP-SCAV
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-UDP-SCAV then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MSIT from destination-prefix-list EDGE-MSIT-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MSIT then count PERMIT-DST-MSIT
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MSIT then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MSIT then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-AZURE then count PERMIT-DST-AZURE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-AZURE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-AZURE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MOONCAKE from destination-prefix-list MOONCAKE-PUBLIC-IP-SPACE-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MOONCAKE then count PERMIT-DST-MOONCAKE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MOONCAKE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-MOONCAKE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER from destination-prefix-list EDGE-OTHER-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER then count PERMIT-DST-OTHER
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-OTHER then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BYOIP from destination-prefix-list BYOIP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BYOIP then count PERMIT-DST-BYOIP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BYOIP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-BYOIP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-LINKEDIN from destination-prefix-list LinkedIn-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-LINKEDIN then count PERMIT-DST-LINKEDIN
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-LINKEDIN then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-LINKEDIN then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH from destination-prefix-list EDGE-PERMIT-SSH-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH from destination-port 22
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH then count PERMIT-DST-SSH
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-SSH then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS from protocol 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS from protocol 55
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS from protocol 77
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS from protocol pim
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS then count DENY-NA-IP_PROTOCOLS
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-NA-IP_PROTOCOLS then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 13
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 22
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 23
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 42
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 111
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 113
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 119
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 135
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 136
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 137
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 138
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 139
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 161
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 162
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 389
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 445
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 465
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 512
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 514
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 593
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 636
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 873
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 901
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 1083
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 2049
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 2301
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 2381
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 3268
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 3306
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 3389
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 5432
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 5631
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 5800
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 5900
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP from destination-port 6698
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP then count DENY-DST-TCP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-TCP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 13
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 19
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 69
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 111
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 135
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 136
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 137
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 138
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 139
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 161
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 162
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 445
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 593
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 1434
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 2049
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP from destination-port 5632
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP then count DENY-DST-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-DST-UDP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-UDP from source-port 123
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-UDP then count DENY-SRC-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-SRC-UDP then discard
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP from destination-prefix-list TEAMS-PREFIX-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP then count PERMIT-DST-TEAMS-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-TEAMS-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP from destination-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP then count PERMIT-DST-GLOBAL-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 53
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 3544
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 4500
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 20000
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 20001
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP from source-port 20002
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP then count PERMIT-SRC-GLOBAL-UDP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-SRC-GLOBAL-UDP then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-type unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code network-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code host-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code port-unreachable
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code fragmentation-needed
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-network-unknown
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-host-unknown
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE then count PERMIT-DST-ICMP-UNREACHABLE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-UNREACHABLE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from icmp-type echo-reply
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from icmp-type source-quench
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from icmp-type time-exceeded
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE from icmp-type parameter-problem
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE then count PERMIT-DST-ICMP-TYPE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-TYPE then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-ALL from protocol icmp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-ALL then count PERMIT-DST-ICMP-ALL
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-ALL then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-ICMP-ALL then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BGP from protocol tcp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BGP from port 179
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BGP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-BGP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from source-prefix-list BEST-EFFORT-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then count BEST-EFFORT-GLOBAL-SRC-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-SRC-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 from destination-prefix-list BEST-EFFORT-GLOBAL-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 then count BEST-EFFORT-GLOBAL-DST-UDP-V4
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 then forwarding-class best-effort
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term BEST-EFFORT-GLOBAL-DST-UDP-V4 then dscp 0
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER from protocol udp
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER then count PERMIT-DST-GLOBAL-UDP-SCAVENGER
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER then forwarding-class scavenger
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-GLOBAL-UDP-SCAVENGER then dscp cs1
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-IP from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-IP then count PERMIT-DST-IP
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-IP then sample
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term PERMIT-DST-IP then routing-instance tms-l3vrf
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-ALL then count DENY-ALL
set firewall family inet filter 8075-MAPS-VOICE-PARTNER-IN-V4-FLT term DENY-ALL then discard
set firewall family inet filter ITE-LIMIT-TRAFFIC term ITE-LIMIT then policer ITE-LIMIT-BW
set firewall family inet filter ITE-LIMIT-TRAFFIC term ITE-LIMIT then count ITE-TRAFFIC
set firewall family inet filter ITE-LIMIT-TRAFFIC term ITE-LIMIT then accept
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from source-address fe80::/10
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from destination-address ff02::1:ff00:0/104
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term5 from icmp-type neighbor-solicit
set firewall family inet6 filter IPV6-EDGE-ACL term term5 then accept
set firewall family inet6 filter IPV6-EDGE-ACL term term10 from source-address fe80::/10
set firewall family inet6 filter IPV6-EDGE-ACL term term10 from destination-address fe80::/10
set firewall family inet6 filter IPV6-EDGE-ACL term term10 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term10 from icmp-type neighbor-solicit
set firewall family inet6 filter IPV6-EDGE-ACL term term10 then accept
set firewall family inet6 filter IPV6-EDGE-ACL term term15 from source-address ::/128
set firewall family inet6 filter IPV6-EDGE-ACL term term15 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term15 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term15 from icmp-type neighbor-solicit
set firewall family inet6 filter IPV6-EDGE-ACL term term15 then accept
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from source-address fe80::/10
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from destination-address ff02::1/128
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from destination-address fe80::/10
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term20 from icmp-type neighbor-advertisement
set firewall family inet6 filter IPV6-EDGE-ACL term term20 then accept
set firewall family inet6 filter IPV6-EDGE-ACL term term25 from address 2001:db8::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term25 from address 2001:10::/28
set firewall family inet6 filter IPV6-EDGE-ACL term term25 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term30 from next-header 0
set firewall family inet6 filter IPV6-EDGE-ACL term term30 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term35 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term35 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term35 from next-header tcp
set firewall family inet6 filter IPV6-EDGE-ACL term term35 from destination-port bgp
set firewall family inet6 filter IPV6-EDGE-ACL term term35 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term35 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term40 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term40 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term40 from next-header tcp
set firewall family inet6 filter IPV6-EDGE-ACL term term40 from source-port bgp
set firewall family inet6 filter IPV6-EDGE-ACL term term40 from tcp-established
set firewall family inet6 filter IPV6-EDGE-ACL term term40 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term40 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2001:489a::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2001:489a:200:400::/55
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2404:f800::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2404:f800:4000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2404:f800:6000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2404:f800:8000::/33
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2603:1030:c00::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2603:1080::/25
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2801:80:1d0:2000::/52
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2a01:111::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term45 from destination-address 2a01:111:e000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term45 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term50 from source-address 2a01:111:2000:1::/64
set firewall family inet6 filter IPV6-EDGE-ACL term term50 from destination-address 2a01:111:2000:1::/64
set firewall family inet6 filter IPV6-EDGE-ACL term term50 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term50 from icmp-type echo-request
set firewall family inet6 filter IPV6-EDGE-ACL term term50 from icmp-type echo-reply
set firewall family inet6 filter IPV6-EDGE-ACL term term50 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term50 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term52 from source-address 2a01:111:f003::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term52 from source-address 2a01:111:f006::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term52 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term52 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2404:f800::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2a01:111::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2001:df0:7::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2001:df0:d7::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2001:df0:d8::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2001:df0:d9::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2620:0:30::/45
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2620:1ec::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2001:489a::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term55 from source-address 2603:1000::/24
set firewall family inet6 filter IPV6-EDGE-ACL term term55 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term60 from source-address 2001:4898::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term60 from source-address 2a01:110::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term60 from source-address 2404:f801::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term60 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term60 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term65 from destination-address 2001:4898::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term65 from destination-address 2a01:110::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term65 from destination-address 2404:f801::/32
set firewall family inet6 filter IPV6-EDGE-ACL term term65 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term65 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term67 from destination-prefix-list EDGE-AZURE-V6
set firewall family inet6 filter IPV6-EDGE-ACL term term67 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term67 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term69 from destination-prefix-list LinkedIn-V6
set firewall family inet6 filter IPV6-EDGE-ACL term term69 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term69 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from next-header tcp
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from next-header udp
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from port 161-162
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from port 445
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from port 593
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from port 135-139
set firewall family inet6 filter IPV6-EDGE-ACL term term70 from port 1433-1434
set firewall family inet6 filter IPV6-EDGE-ACL term term70 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:489a:4000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2404:f800:2000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2404:f800:7000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:df0:7::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:df0:d7::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:df0:d8::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:df0:d9::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2620:0:30::/45
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2620:1ec::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2801:80:1d0::/48
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2001:489a:2000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2603:1000::/25
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:1000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:2000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:4000::/34
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:8000::/34
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:c000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from destination-address 2a01:111:f000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from next-header tcp
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from next-header udp
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from next-header esp
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from next-header ah
set firewall family inet6 filter IPV6-EDGE-ACL term term75 from next-header gre
set firewall family inet6 filter IPV6-EDGE-ACL term term75 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term75 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2001:489a:200:400::/55
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:4000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:6000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:8000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:a000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:c000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2404:f800:e000::/35
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2801:80:1d0:2000::/52
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2a01:111::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from destination-address 2a01:111:e000::/36
set firewall family inet6 filter IPV6-EDGE-ACL term term80 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term80 then discard
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from source-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from destination-address 2000::/3
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from next-header icmp6
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type destination-unreachable
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type packet-too-big
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type echo-reply
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type echo-request
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type time-exceeded
set firewall family inet6 filter IPV6-EDGE-ACL term term85 from icmp-type parameter-problem
set firewall family inet6 filter IPV6-EDGE-ACL term term85 then sample
set firewall family inet6 filter IPV6-EDGE-ACL term term85 then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-EDGE-ACL term default-deny then discard
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER interface-specific
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term permit_bgp from next-header tcp
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term permit_bgp from port 179
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term permit_bgp then count bgp-packets
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term permit_bgp then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term permit_bgp then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-best-effort from traffic-class af31
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-best-effort then count classifier-best-effort-af31
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-best-effort then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-best-effort then forwarding-class best-effort
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-best-effort then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-scavenger from traffic-class cs1
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-scavenger then count classifier-scavenger-cs1
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-scavenger then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-scavenger then forwarding-class scavenger
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-scavenger then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive from traffic-class af41
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive from traffic-class cs3
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive from traffic-class af21
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive then count classifier-interactive
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive then forwarding-class interactive
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-interactive then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-voice from traffic-class ef
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-voice then count classifier-voice-ef
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-voice then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-voice then forwarding-class voice
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term classifier-voice then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term default-classifier-best-effort then count classifier-best-effort-default
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term default-classifier-best-effort then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term default-classifier-best-effort then forwarding-class best-effort
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER term default-classifier-best-effort then routing-instance tms-l3vrf
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD interface-specific
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-best-effort from traffic-class af31
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-best-effort then count classifier-best-effort-af31
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-best-effort then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-best-effort then forwarding-class best-effort
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-best-effort then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-scavenger from traffic-class cs1
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-scavenger then count classifier-scavenger-cs1
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-scavenger then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-scavenger then forwarding-class scavenger
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-scavenger then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive from traffic-class af41
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive from traffic-class cs3
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive from traffic-class af21
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive then count classifier-interactive
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive then forwarding-class interactive
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-interactive then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-voice from traffic-class ef
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-voice then count classifier-voice-ef
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-voice then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-voice then forwarding-class voice
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term classifier-voice then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term BINGEDGE from prefix-list ipv6-prefix-windows-update
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term BINGEDGE then count BINGEDGE
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term BINGEDGE then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term BINGEDGE then forwarding-class scavenger
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term BINGEDGE then accept
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term default-classifier-best-effort then count classifier-best-effort-default
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term default-classifier-best-effort then sample
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term default-classifier-best-effort then forwarding-class best-effort
set firewall family inet6 filter IPV6-FORWARDING-CLASSIFIER-NONSTD term default-classifier-best-effort then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-fragments from next-header 44
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-fragments then count fragment-v6
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-fragments then discard
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-neighbor_discovery from next-header icmp6
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-neighbor_discovery from icmp-type neighbor-solicit
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-neighbor_discovery from icmp-type neighbor-advertisement
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-neighbor_discovery then count neighbor_discovery
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-neighbor_discovery then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control from source-prefix-list ipv6-ssh-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control from source-prefix-list ipv6-bgp-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control from next-header tcp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control from tcp-flags "(syn & !ack) | fin | rst"
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control then policer tcp-control-policer
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-tcp-control then next term
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-bgp-access from source-prefix-list ipv6-bgp-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-bgp-access from source-prefix-list ipv6-bgp-vrf
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-bgp-access from next-header tcp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-bgp-access from port bgp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-bgp-access then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-ssh-access from source-prefix-list ipv6-ssh-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-ssh-access from next-header tcp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-ssh-access from destination-port ssh
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-ssh-access then policer tcp-control-policer
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-ssh-access then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-snmp-access from source-prefix-list ipv6-snmp-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-snmp-access from next-header udp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-snmp-access from destination-port snmp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-snmp-access then policer snmp-policer
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-snmp-access then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-traceroute-access from next-header udp
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-traceroute-access from destination-port 33434-33523
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-traceroute-access then policer traceroute-policer
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-traceroute-access then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access-tools from source-prefix-list ipv6-tools-list
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access-tools from next-header icmpv6
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access-tools then policer icmp-policer-tools
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access-tools then accept
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access from next-header icmpv6
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access then policer icmp-policer
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-icmp-access then accept
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 from source-prefix-list IPV6-GLOBAL-EGRESS-SPACE
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 from source-prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 from destination-prefix-list local-ips-v6
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 from payload-protocol ipv6
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 then policer greipip-policer
set firewall family inet6 filter IPV6-PROTECT-RE term greipip-decap-ipv6 then count accept_greipip
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-default-deny then count ipv6-protect-re-reject
set firewall family inet6 filter IPV6-PROTECT-RE term ipv6-default-deny then discard
set firewall family inet6 filter ipv6-netflow interface-specific
set firewall family inet6 filter ipv6-netflow term sampled_packets from source-address ::/0
set firewall family inet6 filter ipv6-netflow term sampled_packets then count ipv6_sample
set firewall family inet6 filter ipv6-netflow term sampled_packets then sample
set firewall family inet6 filter ipv6_internal_protections term permit_bgp from port bgp
set firewall family inet6 filter ipv6_internal_protections term permit_bgp then count bgp-packets
set firewall family inet6 filter ipv6_internal_protections term permit_bgp then sample
set firewall family inet6 filter ipv6_internal_protections term permit_bgp then accept
set firewall family inet6 filter ipv6_internal_protections term default-classifier-best-effort then count default-classifier-best-effort
set firewall family inet6 filter ipv6_internal_protections term default-classifier-best-effort then sample
set firewall family inet6 filter ipv6_internal_protections term default-classifier-best-effort then forwarding-class best-effort
set firewall family inet6 filter ipv6_internal_protections term default-classifier-best-effort then routing-instance tms-l3vrf
set firewall policer ITE-LIMIT-BW if-exceeding bandwidth-limit 1g
set firewall policer ITE-LIMIT-BW if-exceeding burst-size-limit 10m
set firewall policer ITE-LIMIT-BW then discard
set firewall policer bfd-policer if-exceeding bandwidth-limit 5m
set firewall policer bfd-policer if-exceeding burst-size-limit 500k
set firewall policer bfd-policer then discard
set firewall policer bmp-policer if-exceeding bandwidth-limit 5m
set firewall policer bmp-policer if-exceeding burst-size-limit 500k
set firewall policer bmp-policer then discard
set firewall policer dhcp-policer if-exceeding bandwidth-limit 10m
set firewall policer dhcp-policer if-exceeding burst-size-limit 500k
set firewall policer dhcp-policer then discard
set firewall policer dns-policer if-exceeding bandwidth-limit 50k
set firewall policer dns-policer if-exceeding burst-size-limit 10k
set firewall policer dns-policer then discard
set firewall policer greipip-policer if-exceeding bandwidth-limit 20m
set firewall policer greipip-policer if-exceeding burst-size-limit 5m
set firewall policer greipip-policer then discard
set firewall policer icmp-policer if-exceeding bandwidth-limit 1m
set firewall policer icmp-policer if-exceeding burst-size-limit 10k
set firewall policer icmp-policer then discard
set firewall policer icmp-policer-provisioning if-exceeding bandwidth-limit 50m
set firewall policer icmp-policer-provisioning if-exceeding burst-size-limit 50k
set firewall policer icmp-policer-provisioning then discard
set firewall policer icmp-policer-tools if-exceeding bandwidth-limit 1m
set firewall policer icmp-policer-tools if-exceeding burst-size-limit 50k
set firewall policer icmp-policer-tools then discard
set firewall policer ldp-policer if-exceeding bandwidth-limit 5m
set firewall policer ldp-policer if-exceeding burst-size-limit 500k
set firewall policer ldp-policer then discard
set firewall policer lspselfping-policer if-exceeding bandwidth-limit 5m
set firewall policer lspselfping-policer if-exceeding burst-size-limit 500k
set firewall policer lspselfping-policer then discard
set firewall policer ntp-policer if-exceeding bandwidth-limit 1m
set firewall policer ntp-policer if-exceeding burst-size-limit 50k
set firewall policer ntp-policer then discard
set firewall policer ospf-policer if-exceeding bandwidth-limit 5m
set firewall policer ospf-policer if-exceeding burst-size-limit 500k
set firewall policer ospf-policer then discard
set firewall policer rpki-policer if-exceeding bandwidth-limit 5m
set firewall policer rpki-policer if-exceeding burst-size-limit 500k
set firewall policer rpki-policer then discard
set firewall policer rsvp-policer if-exceeding bandwidth-limit 5m
set firewall policer rsvp-policer if-exceeding burst-size-limit 500k
set firewall policer rsvp-policer then discard
set firewall policer snmp-policer if-exceeding bandwidth-limit 5m
set firewall policer snmp-policer if-exceeding burst-size-limit 500k
set firewall policer snmp-policer then discard
set firewall policer tacacs-policer if-exceeding bandwidth-limit 2m
set firewall policer tacacs-policer if-exceeding burst-size-limit 100k
set firewall policer tacacs-policer then discard
set firewall policer tcp-control-policer if-exceeding bandwidth-limit 1m
set firewall policer tcp-control-policer if-exceeding burst-size-limit 50k
set firewall policer tcp-control-policer then discard
set firewall policer tcp-ssh-policer if-exceeding bandwidth-limit 100m
set firewall policer tcp-ssh-policer if-exceeding burst-size-limit 5m
set firewall policer tcp-ssh-policer then discard
set firewall policer traceroute-policer if-exceeding bandwidth-limit 50k
set firewall policer traceroute-policer if-exceeding burst-size-limit 10k
set firewall policer traceroute-policer then discard
set firewall policer vrrp-policer if-exceeding bandwidth-limit 5m
set firewall policer vrrp-policer if-exceeding burst-size-limit 500k
set firewall policer vrrp-policer then discard
set firewall filter 8075-EDGEACL-IN-V4 term CLEAR_DSCP then loss-priority medium-high
set firewall filter 8075-EDGEACL-IN-V4 term CLEAR_DSCP then next term
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-BOGON from source-prefix-list BOGON-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-BOGON then count DENY-SRC-BOGON
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-BOGON then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-BOGON from destination-prefix-list BOGON-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-BOGON then count DENY-DST-BOGON
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-BOGON then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-PRIVATE from source-prefix-list PRIVATE-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-PRIVATE then count DENY-SRC-PRIVATE
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-PRIVATE then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PRIVATE from destination-prefix-list PRIVATE-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PRIVATE then count DENY-DST-PRIVATE
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PRIVATE then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-LOOPBACK from destination-prefix-list EDGE-LOOPBACK-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-LOOPBACK then count DENY-DST-LOOPBACK
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-LOOPBACK then discard
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-SRC-DDOS-V4 from source-prefix-list ITE-INPUT-SRC-DDOS-V4
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then count ITE-INPUT-SRC-DDOS-V4
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then sample
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then forwarding-class scavenger
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-SRC-DDOS-V4 then next term
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-DST-DDOS-V4 from destination-prefix-list ITE-INPUT-DST-DDOS-V4
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-DST-DDOS-V4 then count ITE-INPUT-DST-DDOS-V4
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-DST-DDOS-V4 then sample
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-DST-DDOS-V4 then forwarding-class scavenger
set firewall filter 8075-EDGEACL-IN-V4 term ITE-INPUT-DST-DDOS-V4 then next term
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE from protocol icmp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE then count PERMIT-DST-INFRASTRUCTURE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE then forwarding-class scavenger
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-INFRASTRUCTURE then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-INFRASTRUCTURE from destination-prefix-list EDGE-INFRASTRUCTURE-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-INFRASTRUCTURE then count DENY-DST-INFRASTRUCTURE
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-INFRASTRUCTURE then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-DDOS from source-prefix-list DENY-SRC-DDOS
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-DDOS then count DENY-SRC-DDOS
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-DDOS then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DEST-DDOS from destination-prefix-list DENY-DEST-DDOS
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DEST-DDOS then count DENY-DEST-DDOS
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DEST-DDOS then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP from destination-prefix-list EDGE-BGP-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP from port 179
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP then count PERMIT-DST-BGP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BGP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-PEER-ICMP from source-prefix-list EDGE-BGP-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-PEER-ICMP from protocol icmp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-PEER-ICMP then count PERMIT-PEERING-ICMP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-PEER-ICMP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-PEER-ICMP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PEER-IP from destination-prefix-list EDGE-BGP-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PEER-IP then count DENY-DST-PEER-IP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-PEER-IP then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION from source-prefix-list SPOOF-EXCEPTION-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then count PERMIT-SRC-SPOOF-EXCEPTION
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-SPOOF-EXCEPTION then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-SPOOF from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-SPOOF then count DENY-SRC-SPOOF
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-SPOOF then discard
set firewall filter 8075-EDGEACL-IN-V4 term bing-fd-vip from prefix-list bing-fd-vip
set firewall filter 8075-EDGEACL-IN-V4 term bing-fd-vip then count bing-vip-traffic
set firewall filter 8075-EDGEACL-IN-V4 term bing-fd-vip then sample
set firewall filter 8075-EDGEACL-IN-V4 term bing-fd-vip then forwarding-class interactive
set firewall filter 8075-EDGEACL-IN-V4 term bing-fd-vip then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term adcenter-vip from prefix-list adcenter-vip
set firewall filter 8075-EDGEACL-IN-V4 term adcenter-vip then count adcenter-vip-traffic
set firewall filter 8075-EDGEACL-IN-V4 term adcenter-vip then sample
set firewall filter 8075-EDGEACL-IN-V4 term adcenter-vip then forwarding-class interactive
set firewall filter 8075-EDGEACL-IN-V4 term adcenter-vip then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term wps-ptnr from prefix-list WPS-PTNR
set firewall filter 8075-EDGEACL-IN-V4 term wps-ptnr then count WPS-PTNR-traffic
set firewall filter 8075-EDGEACL-IN-V4 term wps-ptnr then sample
set firewall filter 8075-EDGEACL-IN-V4 term wps-ptnr then forwarding-class voice
set firewall filter 8075-EDGEACL-IN-V4 term wps-ptnr then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term wps-edge from prefix-list WPS-EDGE
set firewall filter 8075-EDGEACL-IN-V4 term wps-edge then count WPS-EDGE-traffic
set firewall filter 8075-EDGEACL-IN-V4 term wps-edge then sample
set firewall filter 8075-EDGEACL-IN-V4 term wps-edge then forwarding-class voice
set firewall filter 8075-EDGEACL-IN-V4 term wps-edge then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP from destination-address 65.55.56.206/32
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP from destination-address 64.4.10.33/32
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP from destination-port 123
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP then count PERMIT-DST-NTP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-NTP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP from source-address 64.147.116.229/32
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP from source-address 129.6.15.30/32
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP from source-port 123
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP then count PERMIT-SRC-NTP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-NTP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG from destination-address 65.55.42.20/31
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG from destination-address 131.253.16.0/23
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG from is-fragment
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG then count PERMIT-DST-XBOX-FRAG
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-FRAG then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-SIGNIANT from destination-prefix-list EDGE-XBOX-UDP-SIGNIANT-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-SIGNIANT from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-SIGNIANT then count PERMIT-DST-XBOX-UDP-SIGNIANT
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-SIGNIANT then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-SIGNIANT then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS from destination-prefix-list EDGE-XBOX-UDP-DNS-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS from destination-port 53
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS then count PERMIT-DST-XBOX-UDP-DNS
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-DNS then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-CDN from destination-prefix-list EDGE-XBOX-UDP-CDN-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-CDN from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-CDN then count PERMIT-DST-XBOX-UDP-CDN
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-CDN then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-XBOX-UDP-CDN then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-UDP from destination-prefix-list EDGE-XBOX-UDP-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-UDP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-UDP then count DENY-DST-XBOX-UDP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-UDP then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-FRAG from destination-prefix-list EDGE-XBOX-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-FRAG from is-fragment
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-FRAG from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-FRAG then count DENY-DST-XBOX-FRAG
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-FRAG then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-NTP from destination-prefix-list EDGE-XBOX-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-NTP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-NTP from source-port 123
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-NTP then count DENY-DST-XBOX-NTP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-XBOX-NTP then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-MSIT from destination-prefix-list EDGE-MSIT-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-MSIT then count PERMIT-DST-MSIT
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-MSIT then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-MSIT then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED from source-port 11211
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED from destination-port 53
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED from destination-port 123
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED then count PERMIT-SRC-MEMCACHED
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV from source-port 11211
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV then count PERMIT-SRC-MEMCACHED-SCAV
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV then forwarding-class scavenger
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-SRC-MEMCACHED-SCAV then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-GRE-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall filter 8075-EDGEACL-IN-V4 term DENY-GRE-AZURE from protocol gre
set firewall filter 8075-EDGEACL-IN-V4 term DENY-GRE-AZURE then count DENY-GRE-AZURE
set firewall filter 8075-EDGEACL-IN-V4 term DENY-GRE-AZURE then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-AZURE from destination-prefix-list EDGE-AZURE-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-AZURE then count PERMIT-DST-AZURE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-AZURE then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-AZURE then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-OTHER from destination-prefix-list EDGE-OTHER-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-OTHER then count PERMIT-DST-OTHER
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-OTHER then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-OTHER then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BYOIP from destination-prefix-list BYOIP-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BYOIP then count PERMIT-DST-BYOIP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BYOIP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-BYOIP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-LINKEDIN from destination-prefix-list LinkedIn-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-LINKEDIN then count PERMIT-DST-LINKEDIN
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-LINKEDIN then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-LINKEDIN then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH from destination-prefix-list EDGE-PERMIT-SSH-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH from destination-port 22
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH then count PERMIT-DST-SSH
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-SSH then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 53
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 55
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol 77
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS from protocol pim
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS then count DENY-NA-IP_PROTOCOLS
set firewall filter 8075-EDGEACL-IN-V4 term DENY-NA-IP_PROTOCOLS then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 13
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 22
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 23
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 42
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 111
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 113
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 119
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 135
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 136
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 137
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 138
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 139
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 161
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 162
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 389
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 445
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 465
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 512
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 514
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 593
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 636
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 873
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 901
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 1083
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 2049
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 2301
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 2381
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 3268
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 3306
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 3389
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 5432
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 5631
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 5800
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 5900
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP from destination-port 6698
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP then count DENY-DST-TCP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-TCP then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 13
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 19
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 69
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 111
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 135
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 136
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 137
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 138
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 139
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 161
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 162
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 445
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 593
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 1434
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 2049
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP from destination-port 5632
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP then count DENY-DST-UDP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-DST-UDP then discard
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP from source-port 123
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP then count DENY-SRC-UDP
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP then discard
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from destination-address 70.37.128.0/18
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from destination-address 157.55.0.0/16
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from destination-address 65.55.18.128/25
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from destination-address 65.55.35.192/26
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from protocol esp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from protocol ah
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO from protocol gre
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO then count TEMP-PERMIT-DST-PRE1433-5_PROTO
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-5_PROTO then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 from destination-address 209.240.192.0/19
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 from destination-port 1433
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 from destination-port 1434
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 then count TEMP-PERMIT-DST-209-240-192
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-209-240-192 then discard
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 207.68.156.0/25
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 207.68.156.128/25
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 131.253.12.0/22
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 131.253.16.0/23
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 131.253.22.0/23
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 216.220.208.0/21
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP from destination-address 209.240.192.0/19
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP then count TEMP-PERMIT-DST-PRE1433-IP
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP-1434 from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP-1434 from source-port 1434
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP-1434 then count DENY-SRC-UDP-1434
set firewall filter 8075-EDGEACL-IN-V4 term DENY-SRC-UDP-1434 then discard
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP2 from destination-address 65.52.0.0/15
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP2 from destination-address 207.68.174.0/24
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP2 then count TEMP-PERMIT-DST-PRE1433-IP
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP2 then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-PRE1433-IP2 then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 from destination-port 1433
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 from destination-port 1434
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 then count TEMP-DENY-DST-1433_1434
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-1433_1434 then discard
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-SRC-QUALYS from source-address 64.39.96.0/20
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-SRC-QUALYS then count TEMP-PERMIT-SRC-QUALYS
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-SRC-QUALYS then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-SRC-QUALYS then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-EST from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-EST from tcp-established
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-EST then count TEMP-PERMIT-TCP-EST
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-EST then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-EST then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-prefix-list EDGE-DENY-V4
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-prefix-list TEMP-DENY-207-46-0-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-prefix-list TEMP-DENY-207-46-96-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-port 53
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-port 123
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP from destination-port 1023-65535
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP then count TEMP-PERMIT-DST-UDP
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-DST-UDP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from protocol icmp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-type unreachable
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code network-unreachable
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code host-unreachable
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code port-unreachable
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code fragmentation-needed
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-network-unknown
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE from icmp-code destination-host-unknown
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then count PERMIT-DST-ICMP-UNREACHABLE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-UNREACHABLE then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from protocol icmp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type echo-reply
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type source-quench
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type time-exceeded
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE from icmp-type parameter-problem
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE then count PERMIT-DST-ICMP-TYPE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-TYPE then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-ALL from protocol icmp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-ALL then count PERMIT-DST-ICMP-ALL
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-ALL then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-ICMP-ALL then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-IP from destination-prefix-list EDGE-DENY-V4
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-IP then count TEMP-DENY-DST-IP
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-DST-IP then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-BGP from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-BGP from port 179
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-BGP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-BGP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-96-0 from destination-prefix-list TEMP-DENY-207-46-96-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-96-0 then count TEMP-DENY-207-46-96-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-96-0 then discard
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 from destination-prefix-list TEMP-DENY-207-46-0-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 from destination-port 80
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 from destination-port 443
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 then count TEMP-PERMIT-TCP-80-443
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 then sample
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-PERMIT-TCP-80-443 then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-0-0 from destination-prefix-list TEMP-DENY-207-46-0-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-0-0 then count TEMP-DENY-207-46-0-0
set firewall filter 8075-EDGEACL-IN-V4 term TEMP-DENY-207-46-0-0 then discard
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-IP from destination-prefix-list EDGE-PERMIT-IP-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-IP then count PERMIT-DST-IP
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-IP then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-IP then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-PROTO_41 from destination-prefix-list EDGE-PROTO-41-V4
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-PROTO_41 from protocol 41
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-PROTO_41 then count PERMIT-DST-PROTO_41
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-PROTO_41 then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-PROTO_41 then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from destination-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from protocol tcp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from protocol udp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from protocol esp
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from protocol ah
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO from protocol gre
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO then count PERMIT-DST-5_PROTO
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO then sample
set firewall filter 8075-EDGEACL-IN-V4 term PERMIT-DST-5_PROTO then routing-instance tms-l3vrf
set firewall filter 8075-EDGEACL-IN-V4 term DENY-ALL then count DENY-ALL
set firewall filter 8075-EDGEACL-IN-V4 term DENY-ALL then discard
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-BOGON from source-prefix-list BOGON-V4
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-BOGON then count DENY-SRC-BOGON
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-BOGON then discard
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-BOGON from destination-prefix-list BOGON-V4
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-BOGON then count DENY-DST-BOGON
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-BOGON then discard
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-PRIVATE from source-prefix-list PRIVATE-V4
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-PRIVATE then count DENY-SRC-PRIVATE
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-SRC-PRIVATE then discard
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PRIVATE from destination-prefix-list PRIVATE-V4
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PRIVATE then count DENY-DST-PRIVATE
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PRIVATE then discard
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-SDRP from protocol 42
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-SDRP then count DENY-DST-SDRP
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-SDRP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-AX25 from protocol 93
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-AX25 then count DENY-DST-AX25
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-AX25 then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-IPIP from protocol 94
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-IPIP then count DENY-DST-IPIP
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-IPIP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ETHERIP from protocol 97
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ETHERIP then count DENY-DST-ETHERIP
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ETHERIP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ENCAP from protocol 98
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ENCAP then count DENY-DST-ENCAP
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-ENCAP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PPTP from protocol tcp
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PPTP from protocol udp
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PPTP from destination-port 1723
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PPTP then count DENY-DST-PPTP
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-DST-PPTP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-IP from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-IP then count PERMIT-DST-IP
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-IP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LOCAL from source-prefix-list EDGE-EGRESS-V4
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LOCAL then count PERMIT-LOCAL-IP
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LOCAL then accept
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-BYOIP from source-prefix-list BYOIP-V4
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-BYOIP then count PERMIT-SRC-BYOIP
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-BYOIP then accept
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LINKEDIN from source-prefix-list LinkedIn-V4
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LINKEDIN then count PERMIT-SRC-LINKEDIN
set firewall filter 8075-EDGEACL-OUT-V4 term PERMIT-SRC-LINKEDIN then accept
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-ALL then count DENY-ALL
set firewall filter 8075-EDGEACL-OUT-V4 term DENY-ALL then accept
set firewall filter FORWARDING-CLASSIFIER interface-specific
set firewall filter FORWARDING-CLASSIFIER term ITEpremium from source-prefix-list ITEpremium
set firewall filter FORWARDING-CLASSIFIER term ITEpremium then count ITEpremium
set firewall filter FORWARDING-CLASSIFIER term ITEpremium then sample
set firewall filter FORWARDING-CLASSIFIER term ITEpremium then forwarding-class best-effort
set firewall filter FORWARDING-CLASSIFIER term ITEpremium then routing-instance ITEpremium
set firewall filter FORWARDING-CLASSIFIER term classifier-best-effort from dscp af31
set firewall filter FORWARDING-CLASSIFIER term classifier-best-effort then count classifier-best-effort-af31
set firewall filter FORWARDING-CLASSIFIER term classifier-best-effort then sample
set firewall filter FORWARDING-CLASSIFIER term classifier-best-effort then forwarding-class best-effort
set firewall filter FORWARDING-CLASSIFIER term classifier-best-effort then accept
set firewall filter FORWARDING-CLASSIFIER term classifier-scavenger from dscp cs1
set firewall filter FORWARDING-CLASSIFIER term classifier-scavenger then count classifier-scavenger-cs1
set firewall filter FORWARDING-CLASSIFIER term classifier-scavenger then sample
set firewall filter FORWARDING-CLASSIFIER term classifier-scavenger then forwarding-class scavenger
set firewall filter FORWARDING-CLASSIFIER term classifier-scavenger then accept
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive from dscp af41
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive from dscp cs3
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive from dscp af21
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive then count classifier-interactive
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive then sample
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive then forwarding-class interactive
set firewall filter FORWARDING-CLASSIFIER term classifier-interactive then accept
set firewall filter FORWARDING-CLASSIFIER term classifier-voice from dscp ef
set firewall filter FORWARDING-CLASSIFIER term classifier-voice then count classifier-voice-ef
set firewall filter FORWARDING-CLASSIFIER term classifier-voice then sample
set firewall filter FORWARDING-CLASSIFIER term classifier-voice then forwarding-class voice
set firewall filter FORWARDING-CLASSIFIER term classifier-voice then accept
set firewall filter FORWARDING-CLASSIFIER term default-classifier-best-effort then count classifier-best-effort-default
set firewall filter FORWARDING-CLASSIFIER term default-classifier-best-effort then sample
set firewall filter FORWARDING-CLASSIFIER term default-classifier-best-effort then forwarding-class best-effort
set firewall filter FORWARDING-CLASSIFIER term default-classifier-best-effort then accept
set firewall filter block_ntp_azure term white_list from source-address 10.20.8.129/32
set firewall filter block_ntp_azure term white_list from source-address 10.20.8.130/32
set firewall filter block_ntp_azure term white_list from source-address 10.20.37.176/28
set firewall filter block_ntp_azure term white_list from protocol udp
set firewall filter block_ntp_azure term white_list from source-port 123
set firewall filter block_ntp_azure term white_list then accept
set firewall filter block_ntp_azure term accept_123_123 from protocol udp
set firewall filter block_ntp_azure term accept_123_123 from source-port 123
set firewall filter block_ntp_azure term accept_123_123 from destination-port 123
set firewall filter block_ntp_azure term accept_123_123 then count accept_123_123
set firewall filter block_ntp_azure term accept_123_123 then accept
set firewall filter block_ntp_azure term block_123_xxx from protocol udp
set firewall filter block_ntp_azure term block_123_xxx from source-port 123
set firewall filter block_ntp_azure term block_123_xxx from destination-port 0-1023
set firewall filter block_ntp_azure term block_123_xxx then count block_123_xxx
set firewall filter block_ntp_azure term block_123_xxx then discard
set firewall filter block_ntp_azure term last then accept
set firewall filter netflow term sampled_packets from source-address 0.0.0.0/0
set firewall filter netflow term sampled_packets then sample
set firewall filter netflow term sampled_packets then accept
set firewall filter protect-RE term next-fragment from is-fragment
set firewall filter protect-RE term next-fragment then count next-fragment
set firewall filter protect-RE term next-fragment then discard
set firewall filter protect-RE term first-fragment from first-fragment
set firewall filter protect-RE term first-fragment then count first-fragment
set firewall filter protect-RE term first-fragment then discard
set firewall filter protect-RE term greipip-decap from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term greipip-decap from source-prefix-list PRIVATE-V4
set firewall filter protect-RE term greipip-decap from destination-prefix-list local-ips
set firewall filter protect-RE term greipip-decap from protocol gre
set firewall filter protect-RE term greipip-decap from protocol ipip
set firewall filter protect-RE term greipip-decap then policer greipip-policer
set firewall filter protect-RE term greipip-decap then count accept_greipip
set firewall filter protect-RE term greipip-decap then decapsulate gre
set firewall filter protect-RE term tcp-control from source-prefix-list ssh-list
set firewall filter protect-RE term tcp-control from source-prefix-list ssh-list-er
set firewall filter protect-RE term tcp-control from source-prefix-list tacacs-list
set firewall filter protect-RE term tcp-control from source-prefix-list bgp-list
set firewall filter protect-RE term tcp-control from protocol tcp
set firewall filter protect-RE term tcp-control from tcp-flags "(syn & !ack) | fin | rst"
set firewall filter protect-RE term tcp-control then policer tcp-control-policer
set firewall filter protect-RE term tcp-control then accept
set firewall filter protect-RE term bgp-access from source-prefix-list bgp-list
set firewall filter protect-RE term bgp-access from source-prefix-list bgp-vrf
set firewall filter protect-RE term bgp-access from protocol tcp
set firewall filter protect-RE term bgp-access from port bgp
set firewall filter protect-RE term bgp-access then accept
set firewall filter protect-RE term deny-Azure from source-prefix-list EDGE-AZURE-V4
set firewall filter protect-RE term deny-Azure from protocol ospf
set firewall filter protect-RE term deny-Azure from protocol rsvp
set firewall filter protect-RE term deny-Azure then count Azure-count
set firewall filter protect-RE term deny-Azure then discard
set firewall filter protect-RE term deny-Azure-ldp from source-prefix-list EDGE-AZURE-V4
set firewall filter protect-RE term deny-Azure-ldp from protocol tcp
set firewall filter protect-RE term deny-Azure-ldp from protocol udp
set firewall filter protect-RE term deny-Azure-ldp from port 646
set firewall filter protect-RE term deny-Azure-ldp then count Azure-count-ldp
set firewall filter protect-RE term deny-Azure-ldp then discard
set firewall filter protect-RE term deny-Azure-udp-ports from source-prefix-list EDGE-AZURE-V4
set firewall filter protect-RE term deny-Azure-udp-ports from protocol udp
set firewall filter protect-RE term deny-Azure-udp-ports from port dhcp
set firewall filter protect-RE term deny-Azure-udp-ports from port ntp
set firewall filter protect-RE term deny-Azure-udp-ports from port 3784
set firewall filter protect-RE term deny-Azure-udp-ports from port 4784
set firewall filter protect-RE term deny-Azure-udp-ports then count Azure-count-udp-ports
set firewall filter protect-RE term deny-Azure-udp-ports then discard
set firewall filter protect-RE term ospf-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term ospf-access from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term ospf-access from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term ospf-access from protocol ospf
set firewall filter protect-RE term ospf-access then policer ospf-policer
set firewall filter protect-RE term ospf-access then accept
set firewall filter protect-RE term rsvp-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term rsvp-access from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term rsvp-access from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term rsvp-access from protocol rsvp
set firewall filter protect-RE term rsvp-access then policer rsvp-policer
set firewall filter protect-RE term rsvp-access then accept
set firewall filter protect-RE term ldp-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term ldp-access from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term ldp-access from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term ldp-access from protocol tcp
set firewall filter protect-RE term ldp-access from protocol udp
set firewall filter protect-RE term ldp-access from port 646
set firewall filter protect-RE term ldp-access then policer ldp-policer
set firewall filter protect-RE term ldp-access then accept
set firewall filter protect-RE term vrrp-access from destination-address 224.0.0.18/32
set firewall filter protect-RE term vrrp-access from protocol vrrp
set firewall filter protect-RE term vrrp-access then policer vrrp-policer
set firewall filter protect-RE term vrrp-access then accept
set firewall filter protect-RE term dhcp-access from source-address 0.0.0.0/32
set firewall filter protect-RE term dhcp-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term dhcp-access from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term dhcp-access from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term dhcp-access from protocol udp
set firewall filter protect-RE term dhcp-access from port dhcp
set firewall filter protect-RE term dhcp-access from port bootpc
set firewall filter protect-RE term dhcp-access from port bootps
set firewall filter protect-RE term dhcp-access then policer dhcp-policer
set firewall filter protect-RE term dhcp-access then accept
set firewall filter protect-RE term ssh-access from source-prefix-list ssh-list
set firewall filter protect-RE term ssh-access from source-prefix-list ssh-list-er
set firewall filter protect-RE term ssh-access from protocol tcp
set firewall filter protect-RE term ssh-access from destination-port ssh
set firewall filter protect-RE term ssh-access then policer tcp-ssh-policer
set firewall filter protect-RE term ssh-access then count ssh-count
set firewall filter protect-RE term ssh-access then accept
set firewall filter protect-RE term tacacs-access from source-prefix-list tacacs-list
set firewall filter protect-RE term tacacs-access from protocol tcp
set firewall filter protect-RE term tacacs-access from source-port tacacs
set firewall filter protect-RE term tacacs-access then policer tacacs-policer
set firewall filter protect-RE term tacacs-access then count tacacs-count
set firewall filter protect-RE term tacacs-access then accept
set firewall filter protect-RE term snmp-access from source-prefix-list snmp-list
set firewall filter protect-RE term snmp-access from protocol udp
set firewall filter protect-RE term snmp-access from destination-port snmp
set firewall filter protect-RE term snmp-access then policer snmp-policer
set firewall filter protect-RE term snmp-access then count snmp-count
set firewall filter protect-RE term snmp-access then accept
set firewall filter protect-RE term snmp-reject from protocol udp
set firewall filter protect-RE term snmp-reject from port snmp
set firewall filter protect-RE term snmp-reject then discard
set firewall filter protect-RE term dns-access from source-prefix-list dns-list
set firewall filter protect-RE term dns-access from protocol udp
set firewall filter protect-RE term dns-access from port 53
set firewall filter protect-RE term dns-access then policer dns-policer
set firewall filter protect-RE term dns-access then count dns-count
set firewall filter protect-RE term dns-access then accept
set firewall filter protect-RE term ntp-access from source-prefix-list loopback
set firewall filter protect-RE term ntp-access from source-prefix-list ntp-list
set firewall filter protect-RE term ntp-access from protocol udp
set firewall filter protect-RE term ntp-access from port ntp
set firewall filter protect-RE term ntp-access then policer ntp-policer
set firewall filter protect-RE term ntp-access then count ntp-count
set firewall filter protect-RE term ntp-access then accept
set firewall filter protect-RE term ntp-request from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term ntp-request from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term ntp-request from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term ntp-request from protocol udp
set firewall filter protect-RE term ntp-request from port ntp
set firewall filter protect-RE term ntp-request then policer ntp-policer
set firewall filter protect-RE term ntp-request then count ntp-count
set firewall filter protect-RE term ntp-request then accept
set firewall filter protect-RE term traceroute-access from protocol udp
set firewall filter protect-RE term traceroute-access from destination-port 33434-33523
set firewall filter protect-RE term traceroute-access then policer traceroute-policer
set firewall filter protect-RE term traceroute-access then count traceroute-count
set firewall filter protect-RE term traceroute-access then accept
set firewall filter protect-RE term mpls-ping-access from source-prefix-list lspend-ips
set firewall filter protect-RE term mpls-ping-access from protocol udp
set firewall filter protect-RE term mpls-ping-access from port 3503
set firewall filter protect-RE term mpls-ping-access then policer icmp-policer
set firewall filter protect-RE term mpls-ping-access then count mpls-ping-count
set firewall filter protect-RE term mpls-ping-access then accept
set firewall filter protect-RE term icmp-access-tools from source-prefix-list tools-list
set firewall filter protect-RE term icmp-access-tools from protocol icmp
set firewall filter protect-RE term icmp-access-tools from icmp-type echo-request
set firewall filter protect-RE term icmp-access-tools from icmp-type echo-reply
set firewall filter protect-RE term icmp-access-tools from icmp-type unreachable
set firewall filter protect-RE term icmp-access-tools from icmp-type time-exceeded
set firewall filter protect-RE term icmp-access-tools from icmp-type source-quench
set firewall filter protect-RE term icmp-access-tools then policer icmp-policer-tools
set firewall filter protect-RE term icmp-access-tools then count icmp-count-tools
set firewall filter protect-RE term icmp-access-tools then accept
set firewall filter protect-RE term icmp-access-provisioning from source-prefix-list provisioning-list
set firewall filter protect-RE term icmp-access-provisioning from protocol icmp
set firewall filter protect-RE term icmp-access-provisioning from icmp-type echo-request
set firewall filter protect-RE term icmp-access-provisioning from icmp-type echo-reply
set firewall filter protect-RE term icmp-access-provisioning from icmp-type unreachable
set firewall filter protect-RE term icmp-access-provisioning from icmp-type time-exceeded
set firewall filter protect-RE term icmp-access-provisioning from icmp-type source-quench
set firewall filter protect-RE term icmp-access-provisioning then policer icmp-policer-provisioning
set firewall filter protect-RE term icmp-access-provisioning then count icmp-count-provisioning
set firewall filter protect-RE term icmp-access-provisioning then accept
set firewall filter protect-RE term icmp-access from protocol icmp
set firewall filter protect-RE term icmp-access from icmp-type echo-request
set firewall filter protect-RE term icmp-access from icmp-type echo-reply
set firewall filter protect-RE term icmp-access from icmp-type unreachable
set firewall filter protect-RE term icmp-access from icmp-type time-exceeded
set firewall filter protect-RE term icmp-access from icmp-type source-quench
set firewall filter protect-RE term icmp-access then policer icmp-policer
set firewall filter protect-RE term icmp-access then count icmp-count
set firewall filter protect-RE term icmp-access then accept
set firewall filter protect-RE term bfd-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term bfd-access from source-prefix-list PRIVATE-IP-SPACE
set firewall filter protect-RE term bfd-access from source-prefix-list MICROSOFT-PRIVATE-ROUTES
set firewall filter protect-RE term bfd-access from protocol udp
set firewall filter protect-RE term bfd-access from source-port 49152-65535
set firewall filter protect-RE term bfd-access from destination-port 3784
set firewall filter protect-RE term bfd-access from destination-port 6784
set firewall filter protect-RE term bfd-access then policer bfd-policer
set firewall filter protect-RE term bfd-access then accept
set firewall filter protect-RE term bmp-access from source-prefix-list tools-list
set firewall filter protect-RE term bmp-access from source-prefix-list bmp-station
set firewall filter protect-RE term bmp-access from protocol tcp
set firewall filter protect-RE term bmp-access from port 5555
set firewall filter protect-RE term bmp-access then policer bmp-policer
set firewall filter protect-RE term bmp-access then accept
set firewall filter protect-RE term rpki-access from source-prefix-list GLOBAL-EGRESS-IP-SPACE
set firewall filter protect-RE term rpki-access from protocol tcp
set firewall filter protect-RE term rpki-access from source-port 8323
set firewall filter protect-RE term rpki-access then policer rpki-policer
set firewall filter protect-RE term rpki-access then count rpki-count
set firewall filter protect-RE term rpki-access then accept
set firewall filter protect-RE term mpls-self-ping from source-prefix-list local-ips
set firewall filter protect-RE term mpls-self-ping from destination-prefix-list loopback
set firewall filter protect-RE term mpls-self-ping from protocol udp
set firewall filter protect-RE term mpls-self-ping from port 8503
set firewall filter protect-RE term mpls-self-ping then policer lspselfping-policer
set firewall filter protect-RE term mpls-self-ping then count mpls-self-ping
set firewall filter protect-RE term mpls-self-ping then accept
set firewall filter protect-RE term default-deny then count protect-re-reject
set firewall filter protect-RE term default-deny then discard
set firewall filter protocol-outbound-marking term icmp from protocol icmp
set firewall filter protocol-outbound-marking term icmp then count icmp
set firewall filter protocol-outbound-marking term icmp then forwarding-class best-effort
set firewall filter protocol-outbound-marking term icmp then accept
set firewall filter protocol-outbound-marking term icmp then dscp be
set firewall filter protocol-outbound-marking term snmpx from destination-prefix-list prefix-snmpx
set firewall filter protocol-outbound-marking term snmpx from protocol udp
set firewall filter protocol-outbound-marking term snmpx from port snmp
set firewall filter protocol-outbound-marking term snmpx then count snmpx
set firewall filter protocol-outbound-marking term snmpx then forwarding-class interactive
set firewall filter protocol-outbound-marking term snmpx then accept
set firewall filter protocol-outbound-marking term snmpx then dscp af41
set firewall filter protocol-outbound-marking term snmp from protocol udp
set firewall filter protocol-outbound-marking term snmp from port snmp
set firewall filter protocol-outbound-marking term snmp then count snmp
set firewall filter protocol-outbound-marking term snmp then forwarding-class best-effort
set firewall filter protocol-outbound-marking term snmp then accept
set firewall filter protocol-outbound-marking term snmp then dscp be
set firewall filter protocol-outbound-marking term syslog from protocol udp
set firewall filter protocol-outbound-marking term syslog from port 514
set firewall filter protocol-outbound-marking term syslog then count syslog
set firewall filter protocol-outbound-marking term syslog then forwarding-class best-effort
set firewall filter protocol-outbound-marking term syslog then accept
set firewall filter protocol-outbound-marking term syslog then dscp be
set firewall filter protocol-outbound-marking term rest then count rest
set firewall filter protocol-outbound-marking term rest then accept
set firewall filter srch-scavenger-mfc term ITE-INPUT-SRC-DDOS-V4 from source-prefix-list ITE-INPUT-SRC-DDOS-V4
set firewall filter srch-scavenger-mfc term ITE-INPUT-SRC-DDOS-V4 then count ITE-INPUT-SRC-DDOS-V4
set firewall filter srch-scavenger-mfc term ITE-INPUT-SRC-DDOS-V4 then forwarding-class scavenger
set firewall filter srch-scavenger-mfc term ITE-INPUT-SRC-DDOS-V4 then next term
set firewall filter srch-scavenger-mfc term ITE-INPUT-DST-DDOS-V4 from destination-prefix-list ITE-INPUT-DST-DDOS-V4
set firewall filter srch-scavenger-mfc term ITE-INPUT-DST-DDOS-V4 then count ITE-INPUT-DST-DDOS-V4
set firewall filter srch-scavenger-mfc term ITE-INPUT-DST-DDOS-V4 then forwarding-class scavenger
set firewall filter srch-scavenger-mfc term ITE-INPUT-DST-DDOS-V4 then next term
set firewall filter srch-scavenger-mfc term af41 from dscp af41
set firewall filter srch-scavenger-mfc term af41 then count af41
set firewall filter srch-scavenger-mfc term af41 then sample
set firewall filter srch-scavenger-mfc term af41 then forwarding-class interactive
set firewall filter srch-scavenger-mfc term af41 then accept
set firewall filter srch-scavenger-mfc term af31 from dscp af31
set firewall filter srch-scavenger-mfc term af31 then count af31
set firewall filter srch-scavenger-mfc term af31 then sample
set firewall filter srch-scavenger-mfc term af31 then forwarding-class best-effort
set firewall filter srch-scavenger-mfc term af31 then accept
set firewall filter srch-scavenger-mfc term cs1 from dscp cs1
set firewall filter srch-scavenger-mfc term cs1 then count cs1
set firewall filter srch-scavenger-mfc term cs1 then sample
set firewall filter srch-scavenger-mfc term cs1 then forwarding-class scavenger
set firewall filter srch-scavenger-mfc term cs1 then accept
set firewall filter srch-scavenger-mfc term WINDOWS-UPDATE from source-prefix-list prefix-windows-update
set firewall filter srch-scavenger-mfc term WINDOWS-UPDATE then count WINDOWS-UPDATE
set firewall filter srch-scavenger-mfc term WINDOWS-UPDATE then sample
set firewall filter srch-scavenger-mfc term WINDOWS-UPDATE then forwarding-class scavenger
set firewall filter srch-scavenger-mfc term WINDOWS-UPDATE then accept
set firewall filter srch-scavenger-mfc term ITEpremium from source-prefix-list ITEpremium
set firewall filter srch-scavenger-mfc term ITEpremium then count ITEpremium
set firewall filter srch-scavenger-mfc term ITEpremium then sample
set firewall filter srch-scavenger-mfc term ITEpremium then forwarding-class best-effort
set firewall filter srch-scavenger-mfc term ITEpremium then routing-instance ITEpremium
set firewall filter srch-scavenger-mfc term CEDEXIS from source-address 204.79.197.253/32
set firewall filter srch-scavenger-mfc term CEDEXIS then count CEDEXIS
set firewall filter srch-scavenger-mfc term CEDEXIS then sample
set firewall filter srch-scavenger-mfc term CEDEXIS then routing-instance ITEvrf
set firewall filter srch-scavenger-mfc term then_accept then count then_accept
set firewall filter srch-scavenger-mfc term then_accept then sample
set firewall filter srch-scavenger-mfc term then_accept then forwarding-class best-effort
set firewall filter srch-scavenger-mfc term then_accept then accept
set routing-instances ITEpremium instance-type vrf
set routing-instances ITEpremium routing-options rib ITEpremium.inet6.0 static route ::/0 next-table inet6.0
set routing-instances ITEpremium routing-options interface-routes rib-group inet global-ITEpremium
set routing-instances ITEpremium routing-options interface-routes rib-group inet6 global-ITEpremium-ipv6
set routing-instances ITEpremium routing-options interface-routes family inet export lan
set routing-instances ITEpremium routing-options interface-routes family inet6 export lan
set routing-instances ITEpremium routing-options static route 0.0.0.0/0 next-table inet.0
set routing-instances ITEpremium route-distinguisher 8075:30000
set routing-instances ITEpremium vrf-import ITEPREMIUM-IMPORT
set routing-instances ITEpremium vrf-export SET-OVERLOAD-LOCAL-PREF
set routing-instances ITEpremium vrf-export ITEPREMIUM-EXPORT
set routing-instances ITEvrf instance-type vrf
set routing-instances ITEvrf routing-options rib ITEvrf.inet6.0 static route ::/0 next-table inet6.0
set routing-instances ITEvrf routing-options interface-routes rib-group inet global-ITEvrf
set routing-instances ITEvrf routing-options interface-routes rib-group inet6 global-ITEvrf-ipv6
set routing-instances ITEvrf routing-options interface-routes family inet export lan
set routing-instances ITEvrf routing-options interface-routes family inet6 export lan
set routing-instances ITEvrf routing-options static route 0.0.0.0/0 next-table inet.0
set routing-instances ITEvrf interface lo0.100
set routing-instances ITEvrf route-distinguisher 8075:20000
set routing-instances ITEvrf vrf-import ITEVRF-IMPORT
set routing-instances ITEvrf vrf-export ITEVRF-EXPORT
set routing-instances tms-l3vrf instance-type vrf
set routing-instances tms-l3vrf routing-options rib tms-l3vrf.inet6.0 static route ::/0 next-table inet6.0
set routing-instances tms-l3vrf routing-options interface-routes rib-group inet global-tmsvrf
set routing-instances tms-l3vrf routing-options interface-routes rib-group inet6 global-tmsvrf-ipv6
set routing-instances tms-l3vrf routing-options interface-routes family inet export lan
set routing-instances tms-l3vrf routing-options interface-routes family inet6 export lan
set routing-instances tms-l3vrf routing-options autonomous-system 8075
set routing-instances tms-l3vrf routing-options static route 0.0.0.0/0 next-table inet.0
set routing-instances tms-l3vrf routing-options multipath
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS type external
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS description "CUST:CIS:Azure DDOS"
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS import DDOS-GEO-IN
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS family inet unicast prefix-limit maximum 4000
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS family inet unicast prefix-limit teardown 90
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS export DENY-ALL
set routing-instances tms-l3vrf protocols bgp group CUST-CIS-BGP-DDOS multipath multiple-as
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS type external
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS description "IPV6:CUST:CIS:Azure DDOS"
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS import DDOS-GEO-IN
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS family inet6 unicast prefix-limit maximum 4000
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS family inet6 unicast prefix-limit teardown 90
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS family inet6 unicast prefix-limit teardown idle-timeout 45
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS export DENY-ALL
set routing-instances tms-l3vrf protocols bgp group IPV6-CUST-CIS-BGP-DDOS multipath multiple-as
set routing-instances tms-l3vrf route-distinguisher 10.3.159.85:10101
set routing-instances tms-l3vrf vrf-import TMS-IMPORT
set routing-instances tms-l3vrf vrf-export SET-OVERLOAD-LOCAL-PREF
set routing-instances tms-l3vrf vrf-export TMS-EXPORT
set routing-options apply-groups default_srlg_cost
set routing-options backup-selection destination 0.0.0.0/0 interface all srlg loose
set routing-options backup-selection destination ::0/0 interface all srlg loose
set routing-options rib inet.3 static route 192.0.2.0/24 discard
set routing-options rib inet.3 static route 207.46.32.255/32 discard
set routing-options rib inet6.0 static route 100::/64 discard
set routing-options rib inet6.0 static route 2001:506:28:9000:ffff:ffff:ffff:ffff/128 discard
set routing-options options syslog upto info
set routing-options interface-routes rib-group inet global-ITEvrf
set routing-options interface-routes rib-group inet6 global-ITEvrf-ipv6
set routing-options router-id 10.3.159.85
set routing-options autonomous-system 8075
set routing-options bmp station ITE-BMP local-address 10.3.159.85
set routing-options bmp station ITE-BMP connection-mode active
set routing-options bmp station ITE-BMP monitor enable
set routing-options bmp station ITE-BMP route-monitoring pre-policy
set routing-options bmp station ITE-BMP route-monitoring post-policy
set routing-options bmp station ITE-BMP station-address 25.71.41.207
set routing-options bmp station ITE-BMP station-port 5555
set routing-options static route 0.0.0.0/0 next-hop 10.3.151.1
set routing-options static route 100.83.0.0/24 next-hop 10.3.151.1
set routing-options martians 128.0.0.0/16 orlonger allow
set routing-options martians 191.255.0.0/16 orlonger allow
set routing-options martians 223.255.255.0/24 orlonger allow
set routing-options rib-groups global-ITEvrf import-rib inet.0
set routing-options rib-groups global-ITEvrf import-rib ITEvrf.inet.0
set routing-options rib-groups global-ITEvrf-ipv6 import-rib inet6.0
set routing-options rib-groups global-ITEvrf-ipv6 import-rib ITEvrf.inet6.0
set routing-options rib-groups global-tmsvrf import-rib inet.0
set routing-options rib-groups global-tmsvrf import-rib tms-l3vrf.inet.0
set routing-options rib-groups global-tmsvrf-ipv6 import-rib inet6.0
set routing-options rib-groups global-tmsvrf-ipv6 import-rib tms-l3vrf.inet6.0
set routing-options rib-groups global-ITEpremium import-rib inet.0
set routing-options rib-groups global-ITEpremium import-rib ITEpremium.inet.0
set routing-options rib-groups global-ITEpremium import-policy COPY-TO-PREMIUM-VRF
set routing-options rib-groups global-ITEpremium-ipv6 import-rib inet6.0
set routing-options rib-groups global-ITEpremium-ipv6 import-rib ITEpremium.inet6.0
set routing-options rib-groups global-ITEpremium-ipv6 import-policy COPY-TO-PREMIUM-VRF
set routing-options srlg BIO70-RBA30_INWI srlg-value 101701
set routing-options srlg MRS20-RBA30_INWI srlg-value 101702
set routing-options srlg AAG srlg-value 345
set routing-options srlg AJC srlg-value 347
set routing-options srlg C2C srlg-value 357
set routing-options srlg RNAL srlg-value 374
set routing-options srlg AMB-AMS srlg-value 100253
set routing-options srlg BAY-BY4 srlg-value 100303
set routing-options srlg BL20-WAS05 srlg-value 100313
set routing-options srlg BL7-WAS02 srlg-value 100321
set routing-options srlg BOM02-BOM03 srlg-value 100330
set routing-options srlg BOM02-DEL01_PROTECTED srlg-value 100331
set routing-options srlg BOM02-MAA02 srlg-value 100332
set routing-options srlg EIG srlg-value 100338
set routing-options srlg BOM1-BOM03 srlg-value 100340
set routing-options srlg BOS01-CH1 srlg-value 100345
set routing-options srlg BOS01-NYC srlg-value 100346
set routing-options srlg BUD01-BUH01_COLT srlg-value 100348
set routing-options srlg CH1-CH2 srlg-value 100364
set routing-options srlg CH1-CH4_EAST srlg-value 100366
set routing-options srlg CH1-CHG srlg-value 100367
set routing-options srlg COS01-DEN02_CENTURYLINK_PATH1 srlg-value 100377
set routing-options srlg DAL-DFW04 srlg-value 100393
set routing-options srlg DBB-DUB07 srlg-value 100406
set routing-options srlg DBB-DUB08 srlg-value 100407
set routing-options srlg DBB-DUB30 srlg-value 100408
set routing-options srlg DEL01-MAA02 srlg-value 100411
set routing-options srlg DEN01-DEN02 srlg-value 100412
set routing-options srlg DEN02-TUL04_CENTURYLINK srlg-value 100414
set routing-options srlg DUB07-DUB30 srlg-value 100426
set routing-options srlg DUB08-DUB30 srlg-value 100428
set routing-options srlg HEL01-HEL02_ELISA_YH3101718 srlg-value 100457
set routing-options srlg HEL01-HEL03_ELISA_YH3101711 srlg-value 100458
set routing-options srlg HEL02-HEL03_ELISA_YH3101719 srlg-value 100459
set routing-options srlg HK2-HKG20 srlg-value 100464
set routing-options srlg HK2-HKG31 srlg-value 100465
set routing-options srlg HKB-HKG20 srlg-value 100468
set routing-options srlg HKB-HKG31 srlg-value 100469
set routing-options srlg HKG-MNL30 srlg-value 100477
set routing-options srlg HKN-HKG20 srlg-value 100485
set routing-options srlg HKN-HKG31 srlg-value 100486
set routing-options srlg KUL01-KUL30 srlg-value 100498
set routing-options srlg LIS01-MAD30 srlg-value 100507
set routing-options srlg LON04-LON21_COLT srlg-value 100509
set routing-options srlg LON21-LTS srlg-value 100513
set routing-options srlg MAA02-0MAA30 srlg-value 100519
set routing-options srlg NYC-NYC30 srlg-value 100545
set routing-options srlg NYC-YMQ01 srlg-value 100546
set routing-options srlg OSA01-0SA20 srlg-value 100547
set routing-options srlg OSA01-OSA02_EAST srlg-value 100548
set routing-options srlg OSA01-OSA30_EAST srlg-value 100549
set routing-options srlg OSA01-OSA31 srlg-value 100550
set routing-options srlg OSA02-OSA20 srlg-value 100553
set routing-options srlg OSA02-OSA30 srlg-value 100554
set routing-options srlg OSA02-OSA31 srlg-value 100555
set routing-options srlg OSA20-OSA31 srlg-value 100556
set routing-options srlg PAR02-PAR21 srlg-value 100557
set routing-options srlg PAR02-PAR30 srlg-value 100558
set routing-options srlg PAR21-PAR30 srlg-value 100560
set routing-options srlg PRA-PAR21 srlg-value 100563
set routing-options srlg PRA-PAR30_CAMPUS srlg-value 100564
set routing-options srlg PUS01-PUS03_TERRESTRIAL_KT srlg-value 100569
set routing-options srlg RIO01-RIO02 srlg-value 100576
set routing-options srlg RIO02-RIO03_CENTURYLINK_PROTECT_1 srlg-value 100578
set routing-options srlg SAO03-SCL01 srlg-value 100581
set routing-options srlg SCO01-SCL30 srlg-value 100582
set routing-options srlg SG2-SG3 srlg-value 100583
set routing-options srlg SG2-SGE srlg-value 100584
set routing-options srlg SG3-SGE_EAST srlg-value 100586
set routing-options srlg SIN-SG2 srlg-value 100590
set routing-options srlg SIN-SG3 srlg-value 100591
set routing-options srlg SN1-SN4_CAMPUS srlg-value 100597
set routing-options srlg SN2-SN4 srlg-value 100599
set routing-options srlg STB-SEA_CAMPUS srlg-value 100601
set routing-options srlg SYD03-SYD23 srlg-value 100603
set routing-options srlg SYD-SYD03 srlg-value 100604
set routing-options srlg SYD-SYD23 srlg-value 100605
set routing-options srlg TEP30-TEP31 srlg-value 100606
set routing-options srlg TYA-TYO01 srlg-value 100610
set routing-options srlg TYO01-TYO30_EAST srlg-value 100616
set routing-options srlg TYO01-TYO31_EAST srlg-value 100617
set routing-options srlg YTO01-YTO20 srlg-value 100629
set routing-options srlg AAG-BKK-T-SGE srlg-value 100637
set routing-options srlg LAX-SBP srlg-value 100640
set routing-options srlg ATB-ATL05_CENTURYLINK srlg-value 100644
set routing-options srlg BKK30-BKK-T srlg-value 100645
set routing-options srlg CO-MWH-EAST srlg-value 100655
set routing-options srlg CO-MWH-WEST srlg-value 100656
set routing-options srlg COS01-DEN02_CENTURYLINK_PATH2 srlg-value 100657
set routing-options srlg CYS01-CYS04_CAMPUS_EAST srlg-value 100661
set routing-options srlg CYS01-CYS04_CAMPUS_WEST srlg-value 100662
set routing-options srlg DB3-DUB07_CAMPUS_EAST srlg-value 100663
set routing-options srlg DB3-DUB07_CAMPUS_WEST srlg-value 100664
set routing-options srlg HKG20-HKG31_SOUTH srlg-value 100668
set routing-options srlg ME01-MEL20-SOUTH srlg-value 100670
set routing-options srlg MRS20-MRS01_EAST_MSFT srlg-value 100671
set routing-options srlg MRS20-MRS01_WEST_MSFT srlg-value 100672
set routing-options srlg NYC-NYC30-NORTH srlg-value 100673
set routing-options srlg SG2-SG3_SOUTH srlg-value 100682
set routing-options srlg SYD03-SYD23_NORTH srlg-value 100684
set routing-options srlg YTO20-YTO30-EAST srlg-value 100698
set routing-options srlg YTO01-YTO30 srlg-value 100700
set routing-options srlg BIO70-PAR30 srlg-value 100707
set routing-options srlg DBA-DUB07-1 srlg-value 100721
set routing-options srlg DBA-DUB08-1 srlg-value 100722
set routing-options srlg FRA30-FRA21-1 srlg-value 100727
set routing-options srlg FRA30-FRA21-2 srlg-value 100728
set routing-options srlg LON32-LON22-1 srlg-value 100729
set routing-options srlg LON32-LON24-1 srlg-value 100730
set routing-options srlg BAY-BY21 srlg-value 100735
set routing-options srlg BL2-BL20_EAST_MSFT srlg-value 100738
set routing-options srlg BL2-BL7_CAMPUS srlg-value 100739
set routing-options srlg BL4-BL20_EAST_MSFT srlg-value 100740
set routing-options srlg BL4-BL7_CENTURYLINK srlg-value 100741
set routing-options srlg BN1-BN6_CAMPUS_EAST srlg-value 100742
set routing-options srlg BN1-BN6_CAMPUS_WEST srlg-value 100743
set routing-options srlg CPT02-CPT20-EAST srlg-value 100745
set routing-options srlg CPT02-CPT20-WEST srlg-value 100746
set routing-options srlg DAL-DFW05_CAMPUS srlg-value 100748
set routing-options srlg FRA-FRA30-1 srlg-value 100753
set routing-options srlg FRA-FRA30-2 srlg-value 100754
set routing-options srlg HKG20-HKG30 srlg-value 100755
set routing-options srlg HKG30-HKG31 srlg-value 100756
set routing-options srlg JNB20-JNB02_CAMPUS srlg-value 100757
set routing-options srlg KUL01-KUL02-TM srlg-value 100760
set routing-options srlg KUL01-KUL30-TM srlg-value 100761
set routing-options srlg KUL02-KUL30-TM srlg-value 100762
set routing-options srlg LON22-LON30 srlg-value 100763
set routing-options srlg MAA02-MAA30-AIRTEL srlg-value 100765
set routing-options srlg MEL01-MEL20-NORTH srlg-value 100767
set routing-options srlg MEL01-MEL20-SOUTH srlg-value 100768
set routing-options srlg OSA20-OSA30-NORTH srlg-value 100769
set routing-options srlg OSA30-OSA31-NORTH srlg-value 100770
set routing-options srlg SEL20-SLA-NORTH srlg-value 100773
set routing-options srlg SEL20-SLA-SOUTH srlg-value 100774
set routing-options srlg SEL21-SLA-NORTH srlg-value 100775
set routing-options srlg SEL21-SLA-SOUTH srlg-value 100776
set routing-options srlg TYA-TYO30_EAST srlg-value 100778
set routing-options srlg TYA-TYO31_EAST srlg-value 100779
set routing-options srlg TYB-TYO30_EAST srlg-value 100780
set routing-options srlg TYB-TYO31_EAST srlg-value 100781
set routing-options srlg YTO02-YTO20 srlg-value 100782
set routing-options srlg LON22-LTS srlg-value 100797
set routing-options srlg LON24-LTS srlg-value 100798
set routing-options srlg TYO-TYO79 srlg-value 100806
set routing-options srlg TYO02-TYO30_CAMPUS srlg-value 100809
set routing-options srlg TYO02-TYO31_NORTH srlg-value 100810
set routing-options srlg LON04-LON22_CAMPUS_WEST srlg-value 100811
set routing-options srlg BL31-BL7 srlg-value 100814
set routing-options srlg BL31-BL20 srlg-value 100815
set routing-options srlg AMB-AMS21 srlg-value 100816
set routing-options srlg AMB-AMS30 srlg-value 100817
set routing-options srlg AMS-AMS30 srlg-value 100818
set routing-options srlg AMS-AMS21 srlg-value 100819
set routing-options srlg AMS06-AMS30-1-MSFT srlg-value 100820
set routing-options srlg AMS06-AMS30-2-MSFT srlg-value 100821
set routing-options srlg AMS06-AMS21-1-MSFT srlg-value 100822
set routing-options srlg AMS06-AMS21-2-MSFT srlg-value 100823
set routing-options srlg ASH-BL7_CAMPUS srlg-value 100824
set routing-options srlg ASH-BL20 srlg-value 100825
set routing-options srlg ATB-ATL30_CAMPUS srlg-value 100827
set routing-options srlg DXB30-DXB20-1-Etisalat srlg-value 100829
set routing-options srlg DXB30-DXB20-2-Etisalat srlg-value 100830
set routing-options srlg BLU-BL7_WEST_MSFT srlg-value 100831
set routing-options srlg BLU-BL20_EAST_MSFT srlg-value 100832
set routing-options srlg BL3-BL7_CAMPUS srlg-value 100833
set routing-options srlg BL3-BL20-MSFT srlg-value 100834
set routing-options srlg AM3-AMS21-MSFT srlg-value 100836
set routing-options srlg AM3-AMS30-MSFT srlg-value 100837
set routing-options srlg DXB30-DXB20-DU srlg-value 100840
set routing-options srlg BOM02-BOM30-AIRTEL-1 srlg-value 100841
set routing-options srlg BOM02-BOM30-AIRTEL-2 srlg-value 100842
set routing-options srlg BOM02-BOM01-TATA-1 srlg-value 100843
set routing-options srlg BOM02-BOM01-TATA-2 srlg-value 100844
set routing-options srlg BOM30-BOM01-AIRTEL-1 srlg-value 100845
set routing-options srlg BOM30-BOM01-AIRTEL-2 srlg-value 100846
set routing-options srlg MAA02-MAA30-AIRTEL-2 srlg-value 100848
set routing-options srlg MAA02-MAA30-PowerGrid-1 srlg-value 100851
set routing-options srlg CBR21-SYD03_OPTUS_01 srlg-value 100853
set routing-options srlg AKL01-SYD03_SX srlg-value 100854
set routing-options srlg MEL01-PER01_AAPT_01 srlg-value 100855
set routing-options srlg BNE01-SYD03_VOCUS_01 srlg-value 100856
set routing-options srlg MEL01-SYD03_AAPT_01 srlg-value 100858
set routing-options srlg MEL20-SYD23_VOCUS_2 srlg-value 100859
set routing-options srlg MEL20-PER30_TELSTRA_01 srlg-value 100860
set routing-options srlg MEL01-SYD03_TELSTRA_01 srlg-value 100861
set routing-options srlg MEL20-SYD23_VOCUS_1 srlg-value 100862
set routing-options srlg BNE01-SYD23_VOCUS_01 srlg-value 100865
set routing-options srlg PER01-SG3_ASC srlg-value 100866
set routing-options srlg DM2-DSM05_WEST srlg-value 100867
set routing-options srlg DM3-DSM05_WEST srlg-value 100868
set routing-options srlg ZRH-ZRH20_EAST srlg-value 100871
set routing-options srlg ZRH-ZRH20_WEST srlg-value 100872
set routing-options srlg MAA01-MAA02-TCL-1 srlg-value 100874
set routing-options srlg MAA01-MAA02-TCL-2 srlg-value 100875
set routing-options srlg MAA01-MAA30-Powergrid-1 srlg-value 100880
set routing-options srlg MAA01-MAA30-Powergrid-2 srlg-value 100881
set routing-options srlg PDX30-PDX31_MSFT_01 srlg-value 100889
set routing-options srlg PDX30-PDX31_MSFT_02 srlg-value 100890
set routing-options srlg HKG31-TYO79_SJC srlg-value 100891
set routing-options srlg JNB20-MRS20_EASSY_EIG srlg-value 100898
set routing-options srlg FRA-FRA21_WEST srlg-value 100901
set routing-options srlg SG2-TYO79_SJC srlg-value 100906
set routing-options srlg CWL20-LON24_SSE_PATH3 srlg-value 100910
set routing-options srlg CH3-CH4_CAMPUS_EAST srlg-value 100913
set routing-options srlg CHG-CH4-CENTURYLINK srlg-value 100914
set routing-options srlg CHG-CH2-CENTURYLINK srlg-value 100915
set routing-options srlg BER20-FRA21_EUNETWORKS_WEST srlg-value 100917
set routing-options srlg BER20-FRA30_EUNETWORKS_EAST srlg-value 100918
set routing-options srlg BER20-BER30_MSFT_BULK_EAST_PATH1 srlg-value 100923
set routing-options srlg BER20-BER30_MSFT_BULK_WEST_PATH1 srlg-value 100924
set routing-options srlg AMS30-AMS31_RTM05 srlg-value 100926
set routing-options srlg AMS21-AMS31_RTM06 srlg-value 100927
set routing-options srlg LON04-LON24_LHR50 srlg-value 100928
set routing-options srlg AMS21-FRA30_EUNETWORKS srlg-value 100929
set routing-options srlg ATL30-ATL31_FTY01 srlg-value 100932
set routing-options srlg ATL30-ATL31_FTY02 srlg-value 100933
set routing-options srlg BOM02-PAR21_MENA srlg-value 100936
set routing-options srlg CPQ01-CPQ02_SHT016 srlg-value 100937
set routing-options srlg CPQ01-CPQ20_SHT006 srlg-value 100938
set routing-options srlg CPQ02-CPQ20_SHT001 srlg-value 100939
set routing-options srlg CPQ02-CPQ20_SHT004 srlg-value 100940
set routing-options srlg CPQ02-CPQ20_SHT021 srlg-value 100941
set routing-options srlg CPQ02-CPQ70_SLS446 srlg-value 100942
set routing-options srlg CPQ02-SOD70_SLS444 srlg-value 100943
set routing-options srlg CPQ20-CPQ70_SLS447 srlg-value 100944
set routing-options srlg CPQ20-CPQ71_SLS442 srlg-value 100945
set routing-options srlg CPQ20-SAO70_SLS450 srlg-value 100946
set routing-options srlg CPQ70-SAO71_SLS446 srlg-value 100947
set routing-options srlg CPQ70-SAO71_SLS447 srlg-value 100948
set routing-options srlg CPQ71-SAO01_SLS442 srlg-value 100949
set routing-options srlg CYS04-CYS09 srlg-value 100950
set routing-options srlg CYS09-DEN70-DEN01 srlg-value 100951
set routing-options srlg DEN01-DSM05_OPSPAN srlg-value 100952
set routing-options srlg GRU30-SAO01_SLS452 srlg-value 100953
set routing-options srlg GRU30-SAO30_SHT040 srlg-value 100954
set routing-options srlg GRU30-SAO30_SHT041 srlg-value 100955
set routing-options srlg GRU30-SAO70_SLS450 srlg-value 100956
set routing-options srlg GRU30-SOD70_SLS449 srlg-value 100957
set routing-options srlg HKG31-KUL01_APCN2 srlg-value 100958
set routing-options srlg HKG31-SJCA02_SJC srlg-value 100959
set routing-options srlg LON20-LON22_COLT_PATH1 srlg-value 100962
set routing-options srlg PDX30-PDX31 srlg-value 100964
set routing-options srlg SAO01-SAO30_SLS442 srlg-value 100965
set routing-options srlg SAO30-SAO71_SLS446 srlg-value 100966
set routing-options srlg SAO30-SAO71_SLS447 srlg-value 100967
set routing-options srlg SAO30-SOD70_SLS444 srlg-value 100968
set routing-options srlg SEL21-TYO30_EAC srlg-value 100969
set routing-options srlg SJCA02-TYO79_SJC srlg-value 100971
set routing-options srlg SN1-SN6_NORTH_EAST srlg-value 100972
set routing-options srlg SN1-SN6_SOUTH_WEST srlg-value 100973
set routing-options srlg YMQ01-YTO30_BELLCANADA_01 srlg-value 100974
set routing-options srlg PER30-PER01_VOCUS srlg-value 100977
set routing-options srlg PER30-PER01_OPTUS_SRVCKT00001211 srlg-value 100978
set routing-options srlg AMS04-AMS21_MSFT srlg-value 100979
set routing-options srlg AMS04-AMS30_MSFT srlg-value 100980
set routing-options srlg CYS04-DEN02_OPSPAN srlg-value 100982
set routing-options srlg DEN02-FTW01_OPSPAN srlg-value 100983
set routing-options srlg FTW01-SN2_OPSPAN srlg-value 100984
set routing-options srlg CH2-CVG01_MSFT srlg-value 100985
set routing-options srlg CAK02-CVG01_OPSPAN srlg-value 100986
set routing-options srlg CAK02-CLE02 srlg-value 100987
set routing-options srlg CAK02-WAS02_OPSPAN srlg-value 100988
set routing-options srlg CLE30-EWR30_OPSPAN srlg-value 100989
set routing-options srlg BN6-LYH02-LYH01 srlg-value 100990
set routing-options srlg LYH01-WAS05_OPSPAN srlg-value 100991
set routing-options srlg BER20-OSL20_EUNETWORKS_EAST srlg-value 100992
set routing-options srlg PUS20-PUS03-KT-1 srlg-value 100998
set routing-options srlg PUS20-PUS03-KT-2 srlg-value 100999
set routing-options srlg BOG30-MIA_GLOBNET srlg-value 101000
set routing-options srlg BOG30-MIA_UFINET srlg-value 101001
set routing-options srlg WAW01-BER20_PATH2 srlg-value 101002
set routing-options srlg CPT20-LOS30-WIOCC srlg-value 101009
set routing-options srlg LON22-LOS30-WIOCC srlg-value 101010
set routing-options srlg HKG30-HK20-WEST srlg-value 101011
set routing-options srlg HKG30-HK20-VHK65-WEST srlg-value 101012
set routing-options srlg HKG30-HKG31_EAST srlg-value 101013
set routing-options srlg SGN30-HKG20_APG srlg-value 101015
set routing-options srlg SGN30-SG3_IA srlg-value 101016
set routing-options srlg DNA-CYS04 srlg-value 101019
set routing-options srlg DNA-SN6 srlg-value 101020
set routing-options srlg MUC30-FRA30_COLT srlg-value 101021
set routing-options srlg MUC30-BER20_COLT srlg-value 101022
set routing-options srlg SEL20-TYO79_TPE srlg-value 101024
set routing-options srlg JKT30-SG2_Telin srlg-value 101025
set routing-options srlg JKT30-SG3_Telin srlg-value 101026
set routing-options srlg BOM30-PNQ01_POWERGRID_01 srlg-value 101027
set routing-options srlg CPT20-LOS30_WACS_PATH1 srlg-value 101028
set routing-options srlg AMB-LTS_PATH1 srlg-value 101029
set routing-options srlg GVA20-PAR21_PATH1 srlg-value 101033
set routing-options srlg GUM01-HKG31_TGNP_TGNIA srlg-value 101035
set routing-options srlg ATL30-HOU02_OPSPAN srlg-value 101037
set routing-options srlg BER20-OSL20_EUNETWORKS_EAST_PATH1 srlg-value 101038
set routing-options srlg MIL30-MRS20_EUNETWORKS_WEST_PATH1 srlg-value 101043
set routing-options srlg SIN-SLA_EAC srlg-value 101044
set routing-options srlg MRS20-JNB02_WIOCC_PATH1 srlg-value 101045
set routing-options srlg HKG31-OSA31_APG srlg-value 101046
set routing-options srlg CYS04-MWH01_ZAYO srlg-value 101047
set routing-options srlg EWR30-NYC30 srlg-value 101048
set routing-options srlg EWR30-SXL71_AEC srlg-value 101049
set routing-options srlg BOM02-MAA02_POWERGRID_01_02_PROTECTED srlg-value 101050
set routing-options srlg MIA-SN1_01 srlg-value 101052
set routing-options srlg FRA30-PAR21_EUNETWORKS_PATH1 srlg-value 101053
set routing-options srlg BOM02-PNQ01_TATA_01 srlg-value 101054
set routing-options srlg NYC30-PR1_CWC srlg-value 101055
set routing-options srlg PUS20-SLA_01_02_TERRESTRIAL srlg-value 101056
set routing-options srlg CPT20-JNB21_LIQUID_PATH1 srlg-value 101057
set routing-options srlg AMB-BER30_EUNETWORKS_PATH1 srlg-value 101059
set routing-options srlg BOM30-MAA30_TATA_01_02_PROTECTED srlg-value 101060
set routing-options srlg BNA01-DFW05_MSFT srlg-value 101061
set routing-options srlg SEL21-TYO30_RNAL srlg-value 101062
set routing-options srlg BAY-SFO70-SAC03-SAC04 srlg-value 101063
set routing-options srlg CLT02-DAN02_OPSPAN srlg-value 101065
set routing-options srlg SG2-SJC02_SJC srlg-value 101067
set routing-options srlg HKG31-SG2_SJC srlg-value 101069
set routing-options srlg GRU-SCL01_TELEFONICA srlg-value 101070
set routing-options srlg AMS-AMS06 srlg-value 101071
set routing-options srlg AMS21-PAR21_EUNETWORKS_PATH1 srlg-value 101073
set routing-options srlg CWL20-LON22_CENTURYLINK_PATH2 srlg-value 101074
set routing-options srlg BOM02-MRS20_FALCON_HAWK srlg-value 101075
set routing-options srlg DXB20-MRS20_SMW4 srlg-value 101076
set routing-options srlg MEX30-SN6_TRANSTELCO_01 srlg-value 101078
set routing-options srlg AMS21-BRU30_EUNETWORKS_PATH1 srlg-value 101080
set routing-options srlg EWR30-GRU30_SEABRAS srlg-value 101081
set routing-options srlg PUS30-SG3_APG srlg-value 101082
set routing-options srlg LIS01-LON22_PATH1 srlg-value 101084
set routing-options srlg MIA-PR1_CWC_PATH1 srlg-value 101085
set routing-options srlg HKG_MNL30_AAG srlg-value 101088
set routing-options srlg VIE-ZAG30_PATH1 srlg-value 101089
set routing-options srlg CPQ02-GRU30_02 srlg-value 101090
set routing-options srlg AKL30-SYD03_SX srlg-value 101091
set routing-options srlg PAR21-VIE_INTEROUTE_PATH1 srlg-value 101092
set routing-options srlg CH2-DSM05_ZAYO srlg-value 101093
set routing-options srlg GUM01-TYO30_AJC srlg-value 101094
set routing-options srlg HKG-KUL02_APCN2 srlg-value 101097
set routing-options srlg ATB-PR1_CWC srlg-value 101098
set routing-options srlg CYS04-LAR01 srlg-value 101099
set routing-options srlg HKG20-KUL30_AAG srlg-value 101100
set routing-options srlg GUM01-HKG_AAG srlg-value 101101
set routing-options srlg DFW05-HOU02_MSFT srlg-value 101102
set routing-options srlg LON22-SVG20_WEST_PATH1 srlg-value 101103
set routing-options srlg BL7-BN6_OPSPAN srlg-value 101104
set routing-options srlg MEX30-SN1_TRANSTELCO_01 srlg-value 101105
set routing-options srlg BOM30-MRS20_EIG srlg-value 101107
set routing-options srlg BOM02-PNQ01_TATA_01_02_PROTECTED srlg-value 101108
set routing-options srlg PDX30-TYO79_NCP srlg-value 101112
set routing-options srlg CH2-CHG srlg-value 101113
set routing-options srlg BY4-HNL01_AAG srlg-value 101114
set routing-options srlg MAA02-SG2 srlg-value 101115
set routing-options srlg JNB21-MRS20_SEACOM_PATH1 srlg-value 101116
set routing-options srlg HEL03-STO_TELIA_PATH2 srlg-value 101117
set routing-options srlg CLE02-YTO20_OPSPAN srlg-value 101118
set routing-options srlg CPQ02-GRU30_01 srlg-value 101119
set routing-options srlg HKG20-SG3_APG srlg-value 101120
set routing-options srlg VIE-ZRH20_COLT_PATH1 srlg-value 101121
set routing-options srlg PDX31-STB_OPSPAN srlg-value 101122
set routing-options srlg OSA31-TYO30_KDDI_TERRESTRIAL srlg-value 101123
set routing-options srlg HKG20-TPE31_C2C srlg-value 101124
set routing-options srlg HAM30-STO_EUNETWORKS srlg-value 101125
set routing-options srlg LON22-LOS30_WACS_PATH1 srlg-value 101129
set routing-options srlg FRA-SOF01_PATH2 srlg-value 101130
set routing-options srlg MAA30-SG3_I2I srlg-value 101132
set routing-options srlg CPH30-STO_LEVEL3_PATH1 srlg-value 101133
set routing-options srlg AMS-DUB30_GTT_PATH1 srlg-value 101134
set routing-options srlg ATL30-BNA01_OPSPAN srlg-value 101135
set routing-options srlg SEA02-STB srlg-value 101136
set routing-options srlg PUS03-SG3_APCN2_TPE srlg-value 101138
set routing-options srlg ATB-MIA_CENTURYLINK_01 srlg-value 101139
set routing-options srlg AUH20-BOM30_ETISALAT_BBG srlg-value 101140
set routing-options srlg FOR01-RIO03_CENTURYLINK_01 srlg-value 101141
set routing-options srlg BCN30-MAD30_EUNETWORKS_PATH2 srlg-value 101142
set routing-options srlg BOM02-SG3_SMW4 srlg-value 101143
set routing-options srlg BNA01-CVG01_OPSPAN srlg-value 101145
set routing-options srlg AUH20-MRS20_ETISALAT_SMW4 srlg-value 101147
set routing-options srlg AUH20-DXB20_ETISALAT_PATH2 srlg-value 101149
set routing-options srlg BUD01-VIE_PATH1 srlg-value 101151
set routing-options srlg AMS21-LON24_TANGERINE_COLT_PATH1 srlg-value 101152
set routing-options srlg BOM02-PAR21_IMEWE srlg-value 101155
set routing-options srlg AMB-PAR30_TELIA_PATH1 srlg-value 101156
set routing-options srlg BN6-DAN03-DAN02 srlg-value 101157
set routing-options srlg MRS20-ZRH20_COLT_PATH1 srlg-value 101159
set routing-options srlg SJC02-TYO79_SJC srlg-value 101162
set routing-options srlg BER20-FRA21_EUNETWORKS_WEST_PATH1 srlg-value 101166
set routing-options srlg BUD01-BUH01_CENTURYLINK srlg-value 101167
set routing-options srlg ATH01-MRS01_TISPARKLE_PATH1 srlg-value 101169
set routing-options srlg GUM01-SYD23_AJC srlg-value 101170
set routing-options srlg CPT02-LON30_WIOCC_PATH1 srlg-value 101171
set routing-options srlg FRA30-HEL02_TELIA_PATH1 srlg-value 101172
set routing-options srlg DUB08-LON24_EIRGRID_NORTH_SLS_304 srlg-value 101179
set routing-options srlg PUS03-SGE_APCN2_TPE srlg-value 101180
set routing-options srlg KUL30-SG2_TERRESTRIAL srlg-value 101181
set routing-options srlg HNL01-SYD03_ENDEAVOUR srlg-value 101183
set routing-options srlg FRA30-PAR30_INTEROUTE_PATH1 srlg-value 101185
set routing-options srlg MWH01-PDX30_OPSPAN srlg-value 101187
set routing-options srlg BER20-HAM30_EUNETWORKS_PATH1 srlg-value 101188
set routing-options srlg HNL01-LAX_AAG srlg-value 101189
set routing-options srlg BIO70-PAR30_OPSPAN srlg-value 101190
set routing-options srlg LAX03-PHX01_OPSPAN srlg-value 101192
set routing-options srlg FRA-MSA_LEVEL3_PATH1 srlg-value 101193
set routing-options srlg FRA-WAW01_PATH1 srlg-value 101194
set routing-options srlg GVA20-ZRH20_UPC_PATH3 srlg-value 101195
set routing-options srlg LIS01-LON04_PATH1 srlg-value 101197
set routing-options srlg MAD30-PAR30_PATH1 srlg-value 101198
set routing-options srlg AUH20-DXB20_ETISALAT_PATH1 srlg-value 101201
set routing-options srlg BUH-SOF01_PATH1 srlg-value 101202
set routing-options srlg GUM01-HKG20_AAG srlg-value 101203
set routing-options srlg HOU02-SN6_OPSPAN srlg-value 101204
set routing-options srlg BY21-OSA20_FASTER srlg-value 101207
set routing-options srlg GUM01-HNL01_AAG srlg-value 101209
set routing-options srlg DAL-TUL04_01 srlg-value 101210
set routing-options srlg BY2-LAX03_OPSPAN srlg-value 101211
set routing-options srlg BOM02-PNQ01_TATA_02 srlg-value 101213
set routing-options srlg PUS03-SEL20_TERRESTRIAL_LGUPLUS srlg-value 101214
set routing-options srlg DNA-LAS01_ZAYO srlg-value 101216
set routing-options srlg AMS-MSA_LEVEL3_PATH1 srlg-value 101217
set routing-options srlg BCN30-MRS20_EUNETWORKS_PATH1 srlg-value 101218
set routing-options srlg MWH01-SEA02_OPSPAN srlg-value 101220
set routing-options srlg FRA30-VIE_INTEROUTE_PATH1 srlg-value 101223
set routing-options srlg DFW05-DSM05_MSFT srlg-value 101225
set routing-options srlg BOM30-PNQ01_POWERGRID_02 srlg-value 101228
set routing-options srlg AMB-CPH30_LEVEL3_PATH1 srlg-value 101229
set routing-options srlg PRG01-VIE_PATH2 srlg-value 101230
set routing-options srlg CPT20-LON22_WIOCC_PATH1 srlg-value 101231
set routing-options srlg CWL20-LON22_CENTURYLINK_PATH1 srlg-value 101232
set routing-options srlg LON04-MME20_PATH1 srlg-value 101235
set routing-options srlg DFW05-DFW01-FTW01 srlg-value 101239
set routing-options srlg GRU30-RIO03_CENTURYLINK_01 srlg-value 101240
set routing-options srlg AKL01-LAX_SX srlg-value 101241
set routing-options srlg AMS21-BRU30_PATH1 srlg-value 101242
set routing-options srlg PHX01-SN4_OPSPAN srlg-value 101244
set routing-options srlg BIO70-ORF70_MAREA_SLS_901 srlg-value 101246
set routing-options srlg LAX-SCL01_CENTURYLINK_LAN srlg-value 101248
set routing-options srlg FRA21-ZRH20_EUNETWORKS_PATH1 srlg-value 101249
set routing-options srlg DAL-MEX30_TRANSTELCO_01 srlg-value 101251
set routing-options srlg GVA20-ZRH20_UPC_PATH2 srlg-value 101252
set routing-options srlg YMQ01-YQB20_BELLCANADA_01 srlg-value 101253
set routing-options srlg BOM30-DXB20_DU_EIG srlg-value 101254
set routing-options srlg MIA-SAO30_TELXIUS_TIWC srlg-value 101255
set routing-options srlg LON04-MAN30_GTT_HIBERNIA_PATH1 srlg-value 101258
set routing-options srlg MRS20-ZRH_PATH1 srlg-value 101259
set routing-options srlg FRA30-ZRH_LEVEL3_PATH1 srlg-value 101262
set routing-options srlg BUD01-ZAG30_PATH2 srlg-value 101263
set routing-options srlg AMS21-SVG20_EAST_PATH1 srlg-value 101265
set routing-options srlg SEL21-SG2_APCN2_TPE srlg-value 101267
set routing-options srlg ATH01-SOF01_TISPARKLE_PATH1 srlg-value 101268
set routing-options srlg WST-YVR01_SHAW_01 srlg-value 101273
set routing-options srlg LIS01-MAD30_PATH2 srlg-value 101275
set routing-options srlg BER30-FRA_EUNETWORKS_PATH2 srlg-value 101276
set routing-options srlg ATL30-CLT02_OPSPAN srlg-value 101277
set routing-options srlg FRA-PRG01_PATH1 srlg-value 101279
set routing-options srlg OSA31-SG2_APG srlg-value 101280
set routing-options srlg FOR01-RIO02_TELXIUS_01 srlg-value 101281
set routing-options srlg PDX01-SAC04_OPSPAN srlg-value 101283
set routing-options srlg AMS06-HAM30_EUROFIBER_SLS_301 srlg-value 101284
set routing-options srlg BRU30-PAR21_PATH2 srlg-value 101285
set routing-options srlg FRA30-HAM30_EUNETWORKS_PATH1 srlg-value 101287
set routing-options srlg MWH01-SLC01_OPSPAN srlg-value 101291
set routing-options srlg ATL31-ATL02-PDK03 srlg-value 101292
set routing-options srlg KUL01-SG3_TERRESTRIAL srlg-value 101293
set routing-options srlg LAR01-SLC01_OPSPAN srlg-value 101294
set routing-options srlg LTS-MME20_PATH1 srlg-value 101295
set routing-options srlg MAA02-SG3_TIC srlg-value 101296
set routing-options srlg GVA20-ZRH20_UPC_PATH1 srlg-value 101297
set routing-options srlg CPT20-JNB20_WIOCC_PATH1 srlg-value 101299
set routing-options srlg BER20-FRA30_EUNETWORKS_EAST_PATH1 srlg-value 101300
set routing-options srlg DUB07-LON22_CELTIC_CONNECT_SOUTH_SLS_305 srlg-value 101301
set routing-options srlg BOM30-PNQ01_POWERGRID_01_02_PROTECTED srlg-value 101302
set routing-options srlg DBB-MAN30_GTT_HIBERNIA_PATH1 srlg-value 101305
set routing-options srlg STG30-STG31_IAD106_NORTH srlg-value 101307
set routing-options srlg STG30-STG31_IAD107_SOUTH srlg-value 101308
set routing-options srlg JIB30-MRS20_EIG srlg-value 101310
set routing-options srlg APG srlg-value 101311
set routing-options srlg JNB20-MRS20_EASSY srlg-value 101312
set routing-options srlg YMQ01-YTO20_BELLCANADA_01 srlg-value 101313
set routing-options srlg CWL20-LON22_CENTURYLINK_SOUTH_PATH1 srlg-value 101314
set routing-options srlg HNL01-SBP_AAG srlg-value 101315
set routing-options srlg BER20-HAM30_EUNETWORKS srlg-value 101316
set routing-options srlg OSL20-SVG20_PATH1 srlg-value 101317
set routing-options srlg PDX30-PDX31_SOUTH srlg-value 101318
set routing-options srlg CWL20-LON22_CENTURYLINK_NORTH_PATH2 srlg-value 101319
set routing-options srlg PCCS srlg-value 101320
set routing-options srlg YMQ01-YQB20_BELLCANADA_02 srlg-value 101322
set routing-options srlg HKG-TPE_C2C srlg-value 101323
set routing-options srlg BY4-SBP srlg-value 101324
set routing-options srlg WST-YVR01_SHAW_02 srlg-value 101326
set routing-options srlg BKK-HKG_AAG srlg-value 101327
set routing-options srlg HKG-TPE_APG srlg-value 101328
set routing-options srlg YQM01-YTO02_OPSPAN srlg-value 101329
set routing-options srlg PUS01-SEL20_TERRESTRIAL_KT srlg-value 101330
set routing-options srlg CAK02-CLE30 srlg-value 101331
set routing-options srlg OSA20-TYO31_NTT_TERRESTRIAL srlg-value 101332
set routing-options srlg CBR20-SYD23_OPTUS_TERRESTRIAL srlg-value 101333
set routing-options srlg BOM30-JIB30_EIG srlg-value 101334
set routing-options srlg CYS04-SLC02_OPSPAN srlg-value 101335
set routing-options srlg SAC71-SLC02_OPSPAN srlg-value 101336
set routing-options srlg BY21-SAC71_OPSPAN srlg-value 101337
set routing-options srlg NBO30-JNB20_WIOCC srlg-value 101338
set routing-options srlg PUS20-SEL21_KT_PROTECTED srlg-value 101339
set routing-options srlg BY4-SAC71_OPSPAN srlg-value 101340
set routing-options srlg PUS20-SEL21_LGU srlg-value 101341
set routing-options srlg LON20-LON24_COLT_PATH1 srlg-value 101342
set routing-options srlg SN1-SN2_CAMPUS srlg-value 101343
set routing-options srlg SN1-SN6_ZAYO srlg-value 101344
set routing-options srlg SN3-SN6_ZAYO srlg-value 101345
set routing-options srlg AMS30-FRA21_HYBRID_OLS_EUNETWORKS srlg-value 101346
set routing-options srlg SAO30-SCL01_TELXIUS_01 srlg-value 101347
set routing-options srlg DUB08-SXL71_AEC_SLS_303 srlg-value 101348
set routing-options srlg LON30-NYC30_GTT_EXPRESS srlg-value 101349
set routing-options srlg BOS31-NYC30_OPSPAN srlg-value 101350
set routing-options srlg RIO02-SAO30_TELXIUS_01 srlg-value 101351
set routing-options srlg LON22-PAR30_EUNETWORKS_PATH1 srlg-value 101352
set routing-options srlg MIA-SAO03_TIWC srlg-value 101353
set routing-options srlg EWR30-WAS05_OPSPAN srlg-value 101354
set routing-options srlg YHZ-DUB70-DBB srlg-value 101355
set routing-options srlg DFW01-FTW01 srlg-value 101356
set routing-options srlg YHZ-YMQ01 srlg-value 101357
set routing-options srlg BOS31-YQM01_OPSPAN srlg-value 101358
set routing-options srlg MRS20-PAR21_GTT_EAST srlg-value 101359
set routing-options srlg YMQ01-YTO03_OPSPAN srlg-value 101360
set routing-options srlg AMS21-DUB08_SOUTH_PATH1 srlg-value 101361
set routing-options srlg BN6-RIC73-ORF71-ORF70 srlg-value 101362
set routing-options srlg BL7-STG30_MADISON srlg-value 101363
set routing-options srlg BL7-WAS05 srlg-value 101364
set routing-options srlg GRU30-MIA_SAC srlg-value 101365
set routing-options srlg DUB07-SXL71_AEC_SLS_302 srlg-value 101366
set routing-options srlg MRS20-PAR30_GTT_WEST srlg-value 101367
set routing-options srlg DXB20-JIB30_DU srlg-value 101368
set routing-options srlg HAM30-HEL03_EUNETWORKS srlg-value 101369
set routing-options srlg BL20-STG31_MADISON srlg-value 101370
set routing-options srlg AMS30-DUB07_NORTH_PATH1 srlg-value 101371
set routing-options srlg GVA20-MRS20_PATH1 srlg-value 101372
set routing-options srlg HKG20-TYO31_TGNIA srlg-value 101374
set routing-options srlg OSL20-SVG20_PATH3 srlg-value 101375
set routing-options srlg TGNIA srlg-value 101376
set routing-options srlg OSA20-SG3_TGNIA srlg-value 101377
set routing-options srlg HKG20-OSA20_TGNIA srlg-value 101378
set routing-options srlg PER30-SG2_INDIGO srlg-value 101379
set routing-options srlg SG3-TYO31_TGNIA srlg-value 101380
set routing-options srlg MAA02-SG3_I2I srlg-value 101381
set routing-options srlg OSL20-SVG20_PATH2 srlg-value 101382
set routing-options srlg HKG20-SG3_TGNIA srlg-value 101383
set routing-options srlg SG2-TYO30_C2C_PROTECTED srlg-value 101384
set routing-options srlg GVA20-GVA30_WEST_PATH1 srlg-value 101385
set routing-options srlg GVA20-GVA30_EAST_PATH1 srlg-value 101386
set routing-options srlg RIO03-RIO30_CAMPUS_EAST srlg-value 101387
set routing-options srlg CH2-ENW01 srlg-value 101389
set routing-options srlg OSL30-OSL20_WEST_PATH1 srlg-value 101390
set routing-options srlg HAM30-OSL20_WEST_PATH1 srlg-value 101391
set routing-options srlg RIO20-RIO30_NORTH srlg-value 101392
set routing-options srlg RIO20-RIO30_SOUTH srlg-value 101393
set routing-options srlg RIO01-RIO30 srlg-value 101394
set routing-options srlg RIO01-RIO20 srlg-value 101395
set routing-options srlg OSL30-OSL20_EAST_PATH1 srlg-value 101396
set routing-options srlg CPQ02-CPQ20_SHT002 srlg-value 101397
set routing-options srlg CPQ02-CPQ20_SHT003 srlg-value 101398
set routing-options srlg CPQ01-CPQ20_SHT013 srlg-value 101399
set routing-options srlg CPQ02-CPQ20_SHT023 srlg-value 101400
set routing-options srlg PER30-SYD23_INDIGOCENTRAL srlg-value 101401
set routing-options srlg BY3-BY4_CAMPUS srlg-value 101402
set routing-options srlg BY4-PAO srlg-value 101403
set routing-options srlg BY4-SJC srlg-value 101404
set routing-options srlg BY21-PAO srlg-value 101405
set routing-options srlg BY21-SJC srlg-value 101406
set routing-options srlg BY21-PDX30_OPSPAN srlg-value 101407
set routing-options srlg GRU-GRU30_CAMPUS srlg-value 101408
set routing-options srlg SAO03-SAO30_CAMPUS srlg-value 101409
set routing-options srlg AMS30-DUS30_PATH1 srlg-value 101410
set routing-options srlg DUS30-FRA21_PATH1 srlg-value 101411
set routing-options srlg SG2-SIN30_WEST srlg-value 101412
set routing-options srlg SG3-SIN30_EAST srlg-value 101413
set routing-options srlg TPE30-TYO30_APG srlg-value 101414
set routing-options srlg LON22-MAN30_GTTHIBERNIA_PATH1 srlg-value 101415
set routing-options srlg FRA30-SOF01_COLT srlg-value 101416
set routing-options srlg ATA-ATL30_WEST srlg-value 101417
set routing-options srlg ATA-ATL31_EAST srlg-value 101418
set routing-options srlg SYD03-SYD23_WEST srlg-value 101419
set routing-options srlg SYD03-SYD23_EAST srlg-value 101420
set routing-options srlg FRA30-PRG01_PATH1 srlg-value 101421
set routing-options srlg MIL30-ZRH20_EAST srlg-value 101423
set routing-options srlg TPE31-TYO31_APG srlg-value 101424
set routing-options srlg TPE31-TYO31_NCP srlg-value 101425
set routing-options srlg GRU30-SAO30_ASCENTY srlg-value 101427
set routing-options srlg NCP srlg-value 101428
set routing-options srlg BY21-HNL01_AAG srlg-value 101429
set routing-options srlg CPH30-STO_EUNETWORKS srlg-value 101430
set routing-options srlg CPH30-HAM30_EUNETWORKS srlg-value 101431
set routing-options srlg BY21-BY4_WEST srlg-value 101432
set routing-options srlg HKG20-SEL20_APG srlg-value 101434
set routing-options srlg CLE30-CLE30_CAMPUS srlg-value 101435
set routing-options srlg DUB07-LON22_OPSPAN srlg-value 101436
set routing-options srlg HAM30-HEL01_CINIA_PATH1 srlg-value 101437
set routing-options srlg SG2-SG2_CAMPUS srlg-value 101438
set routing-options srlg CWL20-CWL20_CAMPUS srlg-value 101439
set routing-options srlg NYC30-NYC30_CAMPUS srlg-value 101440
set routing-options srlg SN4-SN6_MSFT srlg-value 101441
set routing-options srlg EWR30-EWR30_CAMPUS srlg-value 101442
set routing-options srlg CH1-CH2_CAMPUS_WEST srlg-value 101443
set routing-options srlg FRA30-PAR30_EU srlg-value 101445
set routing-options srlg HAM30-HAM30_CAMPUS srlg-value 101446
set routing-options srlg DB5-DUB08 srlg-value 101449
set routing-options srlg DUB07-DUB07_CAMPUS srlg-value 101450
set routing-options srlg STG30-STG31_CAMPUS srlg-value 101451
set routing-options srlg CLE02-YTO03_OPSPAN srlg-value 101452
set routing-options srlg EWR30-NYC30_LGA01 srlg-value 101454
set routing-options srlg BL20-BL7_NORTH srlg-value 101455
set routing-options srlg PDX31-PDX31_CAMPUS srlg-value 101459
set routing-options srlg DBB-DUB08_02_02 srlg-value 101461
set routing-options srlg TYO30-TYO30_CAMPUS srlg-value 101462
set routing-options srlg BL20-WAS02 srlg-value 101463
set routing-options srlg SG3-SG3_CAMPUS srlg-value 101464
set routing-options srlg HKG20-HKG31_NORTH srlg-value 101465
set routing-options srlg DBB-DBB_CAMPUS srlg-value 101466
set routing-options srlg BY21-BY4_EAST srlg-value 101468
set routing-options srlg JNB21-JNB21_CAMPUS srlg-value 101469
set routing-options srlg YTO20-YTO30_SOUTH srlg-value 101470
set routing-options srlg AMS-DUB30_HIBERNIA_GTT srlg-value 101471
set routing-options srlg AMB-AMS06 srlg-value 101472
set routing-options srlg WAS02-WAS05 srlg-value 101473
set routing-options srlg BL20-STG30_MADISON srlg-value 101474
set routing-options srlg BER20-FRA21_EUNETWORKS_WEST_PATH2 srlg-value 101477
set routing-options srlg MRS20-MRS20_CAMPUS srlg-value 101479
set routing-options srlg TYO79-TYO79_CAMPUS srlg-value 101480
set routing-options srlg BY21-BY21_CAMPUS srlg-value 101483
set routing-options srlg BER20-BER20_CAMPUS srlg-value 101484
set routing-options srlg OSA20-TYO31_NTT1 srlg-value 101485
set routing-options srlg STG31-STG31_CAMPUS srlg-value 101486
set routing-options srlg SG2-SG3_WSS02 srlg-value 101487
set routing-options srlg CBR21-CBR21_CAMPUS srlg-value 101489
set routing-options srlg AMS21-AMS21_CAMPUS srlg-value 101490
set routing-options srlg CYS04-MWH_ZAYO srlg-value 101491
set routing-options srlg SXL71-SXL71_CAMPUS srlg-value 101493
set routing-options srlg VIE-WAW01_PATH1 srlg-value 101495
set routing-options srlg PAR30-PAR30_CAMPUS srlg-value 101496
set routing-options srlg AMS06-HAM30_OPSPAN srlg-value 101498
set routing-options srlg MEL20-MEL20_CAMPUS srlg-value 101501
set routing-options srlg ZRH20-ZRH20_CAMPUS srlg-value 101503
set routing-options srlg BL7-CLE30_MSFT_SLS_222 srlg-value 101504
set routing-options srlg OSA20-OSA20_CAMPUS srlg-value 101505
set routing-options srlg CH2-CH2_CAMPUS srlg-value 101506
set routing-options srlg DBB-DUB08_02_01 srlg-value 101507
set routing-options srlg CBR20-CBR20_CAMPUS srlg-value 101509
set routing-options srlg HKG20-HKG30_NORTH srlg-value 101510
set routing-options srlg STG30-STG30_CAMPUS srlg-value 101511
set routing-options srlg SYD03-SYD03_CAMPUS srlg-value 101516
set routing-options srlg PDX30-PDX31_NORTH srlg-value 101517
set routing-options srlg PAR21-PAR21_CAMPUS srlg-value 101518
set routing-options srlg AMS06-BRU30 srlg-value 101519
set routing-options srlg BRU30-QDU srlg-value 101520
set routing-options srlg FRA30-QDU srlg-value 101521
set routing-options srlg EWR30-NYC30_LGA02 srlg-value 101522
set routing-options srlg HKG31-HKG31_CAMPUS srlg-value 101523
set routing-options srlg ORF70-ORF70_CAMPUS srlg-value 101524
set routing-options srlg OSA31-OSA31_CAMPUS srlg-value 101525
set routing-options srlg SG2-SG3_WSS01 srlg-value 101528
set routing-options srlg SYD23-SYD23_CAMPUS srlg-value 101530
set routing-options srlg BIO70-BIO70_CAMPUS srlg-value 101531
set routing-options srlg CLT02-PDK03_OPSPAN srlg-value 101532
set routing-options srlg BL7-BL7_CAMPUS srlg-value 101533
set routing-options srlg CH4-ENW01 srlg-value 101534
set routing-options srlg DUB08-LON24_OPSPAN srlg-value 101536
set routing-options srlg PDX30-PDX30_CAMPUS srlg-value 101540
set routing-options srlg HKG30-HKG30_CAMPUS srlg-value 101541
set routing-options srlg MRS20-VIE_GTT_PATH1 srlg-value 101542
set routing-options srlg MEL01-MEL01_CAMPUS srlg-value 101543
set routing-options srlg BL20-BL7_SOUTH srlg-value 101544
set routing-options srlg FRA21-FRA30_EAST_HHN10 srlg-value 101545
set routing-options srlg CLE30-EWR30_MSFT_SLS_226 srlg-value 101546
set routing-options srlg BY4-BY4_CAMPUS srlg-value 101547
set routing-options srlg LON22-LON22_CAMPUS srlg-value 101548
set routing-options srlg HKG20-HKG31_VHK02 srlg-value 101549
set routing-options srlg TYO31-TYO31_CAMPUS srlg-value 101550
set routing-options srlg LON24-LON24_CAMPUS srlg-value 101551
set routing-options srlg ATL30-ATL30_CAMPUS srlg-value 101552
set routing-options srlg GVA20-GVA20_CAMPUS srlg-value 101553
set routing-options srlg FRA30-VIE_EUNETWORKS_PATH1 srlg-value 101555
set routing-options srlg FRA30-FRA30_CAMPUS srlg-value 101557
set routing-options srlg TYO30-TYO81-TYO80-TYO79 srlg-value 101560
set routing-options srlg ATL31-ATL31_CAMPUS srlg-value 101561
set routing-options srlg AMS06-GRQ srlg-value 101564
set routing-options srlg BRE-GRQ srlg-value 101565
set routing-options srlg BRE-XFW srlg-value 101566
set routing-options srlg HEL01-XFW srlg-value 101567
set routing-options srlg FRA21-FRA30_WEST_HHN09 srlg-value 101568
set routing-options srlg FRA21-FRA21_CAMPUS srlg-value 101569
set routing-options srlg NYC30-WAS05_OPSPAN srlg-value 101570
set routing-options srlg HEL01-HEL01_CAMPUS srlg-value 101571
set routing-options srlg CH4-CH4_CAMPUS srlg-value 101572
set routing-options srlg YTO20-YTO30_NORTH srlg-value 101573
set routing-options srlg DUB08-DUB08_CAMPUS srlg-value 101574
set routing-options srlg LON22-LON24 srlg-value 101577
set routing-options srlg JNB20-JNB20_CAMPUS srlg-value 101578
set routing-options srlg OSA31-TYO30_KDDI srlg-value 101585
set routing-options srlg HKG20-HKG20_CAMPUS srlg-value 101586
set routing-options srlg FRA30-HEL01_EUNETWORKS_PATH1 srlg-value 101588
set routing-options srlg ORF70-RIO02_BRUSA srlg-value 101589
set routing-options srlg MIL30-ZRH20_GTT_CENTURYLINK_SHARE srlg-value 101591
set routing-options srlg ATB-ATL30_EAST srlg-value 101593
set routing-options srlg LON22-PAR30_HYBRID_OLS_EUNETWORKS_PATH1 srlg-value 101594
set routing-options srlg CIRCESOUTH srlg-value 101595
set routing-options srlg MRS20-SG2_SMW5 srlg-value 101596
set routing-options srlg BOM02-MAA02_AIRTEL_PROTECTED srlg-value 101597
set routing-options srlg TYO31-TYO79_502 srlg-value 101598
set routing-options srlg TYO30-TYO79_501 srlg-value 101599
set routing-options srlg MEL01-PER01_OPTUS srlg-value 101600
set routing-options srlg PER30-SYD23_TELSTRA srlg-value 101601
set routing-options srlg BY21-LAX_ZAYO srlg-value 101602
set routing-options srlg ATL31-SAO30_SAC srlg-value 101603
set routing-options srlg YTO30-YVR30_BELLCANADA srlg-value 101604
set routing-options srlg YTO20-YVR30_BELLCANADA srlg-value 101605
set routing-options srlg YTO02-YTO20_BELLCANADA srlg-value 101606
set routing-options srlg YTO03-YTO30_BELLCANADA srlg-value 101607
set routing-options srlg SOF01-VIE_CENTURYLINK srlg-value 101610
set routing-options srlg MIL30-ROM30_GTT srlg-value 101611
set routing-options srlg PHX01-PHX31_CENTURYLINK srlg-value 101612
set routing-options srlg STB-YVR_ZAYO srlg-value 101613
set routing-options srlg NYC30-YQB20_BELLCANADA srlg-value 101614
set routing-options srlg MWH01-YVR30_TELUS srlg-value 101618
set routing-options srlg MMA01-STO31_IPONLY_PATH2 srlg-value 101619
set routing-options srlg BCT-MIA30_SAM1 srlg-value 101621
set routing-options srlg MAA20-MAA30_TATA_02 srlg-value 101622
set routing-options srlg MAA20-MAA30_TATA_01 srlg-value 101623
set routing-options srlg MAA20-MAA30_BHARTI_02 srlg-value 101624
set routing-options srlg MAA20-MAA30_BHARTI_01 srlg-value 101625
set routing-options srlg MAA20-MAA02_TATA_02 srlg-value 101626
set routing-options srlg MAA20-MAA02_TATA_01 srlg-value 101627
set routing-options srlg MAA20-MAA02_BHARTI_02 srlg-value 101628
set routing-options srlg MAA20-MAA02_BHARTI_01 srlg-value 101629
set routing-options srlg LON21-LON24 srlg-value 101630
set routing-options srlg LON21-LON22 srlg-value 101631
set routing-options srlg LAX31-SAN30_CENTURYLINK srlg-value 101632
set routing-options srlg LAX30-LAX31_EAST srlg-value 101633
set routing-options srlg LAX31-LAX32_CENTURYLINK srlg-value 101634
set routing-options srlg LAX30-SAN30_CENTURYLINK srlg-value 101635
set routing-options srlg HEL01-STO31_EUNETWORKS_PATH1 srlg-value 101643
set routing-options srlg HAM30-MMA01_IPONLY srlg-value 101644
set routing-options srlg GVX01-STO31_IPONLY srlg-value 101645
set routing-options srlg GVX01-STO30_IPONLY srlg-value 101646
set routing-options srlg GOT30-MMA01_IPONLY srlg-value 101647
set routing-options srlg GOT30-GVX01_IPONLY srlg-value 101648
set routing-options srlg FRA30-TLV30_MEDNAUTILUS_PROTECTED srlg-value 101649
set routing-options srlg FRA30-MUC30_COLT_PATH1 srlg-value 101650
set routing-options srlg FRA30-MOW30_ROSTELECOM srlg-value 101651
set routing-options srlg FRA23-PAR21_EUNETWORKS srlg-value 101653
set routing-options srlg FRA23-FRA31_MADISON srlg-value 101654
set routing-options srlg FRA21-TLV30_JONAH_PROTECTED srlg-value 101655
set routing-options srlg FRA21-MOW30_ROSTELECOM srlg-value 101656
set routing-options srlg FRA21-HAM30_EUNETWORKS srlg-value 101657
set routing-options srlg FRA-FRA23_MADISON srlg-value 101658
set routing-options srlg CPT20-LON22_SAT3 srlg-value 101661
set routing-options srlg CMB30-SG2_SRILANKATELECOM srlg-value 101662
set routing-options srlg CMB30-MAA01_AIRTEL srlg-value 101663
set routing-options srlg CH4-MSP30_CENTURYLINK srlg-value 101665
set routing-options srlg CH4-DTT30_EDGECONNEX srlg-value 101666
set routing-options srlg CH2-MSP30_CENTURYLINK srlg-value 101667
set routing-options srlg CH2-DTT30_EDGECONNEX srlg-value 101669
set routing-options srlg CBR23-MEL01_TELSTRA_TERRESTRIAL srlg-value 101671
set routing-options srlg LAS30-PHX01_CENTURYLINK srlg-value 101672
set routing-options srlg BY21-LAS30_CENTURYLINK srlg-value 101673
set routing-options srlg BOM02-PNQ21_TERRESTRIAL_PATH1 srlg-value 101674
set routing-options srlg BL20-NYC30_OPSPAN srlg-value 101675
set routing-options srlg BER20-MMA01_IPONLY srlg-value 101676
set routing-options srlg ATL31-JAX30_EDGECONNEX srlg-value 101680
set routing-options srlg ATL31-BNA30_EDGECONNEX srlg-value 101681
set routing-options srlg ATL30-JAX30_EDGECONNEX srlg-value 101683
set routing-options srlg ATL30-BNA30_EDGECONNEX srlg-value 101684
set routing-options srlg ATL05-ATL31_ZAYO srlg-value 101686
set routing-options srlg AMS30-GOT30_IPONLY srlg-value 101687
set routing-options srlg DUB07-DUB08_CAMPUS srlg-value 101688
set routing-options srlg AMS06-AMS21_EUROFIBER_WEST_OMT62_PATH1 srlg-value 101692
set routing-options srlg BCT-PBR_SAM1 srlg-value 101694
set routing-options srlg GSJ-PBR_SAM1 srlg-value 101695
set routing-options srlg GSJ-LIM_SAM1 srlg-value 101696
set routing-options srlg ARI-LIM_SAM1 srlg-value 101697
set routing-options srlg ARI-VAP_SAM1 srlg-value 101698
set routing-options srlg CPT20-JNB21_LIQUID_PATH2 srlg-value 101699
set routing-options srlg BY3-BY21_SJC47 srlg-value 101700
set routing-options srlg HNL01-PDX30_HAWAIKI srlg-value 101703
set routing-options srlg MNL30-SGE_APCN2 srlg-value 101704
set routing-options srlg MNL30-SG2_SJC srlg-value 101705
set routing-options srlg MRS20-SIN30_AAE1 srlg-value 101706
set routing-options srlg GUM01-TYO31_TGNP srlg-value 101707
set routing-options srlg MEX31-SN1_PATH1_TELMEX srlg-value 101711
set routing-options srlg MEX31-SN6_TELMEX srlg-value 101712
set routing-options srlg TYO30-TYO33_WEST srlg-value 101715
set routing-options srlg TYO31-TYO33_EAST srlg-value 101716
set routing-options srlg SYD23-TYO30_AJC srlg-value 101717
set routing-options srlg PUS20-SEL21_LGUPLUS_PROTECTED srlg-value 101719
set routing-options srlg LON24-MAN30_GTTHIBERNIA_PATH1 srlg-value 101721
set routing-options srlg AMS04-AMS06_OMT07 srlg-value 101722
set routing-options srlg EUROTUNNEL srlg-value 101723
set routing-options srlg CELTIXCONNECT1 srlg-value 101724
set routing-options srlg DB5-DUB07_CAMPUS srlg-value 101725
set routing-options srlg PAR21-VIE_EUNETWORKS srlg-value 101726
set routing-options srlg AMS04-AMS06_OMT10 srlg-value 101727
set routing-options srlg AM3-AMS06_OMT05 srlg-value 101728
set routing-options srlg CIRCENORTH srlg-value 101729
set routing-options srlg EIRGRID srlg-value 101730
set routing-options srlg DB3-DUB08_CAMPUS srlg-value 101731
set routing-options srlg AM3-AMS06_OMT02 srlg-value 101732
set routing-options srlg DXB20-MRS20_DU_FALCON srlg-value 101733
set routing-options srlg MIA30-SCL01_SAM1 srlg-value 101734
set routing-options srlg BJB-HKB_CHINATELECOM srlg-value 101735
set routing-options srlg SHA-HKB_CHINATELECOM srlg-value 101736
set routing-options srlg BJB-HKG30_CHINATELECOM srlg-value 101737
set routing-options srlg SHA-HKG30_CHINATELECOM srlg-value 101738
set routing-options srlg CPT20-LAD30_WACS srlg-value 101739
set routing-options srlg LAD30-LON22_WACS srlg-value 101740
set routing-options srlg LAD30-WACS_WACS_BU srlg-value 101741
set routing-options srlg BOM30-PNQ20_TATA_TERRESTRIAL_PROTECTED srlg-value 101742
set routing-options srlg MAA30-PNQ21_TATA_TERRESTRIAL_PROTECTED srlg-value 101743
set routing-options srlg MAA01-PNQ20_AIRTEL_TERRESTRIAL_PROTECTED srlg-value 101744
set routing-options srlg CBR21-MEL20_OPTUS_TERRESTRIAL srlg-value 101745
set routing-options srlg CBR22-SYD03_TELSTRA_02 srlg-value 101746
set routing-options srlg ZAG30-ZRH20_COLT srlg-value 101747
set routing-options srlg LAX-LAX30_WEST srlg-value 101748
set routing-options srlg LAX-LAX30_EAST srlg-value 101749
set routing-options srlg PUS03-SG3_APG srlg-value 101750
set routing-options srlg MRS20-NBO30_WIOCC srlg-value 101751
set routing-options srlg BL20-NYC30_SLS123 srlg-value 101752
set routing-options srlg AMS30-HEL01_EUNETWORKS srlg-value 101753
set routing-options srlg AMS-HEL01_EUNETWORKS_PATH1 srlg-value 101754
set routing-options srlg BER20-IEV30_RETN srlg-value 101755
set routing-options srlg FRA21-IEV30_RETN srlg-value 101756
set routing-options srlg HAWK srlg-value 101757
set routing-options srlg TENORTH srlg-value 101758
set routing-options srlg CAI30-MRS20_TE_HAWK srlg-value 101759
set routing-options srlg CAI30-MRS20_TE_TENORTH srlg-value 101760
set routing-options srlg AAE1 srlg-value 101761
set routing-options srlg GBICS_MENA srlg-value 101762
set routing-options srlg FALCON srlg-value 101763
set routing-options srlg FLAG_FEA srlg-value 101764
set routing-options srlg TGN_GULF srlg-value 101765
set routing-options srlg TGN_EURASIA srlg-value 101766
set routing-options srlg DOH30-MRS20_OOREDOO_AAE1 srlg-value 101767
set routing-options srlg BOM30-DOH30_OOREDOO_GBI_MENA srlg-value 101768
set routing-options srlg DOH31-MRS20_OOREDOO_FALCON_FLAG srlg-value 101769
set routing-options srlg BOM02-DOH31_OOREDOO_TGN srlg-value 101770
set routing-options srlg MEDNAUTILUS srlg-value 101771
set routing-options srlg FRA30-IST30_MEDTURK_SUBSEA_MEDNAUTILUS_PROTECTION srlg-value 101772
set routing-options srlg FRA30-IST30_MEDTURK_TERRESTRIAL srlg-value 101773
set routing-options srlg FRA21-IST30_MEDTURK_TERRESTRIAL srlg-value 101774
set routing-options srlg BY21-SYD03_SCCN srlg-value 101775
set routing-options srlg LAX30-SYD23_SCCN srlg-value 101776
set routing-options srlg BER20-BUD01_CENTURYLINK srlg-value 101777
set routing-options srlg BUH01-VIE_CENTURYLINK srlg-value 101778
set routing-options srlg BER20-BUH01_CENTURYLINK srlg-value 101779
set routing-options srlg ATH01-VIE_TISPARKLE srlg-value 101781
set routing-options srlg ATH01-MRS20_TISPARKLE srlg-value 101782
set routing-options srlg DXB20-MRS20_ETISALAT_AAE1 srlg-value 101783
set routing-options srlg BBG srlg-value 101784
set routing-options srlg SMW4 srlg-value 101785
set routing-options srlg DXB21-MRS20_DU_FALCON_HAWK srlg-value 101786
set routing-options srlg BOM30-DXB21_DU_EIG srlg-value 101787
set routing-options srlg PUS20-TYO79_NCP srlg-value 101788
set routing-options srlg DXB20-DXB21_DU_DARKFIBER_NORTH srlg-value 101789
set routing-options srlg DXB20-DXB21_DU_DARKFIBER_SOUTH srlg-value 101790
set routing-options srlg DXB20-DXB30_ETISALAT_PATH1 srlg-value 101791
set routing-options srlg DXB20-DXB30_DU_PATH2 srlg-value 101792
set routing-options srlg DXB20-DXB30_DU_DARKFIBER_METRO_EDGE_RNG_WEST srlg-value 101793
set routing-options srlg DXB21-DXB30_DU_DARKFIBER_METRO_EDGE_RNG_EAST srlg-value 101794
set routing-options srlg DXB20-DXB21_DU_DARKFIBER_METRO_EDGE_RNG_EAST srlg-value 101795
set routing-options srlg BY4-SJC30_SOUTH_LEASED srlg-value 101797
set routing-options srlg PHX02-PHX21_SOUTH_OPSPAN srlg-value 101798
set routing-options srlg NYC-EWR30_Zayo srlg-value 101800
set routing-options srlg HOU01-SN1_01 srlg-value 101801
set routing-options srlg MRS20-ROM30_GTT_PATH1 srlg-value 101802
set routing-options srlg MIA-Bulkfiber_WEST srlg-value 101803
set routing-options srlg MIA-Bulkfiber_EAST srlg-value 101804
set routing-options srlg LED30-STO30_ROSTEL_PATH1 srlg-value 101805
set routing-options srlg LED30-STO31_ROSTEL_PATH1 srlg-value 101806
set routing-options srlg LAX30-TYO30_UNITY srlg-value 101807
set routing-options srlg CBR20-CBR22_CAMPUS_NORTH srlg-value 101808
set routing-options srlg CBR21-CBR22_North srlg-value 101809
set routing-options srlg CBR21-CBR22_South srlg-value 101810
set routing-options srlg DBB-DUB_EAST srlg-value 101815
set routing-options srlg DBB-DUB_WEST srlg-value 101816
set routing-options srlg HKG31-SYD23_AAG_AJC srlg-value 101817
set routing-options srlg BY4-BY30_SOUTH srlg-value 101818
set routing-options srlg BY21-BY30_NORTH srlg-value 101819
set routing-options srlg LAS01-LAX30_Centurylink srlg-value 101820
set routing-options srlg BUE30-SAO30_IPLAN srlg-value 101821
set routing-options srlg BUE30-GRU30_CENTURYLINK srlg-value 101822
set routing-options srlg LON04-LON22_CAMPUS_EAST srlg-value 101823
set routing-options srlg BY21-SLC31_CENTURYLINK srlg-value 101824
set routing-options srlg CYS04-SLC31_CENTURYLINK srlg-value 101825
set routing-options srlg BOS31-NYC30_CENTURYLINK srlg-value 101826
set routing-options srlg BOS31-EWR30_CENTURYLINK srlg-value 101827
set routing-options srlg FRA21-HAM31_EUNETWORKS srlg-value 101828
set routing-options srlg YQB20-YTO30_BELLCANADA srlg-value 101829
set routing-options srlg LAX30-PHX31_CENTURYLINK srlg-value 101830
set routing-options srlg PHX31-SN1_CENTURYLINK srlg-value 101831
set routing-options srlg MIL30-ZRH20_GTT_CENTURYLINK srlg-value 101833
set routing-options srlg SCL01-SCL30_TELXIUS_PROTECT_1 srlg-value 101834
set routing-options srlg VIE-VIE20_EUNETWORKS_DARKFIBER_NORTH srlg-value 101835
set routing-options srlg VIE-VIE20_EUNETWORKS_DARKFIBER_SOUTH srlg-value 101836
set routing-options srlg VIE-VIE_CAMPUS_WEST srlg-value 101837
set routing-options srlg VIE-VIE_CAMPUS_EAST srlg-value 101838
set routing-options srlg VIE-VIE20_EUNETWORKS_DARKFIBER_WEST srlg-value 101839
set routing-options srlg VIE-VIE20_EUNETWORKS_DARKFIBER_EAST srlg-value 101840
set routing-options srlg FRA23-VIE20_COLT srlg-value 101841
set routing-options srlg BER20-VIE_COLT srlg-value 101842
set routing-options srlg VIE20-ZRH21_COLT srlg-value 101843
set routing-options srlg ALEXANDROS srlg-value 101844
set routing-options srlg JONAH srlg-value 101845
set routing-options srlg MRS21-TLV20_ALEXANDROS_TBD srlg-value 101846
set routing-options srlg TLV20-ZRH20_MEDNAUTILUS_TBD srlg-value 101847
set routing-options srlg TLV20-VIE20_JONAH_TBD srlg-value 101848
set routing-options srlg DXB30-MRS20_DU_SMW5 srlg-value 101850
set routing-options srlg SMW5 srlg-value 101851
set routing-options srlg OSA20-PDX31_FASTER srlg-value 101852
set routing-options srlg BOM30-HYD30_AIRTEL srlg-value 101853
set routing-options srlg HYD30-MAA30_AIRTEL srlg-value 101854
set routing-options srlg BCN30-MAD30_EUNETWORKS srlg-value 101855
set routing-options srlg MAD30-PAR30_EUNETWORKS srlg-value 101856
set routing-options srlg BCN30-MRS20_EUNETWORKS srlg-value 101857
set routing-options srlg MIL30-MRS20_EUNETWORKS srlg-value 101858
set routing-options srlg MIL30-ZRH20_EUNETWORKS srlg-value 101859
set routing-options srlg LAX30-LAX30_CAMPUS srlg-value 101860
set routing-options srlg LAS30-LAS30_CAMPUS srlg-value 101861
set routing-options srlg YQB20-YQB20_CAMPUS srlg-value 101862
set routing-options srlg BL20-BL20_CAMPUS srlg-value 101863
set routing-options srlg HKG20-TPE30_C2C srlg-value 101864
set routing-options srlg PUS20-PUS20_BULK_Path_1 srlg-value 101865
set routing-options srlg PUS20-PUS20_BULK_Path_2 srlg-value 101866
set routing-options srlg HKG20_MNL30_ASE_PLDT srlg-value 101867
set routing-options srlg BKK30-SG3_TM_TERRESTRIAL srlg-value 101868
set routing-options srlg HKG31-MNL30_AAG_PLDT srlg-value 101869
set routing-options srlg MEL01-SYD03_Vocus_01 srlg-value 101871
set routing-options srlg GRU30-SCL01_SILICA srlg-value 101872
set routing-options srlg RIO01-RIO02_CAMPUS srlg-value 101873
set routing-options srlg RIO02-RIO03_CENTURYLINK_PROTECT_2 srlg-value 101874
set routing-options srlg LAX30-LAX31_NORTH srlg-value 101876
set routing-options srlg LAX30-LAX31_SOUTH srlg-value 101877
set routing-options srlg LAX03-LAX30_OPSPAN srlg-value 101878
set routing-options srlg SYD03-TYO79_JGA-S_JGA-N srlg-value 101879
set routing-options srlg BOM30-DXB30_DU_EIG srlg-value 101880
set routing-options srlg MIA-MIA_CAMPUS srlg-value 101881
set routing-options srlg MRS20-SIN30_SMW5_SINGTEL srlg-value 101882
set routing-options srlg MRS20-SIN30_SMW5_TELIN srlg-value 101883
set routing-options srlg OSA31-TYO30_COLT_TERRESTRIAL srlg-value 101884
set routing-options srlg SEL20-TYO79_APG_KT srlg-value 101885
set routing-options srlg RIO02-RIO20_GIG020 srlg-value 101886
set routing-options srlg RIO02-RIO30_GIG021 srlg-value 101887
set routing-options srlg AKL01-AKL30_CAMPUS srlg-value 101888
set routing-options srlg PUS03-PUS20_TERRESTRIAL_KT srlg-value 101889
set routing-options srlg SG2-SGE_WEST srlg-value 101890
set routing-options srlg SYD-SYD03_TERRESTRIAL_PIPE srlg-value 101891
set routing-options srlg JKT30-SG3_JASUKA_Telin srlg-value 101893
set routing-options srlg KUL01-KUL01_CAMPUS srlg-value 101894
set routing-options srlg DEL01-DEL01_CAMPUS srlg-value 101895
set routing-options srlg MRS20-ROM30_SOUTH_GTT_PATH1 srlg-value 101896
set routing-options srlg JNB20-NBO30_WIOCC_PATH1 srlg-value 101897
set routing-options srlg WACS srlg-value 101898
set routing-options srlg MRS20-NBO30_WIOCC_PATH1 srlg-value 101899
set routing-options srlg MRS20-ZRH20_COLT_PATH2 srlg-value 101900
set routing-options srlg CPQ20-CPQ70_SLS454 srlg-value 101901
set routing-options srlg CPQ70-SAO71_SLS454 srlg-value 101902
set routing-options srlg GRU30-SAO71_SLS454 srlg-value 101903
set routing-options srlg TLV20-TLV30_BEZEQ_EAST srlg-value 101904
set routing-options srlg TLV20-TLV30_BEZEQ_WEST srlg-value 101905
set routing-options srlg LAX30-LAX32_CENTURYLINK srlg-value 101906
set routing-options srlg ZQZ20-NTG20_CHINA_MOBILE srlg-value 101907
set routing-options srlg ZQZ22-NTG20_CHINA_UNICOM srlg-value 101908
set routing-options srlg ZQZ20-BJS20_CHINA_TELECOM srlg-value 101909
set routing-options srlg ZQZ22-BJS20_CHINA_UNICOM srlg-value 101910
set routing-options srlg NTG20-SHA20_CHINA_UNICOM srlg-value 101911
set routing-options srlg NTG20-SHA20_CHINA_TELECOM srlg-value 101912
set routing-options srlg BJS20-SHA20_CHINA_UNICOM srlg-value 101913
set routing-options srlg ZQZ20-HKB_CHINA_TELECOM srlg-value 101914
set routing-options srlg ZQZ22-HKG30_CHINA_UNICOM srlg-value 101915
set routing-options srlg NTG20-HKB_CHINA_UNICOM srlg-value 101916
set routing-options srlg NTG20-HKG20_CHINA_TELECOM srlg-value 101917
set routing-options srlg LON24-PAR21_HYBRID_OLS_EUNETWORKS_PATH1 srlg-value 101918
set routing-options srlg BY4-HKG31_AAG srlg-value 101920
set routing-options srlg BER20-FRA30_EUNETWORKS_WEST_PATH1 srlg-value 101921
set routing-options srlg STO-STO30_WEST srlg-value 101922
set routing-options srlg STO-STO31_EAST srlg-value 101923
set routing-options srlg STO30-STO31_EAST srlg-value 101924
set routing-options srlg STO30-STO31_WEST srlg-value 101925
set routing-options srlg TPE30-TPE31_PATH1 srlg-value 101926
set routing-options srlg TPE30-TPE31_PATH2 srlg-value 101927
set routing-options srlg JKT30-SG2_B3JS srlg-value 101928
set routing-options srlg JKT30-SG3_IGG_BSCS_Telin srlg-value 101929
set routing-options srlg AKL30-SYD03_SX_Telstra srlg-value 101930
set routing-options srlg AKL30-SYD03_SX_Vocus srlg-value 101931
set routing-options srlg AKL30-SYD23_TGA_SPARKNZ srlg-value 101932
set routing-options srlg AKL30-SYD23_TGA_Vodafone srlg-value 101933
set routing-options srlg FOR01-RIO30_CENTURLINK srlg-value 101934
set routing-options srlg CWL20-LON24_SSE_PATH4 srlg-value 101935
set routing-options srlg BUD01-VIE_CENTURYLINK srlg-value 101936
set routing-options srlg CYS06-DEN02_EAST_CORONA_CENTRUYLINK srlg-value 101937
set routing-options srlg DEN02-MANASSAS_JCT_CORONA_CENTURYLINK srlg-value 101938
set routing-options srlg MNZ21-MANASSAS_JCT_CORONA_CTL srlg-value 101939
set routing-options srlg CYS06-DEN02_WEST_MANASSAS_JCT_CORONA_ZAYO srlg-value 101940
set routing-options srlg MNZ21-MANASSAS_JCT_CORONA_ZAYO srlg-value 101941
set routing-options srlg CYS06-SN8_WEST_CENTRULYLINK srlg-value 101942
set routing-options srlg DEN02-SN_EAST_CORONA srlg-value 101943
set routing-options srlg CYS06-SEA90_B25-WEST_ZAYO srlg-value 101944
set routing-options srlg CYS06-SEA90_B43-EAST_ZAYO srlg-value 101945
set routing-options srlg BKK30-SG3_TIS_SINGTEL srlg-value 101946
set routing-options srlg SJC srlg-value 101947
set routing-options srlg ROCKABILL srlg-value 101948
set routing-options srlg EMERALDBRIDGE srlg-value 101949
set routing-options srlg TANGERINE srlg-value 101950
set routing-options srlg EASSY srlg-value 101951
set routing-options srlg PNQ01-PNQ21_EAST srlg-value 101952
set routing-options srlg PNQ01-PNQ21_WEST srlg-value 101953
set routing-options srlg HKG31-TYO79_SJC_CMI srlg-value 101954
set routing-options srlg HKG31-TYO79_SJC_SINGTEL srlg-value 101955
set routing-options srlg SG2-TYO79_SJC_SINGTEL srlg-value 101956
set routing-options srlg MWH01-MWH30_EAST srlg-value 101957
set routing-options srlg MWH01-MWH30_WEST srlg-value 101958
set routing-options srlg HKB-HKG20_EAST srlg-value 101959
set routing-options srlg HKB-HKG31_WEST srlg-value 101960
set routing-options srlg AMS06-AMS06_CAMPUS_EAST srlg-value 101961
set routing-options srlg AMS06-AMS06_CAMPUS_NORTH srlg-value 101962
set routing-options srlg AMS06-AMS30_EUROFIBER_WEST srlg-value 101963
set routing-options srlg AMS06-AMS06_CAMPUS_SOUTH srlg-value 101964
set routing-options srlg AMS06-AMS30_EUROFIBER_EAST srlg-value 101965
set routing-options srlg AMS06-AMS06_CAMPUS_WEST srlg-value 101966
set routing-options srlg AMS06-AMS21_EUROFIBER_WEST srlg-value 101967
set routing-options srlg AMS06-AMS21_EUROFIBER_EAST srlg-value 101968
set routing-options srlg AMS21-AMS30_NORTH_CAMPUS srlg-value 101969
set routing-options srlg AMS21-AMS30_SOUTH_CAMPUS srlg-value 101970
set routing-options srlg AMS30-AMS30_CAMPUS_EAST srlg-value 101971
set routing-options srlg ATL30-ATL31_NORTH srlg-value 101972
set routing-options srlg ATL30-ATL31_SOUTH srlg-value 101973
set routing-options srlg BN6-BN6_CAMPUS_WEST srlg-value 101974
set routing-options srlg BN6-BN6_CAMPUS_EAST srlg-value 101975
set routing-options srlg BN6-BN6_CAMPUS_NORTH srlg-value 101976
set routing-options srlg BN6-BN6_CAMPUS_SOUTH srlg-value 101977
set routing-options srlg CH2-CH4_NORTH srlg-value 101978
set routing-options srlg CH2-CH4_SOUTH srlg-value 101979
set routing-options srlg CYS04-CYS04_CAMPUS_WEST srlg-value 101980
set routing-options srlg CYS04-CYS04_CAMPUS_NORTH srlg-value 101981
set routing-options srlg CYS04-CYS04_CAMPUS_SOUTH srlg-value 101982
set routing-options srlg CYS04-CYS04_CAMPUS_EAST srlg-value 101983
set routing-options srlg DSM05-DSM05_CAMPUS_EAST srlg-value 101984
set routing-options srlg DSM05-DSM05_CAMPUS_NORTH srlg-value 101985
set routing-options srlg DSM05-DSM05_CAMPUS_SOUTH srlg-value 101986
set routing-options srlg DSM05-DSM05_CAMPUS_WEST srlg-value 101987
set routing-options srlg DUB07-DUB08_NORTH srlg-value 101988
set routing-options srlg DUB07-DUB08_SOUTH srlg-value 101989
set routing-options srlg LAX30-PHX10_OPSPAN srlg-value 101990
set routing-options srlg PHX10-SN1_OPSPAN srlg-value 101991
set routing-options srlg HKG20-HKG30_SOUTH srlg-value 101992
set routing-options srlg HKG30-HKG31_NORTH srlg-value 101993
set routing-options srlg HKG30-HKG31_SOUTH srlg-value 101994
set routing-options srlg LON22-LON24_NORTH srlg-value 101995
set routing-options srlg LON22-LON24_SOUTH srlg-value 101996
set routing-options srlg MWH01-MWH01_CAMPUS_WEST srlg-value 101997
set routing-options srlg MWH01-MWH01_CAMPUS_NORTH srlg-value 101998
set routing-options srlg MWH01-SEA02_OPSPAN_SEA02-STB_PDX01-STB_OPSPAN srlg-value 101999
set routing-options srlg MWH01-MWH01_CAMPUS_SOUTH srlg-value 102000
set routing-options srlg MWH01-MWH01_CAMPUS_EAST srlg-value 102001
set routing-options srlg OSA20-OSA31_NORTH srlg-value 102002
set routing-options srlg OSA20-OSA31_SOUTH srlg-value 102003
set routing-options srlg PAR21-PAR30_NORTH srlg-value 102004
set routing-options srlg PAR21-PAR30_SOUTH srlg-value 102005
set routing-options srlg PAR21-PAR30_EUNETWORKS srlg-value 102006
set routing-options srlg SN1-SN1_CAMPUS_WEST srlg-value 102007
set routing-options srlg SN1-SN6_CAMPUS_NORTH srlg-value 102008
set routing-options srlg SN1-SN6_CAMPUS_SOUTH srlg-value 102009
set routing-options srlg SN6-SN6_CAMPUS_EAST srlg-value 102010
set routing-options srlg TYO30-TYO31_NORTH srlg-value 102011
set routing-options srlg TYO30-TYO31_SOUTH srlg-value 102012
set routing-options srlg VIE-VIE_CAMPUS_NORTH srlg-value 102013
set routing-options srlg VIE-VIE_CAMPUS_SOUTH srlg-value 102014
set routing-options srlg CLE02-YTO30_ZAYO srlg-value 102015
set routing-options srlg BIO70-MRS20_COLT_OPSPAN srlg-value 102017
set routing-options srlg JGA20-MAA31_RELIANCEJIO_PATH1 srlg-value 102018
set routing-options srlg JGA20-MAA31_RELIANCEJIO_PATH2 srlg-value 102019
set routing-options srlg JGA20-BOM31_RELIANCEJIO_PATH1 srlg-value 102020
set routing-options srlg JGA20-BOM31_RELIANCEJIO_PATH2 srlg-value 102021
set routing-options srlg JGA20-NAG20_RELIANCEJIO_PATH1 srlg-value 102022
set routing-options srlg JGA20-NAG20_RELIANCEJIO_PATH2 srlg-value 102023
set routing-options srlg JGA20-NAG20_RELIANCEJIO_PATH3 srlg-value 102024
set routing-options srlg NAG20-MAA31_RELIANCEJIO_PATH1 srlg-value 102025
set routing-options srlg NAG20-MAA31_RELIANCEJIO_PATH2 srlg-value 102026
set routing-options srlg NAG20-BOM31_RELIANCEJIO_PATH1 srlg-value 102027
set routing-options srlg NAG20-BOM31_RELIANCEJIO_PATH2 srlg-value 102028
set routing-options srlg BOM02-BOM31_RELIANCEJIO srlg-value 102029
set routing-options srlg BOM30-BOM31_RELIANCEJIO srlg-value 102030
set routing-options srlg MAA01-MAA31_RELIANCEJIO srlg-value 102031
set routing-options srlg MAA30-MAA31_RELIANCEJIO srlg-value 102032
set routing-options srlg HEL01-STO30_CINIA_PATH1 srlg-value 102033
set routing-options srlg PUS01-SEL20_TERRESTRIAL_LGUPLUS srlg-value 102034
set routing-options srlg PUS01-PUS03_TERRESTRIAL_LGUPLUS srlg-value 102035
set routing-options srlg SEA02-SEA73_CAMPUS_EAST srlg-value 102036
set routing-options srlg SEA02-SEA73_CAMPUS_WEST srlg-value 102037
set routing-options srlg TYB-TYO30_WEST srlg-value 102038
set routing-options srlg TYB-TYO31_WEST srlg-value 102039
set routing-options srlg TYA-TYO30_WEST srlg-value 102040
set routing-options srlg TYA-TYO31_WEST srlg-value 102041
set routing-options srlg OSA01-OSA02_WEST srlg-value 102042
set routing-options srlg OSA01-OSA30_WEST srlg-value 102043
set routing-options srlg TYO02-TYO31_SOUTH srlg-value 102044
set routing-options srlg TYO01-TYO31_WEST srlg-value 102045
set routing-options srlg TYO01-TYO30_WEST srlg-value 102046
set routing-options srlg DSM05-MSP30_ZAYO srlg-value 102047
set routing-options srlg DSM05-MSP30_CENTURYLINK srlg-value 102048
set routing-options srlg MINNETONKA_MN_5th_ST_SOUTH-7th_ST_SOUTH srlg-value 102049
set routing-options srlg MINNETONKA_MN_HWY_61-OLD_SHADY_OAK_RD srlg-value 102050
set routing-options srlg ENW01-MSP02_MSFT srlg-value 102051
set routing-options srlg DSM05-MSP02_MSFT srlg-value 102052
set routing-options srlg COLUMBIA_CLS-BOG30_UFINET_PROTECT_1 srlg-value 102053
set routing-options srlg COLUMBIA_CLS-BOG30_UFINET_PROTECT_2 srlg-value 102054
set routing-options srlg SCL01-SCL30_TELXIUS_PROTECT_2 srlg-value 102055
set routing-options srlg FASTER srlg-value 102056
set routing-options srlg CH4-CVG30_CENTURYLINK srlg-value 102057
set routing-options srlg CLE02-CVG30_CENTURYLINK srlg-value 102058
set routing-options srlg BL7-CLT30_CENTURYLINK srlg-value 102059
set routing-options srlg ATL30-CLT30_CENTURYLINK srlg-value 102060
set routing-options srlg BL7-PHL30_CENTURYLINK srlg-value 102061
set routing-options srlg EWR30-PHL30_CENTURYLINK srlg-value 102062
set routing-options srlg ATL30-MIA30_CENTURYLINK srlg-value 102063
set routing-options srlg MIA-MIA30_CENTURYLINK srlg-value 102064
set routing-options srlg BOS01-CH1_LEVEL3 srlg-value 102065
set routing-options srlg ATL31-FLL30_ATT srlg-value 102066
set routing-options srlg FLL30-FOR01_MONET_ANGOLA_CABLES srlg-value 102067
set routing-options srlg CH2-DTT30_CENTURYLINK srlg-value 102068
set routing-options srlg CH4-DTT30_CENTURYLINK srlg-value 102069
set routing-options srlg ATL30-MIA_CENTURYLINK srlg-value 102070
set routing-options srlg EWR31-NYC_CROWNCASTLE_WEST srlg-value 102071
set routing-options srlg EWR31-NYC_CROWNCASTLE_EAST srlg-value 102072
set routing-options srlg HOU01-SN6_CENTURYLINK_EAST srlg-value 102073
set routing-options srlg HOU01-SN6_CENTURYLINK_WEST_TEMP srlg-value 102074
set routing-options srlg HOU01-SN1_CENTURYLINK_EAST_TEMP srlg-value 102075
set routing-options srlg HOU01-SN1_CENTURYLINK_WEST srlg-value 102076
set routing-options srlg DNA-DEN02_CAMPUS srlg-value 102077
set routing-options srlg LAX31-SLC01_MSFT srlg-value 102078
set routing-options srlg SEL20-SEL21_WEST srlg-value 102079
set routing-options srlg ASE srlg-value 102080
set routing-options srlg HKG20-TYO31_ASE srlg-value 102081
set routing-options srlg SIN30-TYO31_ASE srlg-value 102082
set routing-options srlg B3JS srlg-value 102083
set routing-options srlg JHB20-KUL01_TM srlg-value 102084
set routing-options srlg JHB20-KUL30_TIME srlg-value 102085
set routing-options srlg JHB20-SG2_TM srlg-value 102086
set routing-options srlg JHB20-SG3_TIME srlg-value 102087
set routing-options srlg HKG30-SG2_SJC srlg-value 102088
set routing-options srlg MRS20-MRS21_SIPARTECH_DARKFIBER_NORTH srlg-value 102089
set routing-options srlg MRS20-MRS21_SIPARTECH_DARKFIBER_SOUTH srlg-value 102090
set routing-options srlg BOM30-MRS21_EIG srlg-value 102091
set routing-options srlg JNB20-MRS21_EASSY srlg-value 102092
set routing-options srlg MRS21-PAR30_TBD_WEST srlg-value 102093
set routing-options srlg MRS20-PAR21_TBD_EAST srlg-value 102094
set routing-options srlg GVA20-MRS21_TBD srlg-value 102095
set routing-options srlg AUH20-MRS21_ETISALAT_SMW4 srlg-value 102096
set routing-options srlg BIO70-MRS21_SLS_308 srlg-value 102097
set routing-options srlg FRA30-FRA_CAMPUS srlg-value 102098
set routing-options srlg COLUMBIA_CLS-BOG30_UFINET_PROTECT_3 srlg-value 102099
set routing-options srlg BOG30-MIA_CWNETWORKS_CFX1 srlg-value 102100
set routing-options srlg HAM30-HAM31_NORTH srlg-value 102101
set routing-options srlg HAM30-HAM31_SOUTH srlg-value 102102
set routing-options srlg BER20-MUC30_COLT_PATH1 srlg-value 102103
set routing-options srlg BKK30-HKG20_APG srlg-value 102104
set routing-options srlg CHI30-CH2_CENTURYLINK srlg-value 102105
set routing-options srlg CHI30-CH4_CENTURYLINK srlg-value 102106
set routing-options srlg ATL05-ATL30_CENTURYLINK srlg-value 102107
set routing-options srlg BJ1-HKG30_CHINATELECOM srlg-value 102108
set routing-options srlg BJ1-SJC_TPE srlg-value 102109
set routing-options srlg TPE srlg-value 102110
set routing-options srlg CBR22-SYD03_TELSTRA_01 srlg-value 102111
set routing-options srlg PNQ20-PNQ21_NORTH srlg-value 102112
set routing-options srlg PNQ20-PNQ21_SOUTH srlg-value 102113
set routing-options srlg BJS20-SHA20_CHINA_TELECOM srlg-value 102115
set routing-options srlg LON22-LOS30_MAINONE_PATH1 srlg-value 102116
set routing-options srlg MRS21-NBO30_DARE1_AAE1 srlg-value 102117
set routing-options srlg LAD30-LON22_SAT3 srlg-value 102118
set routing-options srlg FRA20-LEJ20_DT srlg-value 102119
set routing-options srlg LAS01-BY4_ZAYO srlg-value 102120
set routing-options srlg CBR21-CBR23_NORTH srlg-value 102121
set routing-options srlg CBR21-CBR23_SOUTH srlg-value 102122
set routing-options srlg BKK30-SG3_TIME_TERRESTRIAL srlg-value 102123
set routing-options srlg YTO20-YTO30_WEST srlg-value 102124
set routing-options srlg YTO01-YTO30_EAST srlg-value 102125
set routing-options srlg YTO01-YTO20_WEST srlg-value 102126
set routing-options srlg SYD03-SYD23_SOUTH srlg-value 102127
set routing-options srlg SYD-SYD23_WEST srlg-value 102128
set routing-options srlg SYD-SYD03_EAST srlg-value 102129
set routing-options srlg STG30-STG31_SOUTH srlg-value 102130
set routing-options srlg STG30-STG31_NORTH srlg-value 102131
set routing-options srlg SN4-SN6_EAST srlg-value 102132
set routing-options srlg SN3-SN6_EAST srlg-value 102133
set routing-options srlg SN2-SN6_EAST srlg-value 102134
set routing-options srlg SN1-SN6_SOUTH srlg-value 102135
set routing-options srlg SN1-SN6_NORTH srlg-value 102136
set routing-options srlg SN1-SN6_EAST srlg-value 102137
set routing-options srlg SN1-SN3_WEST srlg-value 102138
set routing-options srlg SG2-SG3_NORTH srlg-value 102139
set routing-options srlg SG2-SG3_EAST srlg-value 102140
set routing-options srlg SG1-SG3_WEST srlg-value 102141
set routing-options srlg SG1-SG2_EAST srlg-value 102142
set routing-options srlg SEL21-SLA_EAST srlg-value 102143
set routing-options srlg SEL20-SLA_WEST srlg-value 102144
set routing-options srlg SEL20-SEL21_SOUTH srlg-value 102145
set routing-options srlg SEL20-SEL21_NORTH srlg-value 102146
set routing-options srlg PAR21-PRA_WEST srlg-value 102147
set routing-options srlg PAR02-PAR30_WEST srlg-value 102148
set routing-options srlg PAR02-PAR21_EAST srlg-value 102149
set routing-options srlg OSL20-OSL30_WEST srlg-value 102150
set routing-options srlg OSL20-OSL30_EAST srlg-value 102151
set routing-options srlg OSA20-OSA30_EAST srlg-value 102152
set routing-options srlg OSA02-OSA31_WEST srlg-value 102153
set routing-options srlg OSA02-OSA31_EAST srlg-value 102154
set routing-options srlg OSA02-OSA20_WEST srlg-value 102155
set routing-options srlg OSA02-OSA20_EAST srlg-value 102156
set routing-options srlg OSA01-OSA31_WEST srlg-value 102157
set routing-options srlg OSA01-OSA31_EAST srlg-value 102158
set routing-options srlg OSA01-OSA20_WEST srlg-value 102159
set routing-options srlg OSA01-OSA20_EAST srlg-value 102160
set routing-options srlg NYC-NYC30_WEST srlg-value 102161
set routing-options srlg MEL01-MEL20_WEST srlg-value 102162
set routing-options srlg MEL01-MEL20_EAST srlg-value 102163
set routing-options srlg LON24-LTS_EAST srlg-value 102164
set routing-options srlg LON24-LON32_EAST srlg-value 102165
set routing-options srlg LON22-LTS_WEST srlg-value 102166
set routing-options srlg LON22-LON32_WEST srlg-value 102167
set routing-options srlg LON04-LON24_EAST srlg-value 102168
set routing-options srlg JNB20-JNB21_SOUTH srlg-value 102169
set routing-options srlg JNB20-JNB21_NORTH srlg-value 102170
set routing-options srlg JNB02-JNB21_WEST srlg-value 102171
set routing-options srlg HKG20-HKG30_WEST srlg-value 102173
set routing-options srlg HKB-HKG31_EAST srlg-value 102174
set routing-options srlg HKB-HKG20_WEST srlg-value 102175
set routing-options srlg HK2-HKG31_WEST srlg-value 102176
set routing-options srlg HK2-HKG31_EAST srlg-value 102177
set routing-options srlg GVA20-GVA30_WEST srlg-value 102178
set routing-options srlg GVA20-GVA30_EAST srlg-value 102179
set routing-options srlg GRU30-SAO30_SOUTH srlg-value 102180
set routing-options srlg GRU30-SAO30_NORTH srlg-value 102181
set routing-options srlg FRA30-FRA31_EAST srlg-value 102182
set routing-options srlg FRA21-FRA31_WEST srlg-value 102183
set routing-options srlg FRA21-FRA30_WEST srlg-value 102184
set routing-options srlg FRA21-FRA30_EAST srlg-value 102185
set routing-options srlg DUB08-DUB30_EAST srlg-value 102186
set routing-options srlg DUB07-DUB30_WEST srlg-value 102187
set routing-options srlg DBB-DUB08_WEST srlg-value 102188
set routing-options srlg DBB-DUB08_EAST srlg-value 102189
set routing-options srlg DBB-DUB07_WEST srlg-value 102190
set routing-options srlg DBB-DUB07_EAST srlg-value 102191
set routing-options srlg DBA-DUB08_EAST srlg-value 102192
set routing-options srlg DBA-DUB07_WEST srlg-value 102193
set routing-options srlg CPQ02-CPQ20_WEST srlg-value 102194
set routing-options srlg CPQ02-CPQ20_SOUTH srlg-value 102195
set routing-options srlg CPQ02-CPQ20_NORTH srlg-value 102196
set routing-options srlg CPQ02-CPQ20_EAST srlg-value 102197
set routing-options srlg CPQ01-CPQ20_WEST srlg-value 102198
set routing-options srlg CPQ01-CPQ02_EAST srlg-value 102199
set routing-options srlg CH2-CH3_WEST srlg-value 102200
set routing-options srlg CBR21-CBR22_SOUTH srlg-value 102201
set routing-options srlg CBR21-CBR22_NORTH srlg-value 102202
set routing-options srlg CBR20-CBR21_SOUTH srlg-value 102203
set routing-options srlg CBR20-CBR21_NORTH srlg-value 102204
set routing-options srlg BY4-PAO_EAST srlg-value 102205
set routing-options srlg BY21-PAO_WEST srlg-value 102206
set routing-options srlg BY21-BY4_SOUTH srlg-value 102207
set routing-options srlg BY21-BY4_NORTH srlg-value 102208
set routing-options srlg BL31-BL7_NORTH srlg-value 102209
set routing-options srlg BL20-BL3_WEST srlg-value 102210
set routing-options srlg BL20-BL3_EAST srlg-value 102211
set routing-options srlg BL20-BL31_SOUTH srlg-value 102212
set routing-options srlg ASH-BL20_WEST srlg-value 102213
set routing-options srlg AMS30-AMS31_WEST srlg-value 102214
set routing-options srlg AMS21-AMS31_EAST srlg-value 102215
set routing-options srlg AMS-AMS30_WEST srlg-value 102216
set routing-options srlg AMS-AMS21_EAST srlg-value 102217
set routing-options srlg FRA21-FRA23_NORTH srlg-value 102218
set routing-options srlg FRA21-FRA23_SOUTH srlg-value 102219
set routing-options srlg FRA23-FRA30_NORTH srlg-value 102220
set routing-options srlg FRA23-FRA30_SOUTH srlg-value 102221
set routing-options srlg BIO70-MAD30_SLS_308 srlg-value 102222
set routing-options srlg MAD30-MRS20_SLS_308 srlg-value 102223
set routing-options srlg BCN30-BIO70_SLS_308 srlg-value 102224
set routing-options srlg BCN30-MRS20_SLS_308 srlg-value 102225
set routing-options srlg HKG31-SGN30_AAG srlg-value 102343
set routing-options srlg HKG31-SGN30_TGNIA srlg-value 102227
set routing-options srlg CLARO1 srlg-value 102229
set routing-options srlg CLARO2 srlg-value 102230
set routing-options srlg TAINO srlg-value 102231
set routing-options srlg CBUS srlg-value 102232
set routing-options srlg GEMINI srlg-value 102233
set routing-options srlg EASTWEST srlg-value 102234
set routing-options srlg CFX srlg-value 102235
set routing-options srlg ARCOS_N srlg-value 102236
set routing-options srlg MIA-PR1_CWC_PATH2 srlg-value 102237
set routing-options srlg LON21-LTS_MSFT srlg-value 102238
set routing-options srlg TEB30-NYC30_ZAYO srlg-value 102239
set routing-options srlg TEB30-PHL01_LEAFROUTE_CENTURYLINK srlg-value 102240
set routing-options srlg PHL01-WA05_WILTELROUTE_CENTURYLINK srlg-value 102241
set routing-options srlg TEB30-TEB30_CAMPUS srlg-value 102242
set routing-options srlg BL20-LYH01_MSFT srlg-value 102243
set routing-options srlg WAS02-NYC30_MSFT srlg-value 102244
set routing-options srlg CYS04-DEN01_MSFT srlg-value 102245
set routing-options srlg HNL01-LAX30_AAG srlg-value 102246
set routing-options srlg CBR20-CBR22_CAMPUS_SOUTH srlg-value 102247
set routing-options srlg SYD03-TYO31_JGA srlg-value 102248
set routing-options srlg JGA-S srlg-value 102249
set routing-options srlg JGA-N srlg-value 102250
set routing-options srlg DAL-SN6_CENTURYLINK_PATH1 srlg-value 102251
set routing-options srlg DAL-SN6_CENTURYLINK_PATH2 srlg-value 102252
set routing-options srlg SAT03-SN6_MSFT srlg-value 102253
set routing-options srlg DM2-DSM05_EAST srlg-value 102254
set routing-options srlg DM3-DSM05_EAST srlg-value 102255
set routing-options srlg BOS32-BOS31_CROWNCASTLE_WEST srlg-value 102256
set routing-options srlg BOS32-BOS31_CROWNCASTLE_EAST srlg-value 102257
set routing-options srlg ATL30-MEM30_CENTURYLINK srlg-value 102258
set routing-options srlg CH4-MEM30_ZAYO srlg-value 102259
set routing-options srlg ATL30-TLH30_CENTURYLINK srlg-value 102260
set routing-options srlg ATL31-TLH30_CENTURYLINK srlg-value 102261
set routing-options srlg BN3-BN6_CAMPUS_WEST srlg-value 102262
set routing-options srlg BN3-BN6_CAMPUS_EAST srlg-value 102263
set routing-options srlg CO1-MWH01_CAMPUS_WEST srlg-value 102264
set routing-options srlg CO1-MWH01_CAMPUS_EAST srlg-value 102265
set routing-options srlg CO2-MWH01_CAMPUS_WEST srlg-value 102266
set routing-options srlg CO2-MWH01_CAMPUS_EAST srlg-value 102267
set routing-options srlg HAM30-OSL22_WEST_PATH1 srlg-value 102268
set routing-options srlg OSL22-SVG20_PATH1 srlg-value 102269
set routing-options srlg GVA20-ZRH21_NORTH srlg-value 102270
set routing-options srlg GVA20-ZRH20_SOUTH srlg-value 102271
set routing-options srlg DB3-DUB08_CAMPUS_EAST srlg-value 102272
set routing-options srlg DB5-DUB07_CAMPUS_EAST srlg-value 102273
set routing-options srlg DB5-DUB08_CAMPUS_EAST srlg-value 102274
set routing-options srlg DB3-DUB08_CAMPUS_WEST srlg-value 102275
set routing-options srlg DB5-DUB07_CAMPUS_WEST srlg-value 102276
set routing-options srlg DB5-DUB08_CAMPUS_WEST srlg-value 102277
set routing-options srlg OSA30-OSA31_MSFT srlg-value 102278
set routing-options srlg HKG30-TYO79_SJC srlg-value 102279
set routing-options srlg MRS21-PAR30_GTT_WEST srlg-value 102280
set routing-options srlg CH1-CHG_CENTURYLINK_PATH1 srlg-value 102281
set routing-options srlg CH1-CHG_CENTURYLINK_PATH2 srlg-value 102282
set routing-options srlg AMS11-AMS12_CAMPUS srlg-value 102283
set routing-options srlg AMS11-AMS30_WEST1_EUROFIBER_OPSPAN srlg-value 102284
set routing-options srlg AMS11-AMS30_EAST1_EUROFIBER_OPSPAN srlg-value 102285
set routing-options srlg AMS12-AMS21_WEST2_RELINED_OPSPAN srlg-value 102286
set routing-options srlg AMS12-AMS21_EAST2_RELINED_OPSPAN srlg-value 102287
set routing-options srlg AMS06-AMS30_WEST1_EUROFIBER_OPSPAN srlg-value 102288
set routing-options srlg AMS06-AMS30_EAST1_EUROFIBER_OPSPAN srlg-value 102289
set routing-options srlg AMS06-AMS21_WEST2_RELINED_OPSPAN srlg-value 102290
set routing-options srlg AMS06-AMS21_EAST2_RELINED_OPSPAN srlg-value 102291
set routing-options srlg BL2-BL20_WEST_MSFT srlg-value 102292
set routing-options srlg BL4-BL20_WEST_MSFT srlg-value 102293
set routing-options srlg BLU-BL20_WEST_MSFT srlg-value 102294
set routing-options srlg MRS20-TLV30_ALEXANDROS_TBD srlg-value 102295
set routing-options srlg TLV30-VIE_JONAH_TBD srlg-value 102296
set routing-options srlg DAL-DFW31_CENTURYLINK_WEST srlg-value 102297
set routing-options srlg DAL-DFW31_CENTURYLINK_EAST srlg-value 102298
set routing-options srlg HOU01-HOU30_ZAYO_WEST srlg-value 102299
set routing-options srlg HOU01-HOU30_ZAYO_EAST srlg-value 102300
set routing-options srlg VIE-VIE20_EUNETWORKS_METROLIT_TEMP srlg-value 102301
set routing-options srlg MBA-NBO_WIOCC_BACKHAUL srlg-value 102302
set routing-options srlg HAM31-WAW20_TBD srlg-value 102303
set routing-options srlg BER20-WAW02_TBD srlg-value 102304
set routing-options srlg VIE-WAW02_TBD srlg-value 102305
set routing-options srlg MEX31-AMADO_NERVO_MEXICO_CITY srlg-value 102306
set routing-options srlg FM1517-MAINLAND_DR_SAN_ANTONIO srlg-value 102307
set routing-options srlg MEX31-SN1_PATH2_TELMEX srlg-value 102308
set routing-options srlg EWR30-TEB30_CROWN_CASTLE srlg-value 102309
set routing-options srlg MNL30-SG3_APCN2 srlg-value 102312
set routing-options srlg ATA-ATL33_WINDSTREAM_WEST srlg-value 102313
set routing-options srlg ATA-ATL33_WINDSTREAM_EAST srlg-value 102314
set routing-options srlg SCL02-CYS10_MSFT srlg-value 102315
set routing-options srlg CYS04-CYS10_MSFT srlg-value 102316
set routing-options srlg CYS04-BY4_MSFT srlg-value 102317
set routing-options srlg LAX03-PHX20_ZAYO srlg-value 102318
set routing-options srlg CAK02-HGR01_MSFT srlg-value 102319
set routing-options srlg HGR01-BL20_MSFT srlg-value 102320
set routing-options srlg ATL30-345_COURTLAND_MSFT srlg-value 102321
set routing-options srlg NORCROSS_GA-AHN70_MSFT_PIPE_ENCASED srlg-value 102322
set routing-options srlg 345_COURTLAND-NORCROSS_GA_MSFT srlg-value 102323
set routing-options srlg AHN70-BN6_MSFT srlg-value 102324
set routing-options srlg ENDEAVOUR srlg-value 102325
set routing-options srlg BY21-SYD03_AAG_ENDEAVOUR srlg-value 102326
set routing-options srlg PUS04-SEL20_LGUPLUS_PROTECTED srlg-value 102327
set routing-options srlg PUS04-SEL20_KT_PROTECTED srlg-value 102328
set routing-options srlg ATA-ATL30_PATH2_TBDVENDOR srlg-value 102329
set routing-options srlg PUS04-SG3_APG srlg-value 102330
set routing-options srlg RIO03-RIO30_CAMPUS_WEST srlg-value 102331
set routing-options srlg SN1-SN5_EAST srlg-value 102332
set routing-options srlg MRS20-PAR21_EUNETWORKS_EAST srlg-value 102333
set routing-options srlg BKK30-HKG20_APG01 srlg-value 102334
set routing-options srlg BKK30-HKG31_AAE1 srlg-value 102335
set routing-options srlg BRW20-ORG20_COLT_PATH1 srlg-value 102336
set routing-options srlg BRW20-ORG20_COLT_PATH2 srlg-value 102337
set routing-options srlg BRW20-ORG20_COLT_PATH3 srlg-value 102338
set routing-options srlg BRW20-BRW20_COLT_EAST srlg-value 102339
set routing-options srlg BRW20-BRW20_COLT_WEST srlg-value 102340
set routing-options srlg CPT02-CPT20_MADISON_EAST srlg-value 102341
set routing-options srlg CPT02-CPT20_MADISON_WEST srlg-value 102342
set routing-options srlg SIN30-SGN30_AAE1 srlg-value 102344
set routing-options srlg BN1-BN8_CAMPUS_WEST srlg-value 102345
set routing-options srlg BN3-BN8_CAMPUS_WEST srlg-value 102346
set routing-options srlg BN6-BN8_CAMPUS_WEST srlg-value 102347
set routing-options srlg BN4-BN8_CAMPUS_NORTH srlg-value 102348
set routing-options srlg BN4-BN8_CAMPUS_SOUTH srlg-value 102349
set routing-options srlg BN1-BN4_CAMPUS_EAST srlg-value 102350
set routing-options srlg BN3-BN4_CAMPUS_EAST srlg-value 102351
set routing-options srlg BN6-BN4_CAMPUS_EAST srlg-value 102352
set routing-options srlg BN1-BN3_CAMPUS srlg-value 102353
set routing-options srlg HKG20-APGHKGCLS_APG_VIETTEL srlg-value 102354
set routing-options srlg APGHKGCLS-APGBU4_APG srlg-value 102355
set routing-options srlg APGSGNCLS-APGBU3_APG srlg-value 102357
set routing-options srlg APGSGNCLS-SGN30_APG srlg-value 102358
set routing-options srlg PUS03-APGPUSCLS_APG srlg-value 102359
set routing-options srlg APGPUSCLS-APGBU8 srlg-value 102373
set routing-options srlg APGBU1-APGBU8_APG srlg-value 102361
set routing-options srlg APGSGCLS-APGBU1_APG srlg-value 102362
set routing-options srlg APGSGCLS-SG3_APG_KT srlg-value 102363
set routing-options srlg HKG20-APGHKGCLS_APG_STARHUB srlg-value 102364
set routing-options srlg APGBU1-APGBU4_APG srlg-value 102365
set routing-options srlg APGSGCLS-SG3_APG_STARHUB srlg-value 102366
set routing-options srlg HKG20-APGHKGCLS_APG_CHINAMOBILE srlg-value 102367
set routing-options srlg APGSGCLS-SG3_APG_CHINAMOBILE srlg-value 102368
set routing-options srlg HKG20-APGHKGCLS_APG_SINGTEL srlg-value 102369
set routing-options srlg APGSGCLS-SG3_APG_SINGTEL srlg-value 102370
set routing-options srlg HKG20-APGHKGCLS_APG_KT srlg-value 102371
set routing-options srlg APGBU4-APGBU8_APG srlg-value 102372
set routing-options srlg APGPUSCLS-SEL20_APG srlg-value 102374
set routing-options srlg TPE30-APGTPECLS_APG srlg-value 102375
set routing-options srlg APGTPECLS-APGBU5 srlg-value 102376
set routing-options srlg APGBU5-APGBU9_APG srlg-value 102377
set routing-options srlg APGBU9-APGTYOCLS_APG srlg-value 102378
set routing-options srlg APGTYOCLS-TYO30_APG srlg-value 102379
set routing-options srlg HKG31-APGHKGCLS_APG_CHT srlg-value 102380
set routing-options srlg OSA31-APGOSACLS_APG_SINGTEL srlg-value 102382
set routing-options srlg APGOSACLS-APGBU9_APG srlg-value 102383
set routing-options srlg APGBU1-APGBU2_APG srlg-value 102384
set routing-options srlg APGSGCLS-SG2_APG_SINGTEL srlg-value 102385
set routing-options srlg BKK30-APGMYCLS_APG srlg-value 102386
set routing-options srlg APGMYCLS-APGBU1_APG srlg-value 102387
set routing-options srlg APGHKGCLS-HKG20_APG srlg-value 102388
set routing-options srlg HKG31-APGHKGCLS_APG_CHINAMOBILE srlg-value 102389
set routing-options srlg APGBU4-APGBU9_APG srlg-value 102390
set routing-options srlg APGOSACLS-OSA31_APG srlg-value 102391
set routing-options srlg HKG31-SJCHKGCLS_SJC_SINGTEL srlg-value 102392
set routing-options srlg SJCHKGCLS-SJCBU3_SJC srlg-value 102393
set routing-options srlg SJCBU3-SJCTYOCLS_SJC srlg-value 102394
set routing-options srlg SJCTYOCLS-TYO79_SJC srlg-value 102395
set routing-options srlg HKG30-SJCHKGCLS_SJC srlg-value 102396
set routing-options srlg SJCBU3-SJCSGCLS_SJC srlg-value 102397
set routing-options srlg SJCSGCLS-SG2_SJC_MSFT_SINGTEL srlg-value 102398
set routing-options srlg SJCSGCLS-SJCTYOCLS_SJC srlg-value 102399
set routing-options srlg SJCSGCLS-SG2_SJC_SINGTEL srlg-value 102400
set routing-options srlg HKG31-SJCHKGCLS_SJC_DHT srlg-value 102401
set routing-options srlg MNL30-SJCMNLCLS_SJC srlg-value 102402
set routing-options srlg SJCMNLCLS-SJCBU2_SJC srlg-value 102403
set routing-options srlg SJCSGCLS-SJCBU2_SJC srlg-value 102404
set routing-options srlg BKK30-KUL01_AIS_PROTECTED srlg-value 102405
set routing-options srlg BKK30-KUL30_AIS_PROTECTED srlg-value 102406
set routing-options srlg HKG20-TGNIAHKGCLS_TGNIA_TATA srlg-value 102407
set routing-options srlg TGNIAHKGCLS-TGNIABU3_TGNIA srlg-value 102408
set routing-options srlg TGNIABU3-TGNIASGCLS_TGNIA srlg-value 102409
set routing-options srlg TGNIASGCLS-SG3_TGNIA srlg-value 102410
set routing-options srlg TGNIASGCLS-TGNIABU4_TGNIA srlg-value 102411
set routing-options srlg TGNIABU4-TGNPTYOCLS_TGNIA_TGNP srlg-value 102412
set routing-options srlg TGNP srlg-value 102413
set routing-options srlg TGNPTYOCLS-TYO31_TGNIA_TGNP srlg-value 102414
set routing-options srlg TGNIAHKGCLS-TGNIABU4_TGNIA srlg-value 102415
set routing-options srlg TGNIATYOCLS-OSA20_TGNIA_TGNP_TATA srlg-value 102416
set routing-options srlg GUM01-TGNPGUMCLS_TGNP srlg-value 102417
set routing-options srlg TGNPGUMCLS-TGNPTYOCLS_TGNP srlg-value 102418
set routing-options srlg TGNPTYOCLS-TYO31_TGNP srlg-value 102419
set routing-options srlg HKG20-TGNIAHKGCLS_TGNIA_PCCW srlg-value 102420
set routing-options srlg TGNIATYOCLS-OSA20_TGNIA_TGNP_PCCW srlg-value 102421
set routing-options srlg SIN30-ASESINCLS_ASE srlg-value 102422
set routing-options srlg ASESINCLS-ASETYOCLS_ASE srlg-value 102423
set routing-options srlg ASETYOCLS-TYO31_ASE srlg-value 102424
set routing-options srlg HKG20-ASEHKGCLS_ASE_PLDT srlg-value 102425
set routing-options srlg ASEBU2-ASEBU3_ASE srlg-value 102427
set routing-options srlg ASEBU3-ASEMNLCLS_ASE srlg-value 102428
set routing-options srlg ASEMNLCLS-MNL30_ASE srlg-value 102429
set routing-options srlg HKG20-ASEHKGCLS_ASE_NTT srlg-value 102430
set routing-options srlg ASEHKGCLS-ASEBU2_ASE srlg-value 102431
set routing-options srlg ASEBU2-ASETYOCLS_ASE srlg-value 102432
set routing-options srlg ATL31-FLL30_CTL srlg-value 102433
set routing-options srlg ATL30-MIA_CTL_PATH2 srlg-value 102434
set routing-options srlg RED30-YEL02_CTL_PATH1 srlg-value 102435
set routing-options srlg RED31-YEL02_CTL_PATH2 srlg-value 102436
set routing-options srlg GRN30-YEL02_CTL_PATH1 srlg-value 102437
set routing-options srlg GRN31-YEL02_CTL_PATH2 srlg-value 102438
set routing-options srlg PHX10-PHX70_SOUTH srlg-value 102439
set routing-options srlg PHX10-PHX70_NORTH srlg-value 102440
set routing-options srlg FRA23-ZRH21_EUNETWORKS srlg-value 102441
set routing-options srlg OSA31-APGOSACLS_APG_TIME srlg-value 102442
set routing-options srlg OSA31-APGOSACLS_APG_CHINAMOBILE srlg-value 102443
set routing-options srlg HKG31-APGHKGCLS_APG_TIME srlg-value 102444
set routing-options srlg HKG31-APGHKGCLS_APG srlg-value 102445
set routing-options srlg PHX20-PHX30_EAST srlg-value 102446
set routing-options srlg PHX20-PHX21_CAMPUS_WEST srlg-value 102447
set routing-options srlg PHX21-PHX30_NORTH srlg-value 102448
set routing-options srlg PHX21-PHX30_SOUTH srlg-value 102449
set routing-options srlg DM2-DM3_CAMPUS srlg-value 102450
set routing-options srlg BOG30-ATL31_UFINET_PCCS_CABLE srlg-value 102451
set routing-options srlg COLUMBIA_CLS-BOG30_UFINET_PROTECT_4 srlg-value 102452
set routing-options srlg BJB-SHA_CHINATELECOM_PATH1 srlg-value 102453
set routing-options srlg BJB-SHA_CHINATELECOM_PATH2 srlg-value 102454
set routing-options srlg AMS06-AMS30_WEST2_RELINED_OPSPAN srlg-value 102455
set routing-options srlg AMS06-AMS30_EAST2_RELINED_OPSPAN srlg-value 102456
set routing-options srlg AMS06-AMS21_EAST1_EUROFIBER_OPSPAN srlg-value 102457
set routing-options srlg AMS06-AMS21_WEST1_EUROFIBER_OPSPAN srlg-value 102458
set routing-options srlg FRA-FRA20_PATH1 srlg-value 102459
set routing-options srlg AMS-LEJ20_PATH1 srlg-value 102460
set routing-options srlg MSP30-MSP31_CENTURYLINK_WEST srlg-value 102461
set routing-options srlg MSP30-MSP31_CENTURYLINK_EAST srlg-value 102462
set routing-options srlg OSA20-TYO31_TAIHEIYO srlg-value 102463
set routing-options srlg OSA20-TYO31_NIHONKAI srlg-value 102464
set routing-options srlg CAI30-MRS20_TE_IMEWE srlg-value 102465
set routing-options srlg CAI30-MRS20_TE_EIG srlg-value 102466
set routing-options srlg PNQ20-PNQ30_AIRTEL_PATH1 srlg-value 102467
set routing-options srlg PNQ20-PNQ30_AIRTEL_PATH2 srlg-value 102468
set routing-options srlg BOM30-MAA01_TATA_01_02_PROTECTED srlg-value 102469
set routing-options srlg PUS03-PUS04_TERRESTRIAL_SKB srlg-value 102470
set routing-options srlg MIL01-VIE20_TBD srlg-value 102471
set routing-options srlg MIL01-MRS21_TBD srlg-value 102472
set routing-options srlg MIL20-ZRH20_TBD srlg-value 102473
set routing-options srlg GVA20-MIL20_TBD srlg-value 102474
set routing-options srlg MIL20-MRS20_TBD srlg-value 102475
set routing-options srlg AMS30-PAR30_TBD srlg-value 102476
set routing-options srlg HAM31-STO31_TBD srlg-value 102477
set routing-options srlg AMS30-STO30_TBD srlg-value 102478
set routing-options srlg CPH30-STO31_TBD srlg-value 102479
set routing-options srlg MRS21-PAR30_COLT_WEST srlg-value 102480
set routing-options srlg BJB-BJS20_PROTECTED01 srlg-value 102481
set routing-options srlg BJB-BJS20_PROTECTED02 srlg-value 102482
set routing-options srlg SHA-SHA20_PROTECTED01 srlg-value 102483
set routing-options srlg SHA-SHA20_PROTECTED02 srlg-value 102484
set routing-options srlg CPH30-HAM31_EUNETWORKS srlg-value 102485
set routing-options srlg BIO70-LIS01_MSFT_COLT srlg-value 102486
set routing-options srlg PUS04-PUS20_NORTH srlg-value 102487
set routing-options srlg PUS04-PUS20_SOUTH srlg-value 102488
set routing-options srlg PUS04-PUS20_EAST srlg-value 102489
set routing-options srlg PUS04-PUS20_WEST srlg-value 102490
set routing-options srlg BOM02-HYD30_JIO_PROTECTED srlg-value 102491
set routing-options srlg HYD30-MAA02_JIO_PROTECTED srlg-value 102492
set routing-options srlg AUH20-DXB21_ETISALAT_WEST srlg-value 102493
set routing-options srlg AUH20-DXB22_ETISALAT_EAST srlg-value 102494
set routing-options srlg DXB22-MRS20_ETISALAT_AAE1 srlg-value 102495
set routing-options srlg OSL20-OSL22_NORTH srlg-value 102496
set routing-options srlg OSL20-OSL22_SOUTH srlg-value 102497
set routing-options srlg OSA31-APGOSACLS_APG_STARHUB srlg-value 102498
set routing-options srlg APGSGCLS-SG2_APG_STARHUB srlg-value 102499
set routing-options srlg SIN30-BBGCLSPEN_BBG_RELIANCEJIO srlg-value 102500
set routing-options srlg BBGCLSPEN-BBGBU1_BBG srlg-value 102501
set routing-options srlg BBGBU1-BBGBU3_BBG srlg-value 102502
set routing-options srlg BBGBU3-BBGCLSBOM_BBG srlg-value 102503
set routing-options srlg BBGCLSBOM-BOM30_BBG_RELIANCEJIO srlg-value 102504
set routing-options srlg PER30-PER01_OPTUS_SRVCKT00001205 srlg-value 102505
set routing-options srlg AMS30-LON24_TANGERINE_COLT_PATH1 srlg-value 102506
set routing-options srlg GRU30-SCL20_SILICA srlg-value 102507
set routing-options srlg SAO30-SCL21_TELXIUS_01 srlg-value 102508
set routing-options srlg VAP-SCL21_SAM1 srlg-value 102509
set routing-options srlg C2CHKGCLS-C2CSEGMENT1 srlg-value 102511
set routing-options srlg C2CSEGMENT1-C2CMNLCLS srlg-value 102512
set routing-options srlg C2CMNLCLS-C2CSEGMENT5 srlg-value 102513
set routing-options srlg C2CSEGMENT5-C2CTYOCLS srlg-value 102514
set routing-options srlg C2CTYOCLS-TYO30_TELSTRA srlg-value 102515
set routing-options srlg SG2-C2CSGCLS_TELSTRA srlg-value 102516
set routing-options srlg C2CSGCLS-C2CSEGMENT6 srlg-value 102517
set routing-options srlg C2CSEGMENT6-C2CMNLCLS srlg-value 102518
set routing-options srlg AMS30-LON24_CIRCENORTH_EUNETWORKS srlg-value 102519
set routing-options srlg LON24-PAR21_EUROTUNNEL_EUNETWORKS srlg-value 102520
set routing-options srlg HKG20-APCN2HKGCLS_KT srlg-value 102521
set routing-options srlg APCN2HKGCLS-APCN2S3 srlg-value 102522
set routing-options srlg APCN2S3-APCN2SHACLS srlg-value 102523
set routing-options srlg APCN2SHACLS-APCN2S4W srlg-value 102524
set routing-options srlg APCN2S4W-APCN2PUSCLS srlg-value 102525
set routing-options srlg APCN2PUSCLS-SEL20_KT srlg-value 102526
set routing-options srlg CLE02-CLE30_NORTH srlg-value 102527
set routing-options srlg CLE02-CLE30_SOUTH srlg-value 102528
set routing-options srlg APGOSACLS-APGBU2_APG srlg-value 102529
set routing-options srlg APGBU2-APGBU3_APG srlg-value 102530
set routing-options srlg APGBU3-APGBU4_APG srlg-value 102531
set routing-options srlg APGBU4-APGBU5_APG srlg-value 102532
set routing-options srlg APGBU5-APGBU8_APG srlg-value 102533
set routing-options srlg APGBU8-APGBU9_APG srlg-value 102534
set routing-options srlg PUS04-APGPUSCLS_APG srlg-value 102535
set routing-options srlg OSL30-OSL22_CAMPUS srlg-value 102536
set routing-options srlg MRS02-MRS20_CAMPUS srlg-value 102537
set routing-options srlg LON22-LOS30_GLO1 srlg-value 102538
set routing-options srlg SIN30-ASESINCLS_ASE_STARHUB srlg-value 102539
set routing-options srlg ASESINCLS_ASEBU1_ASE srlg-value 102540
set routing-options srlg ASEBU1_ASEBU2_ASE srlg-value 102541
set routing-options srlg BOM02_SG2_SMW4 srlg-value 102542
set routing-options srlg FLL30-MIA-NORTH srlg-value 102543
set routing-options srlg FLL30-MIA-SOUTH srlg-value 102544
set routing-options srlg FRA30-SOF01_PATH2 srlg-value 102545
set routing-options srlg DFW05-MEX31_TELMEX srlg-value 101710
set routing-options srlg RIO03-RIO20_NORTH srlg-value 102310
set routing-options srlg RIO03-RIO20_SOUTH srlg-value 102311
set routing-options srlg SEL21-RNALCLSPUS_RNAL srlg-value 101173
set routing-options srlg BL20-ORF70_MAREA_DIVERSE srlg-value 102546
set routing-options srlg LAX-LAX31_EAST srlg-value 102547
set routing-options srlg PHX70-SN6_ZAYO srlg-value 102548
set routing-options srlg HKG31-RNALCLSHKG_RNAL srlg-value 102549
set routing-options srlg RNALCLSHKG-RNALCLSPUS_RNAL srlg-value 102550
set routing-options srlg PUS20-RNALCLSPUS-RNAL srlg-value 102551
set routing-options srlg SIN30-BBGCLSPEN_BBG_AIRTEL srlg-value 102552
set routing-options srlg BBGCLSBOM-BOM30_BBG_AIRTEL srlg-value 102553
set routing-options srlg PHX10-PHX31_WEST srlg-value 102554
set routing-options srlg PHX31-PHX70_EAST srlg-value 102555
set routing-options srlg MAA02-MAA30-AIRTEL-1 srlg-value 102556
set routing-options srlg BJ1-PUS04_CABLE_TBD_CHINATELECOM srlg-value 102557
set routing-options srlg HKG31-C2CHKGCLS_TELSTRA srlg-value 102558
set routing-options srlg C2CHKGCLS-C2CSEG7B srlg-value 102559
set routing-options srlg C2CSGE7A-C2CSEG7B srlg-value 102560
set routing-options srlg C2CSEG7A-C2CSGCLS srlg-value 102561
set routing-options srlg C2CSGCLS-SG2_TELSTRA srlg-value 102562
set routing-options forwarding-table export load-balancing
set routing-options forwarding-table indirect-next-hop
set protocols bgp path-selection always-compare-med
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP type external
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP description "IPv4 Route Servers"
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP import DENY-ALL
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP import GLOBAL-STD-ROUTESERVER-PEER-IN
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP family inet unicast prefix-limit maximum 200000
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP family inet unicast prefix-limit teardown 90
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP export DENY-ALL
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-ROUTESERVER-PEERGROUP multipath
set protocols bgp group ITE-BGP-HIJACK-MITIGATION type internal
set protocols bgp group ITE-BGP-HIJACK-MITIGATION description "BGP Group for BGP Hijack MItigation"
set protocols bgp group ITE-BGP-HIJACK-MITIGATION local-address 10.3.159.85
set protocols bgp group ITE-BGP-HIJACK-MITIGATION import ITE-HIJACK-MITIGATION-IN
set protocols bgp group ITE-BGP-HIJACK-MITIGATION import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group ITE-BGP-HIJACK-MITIGATION family inet unicast add-path receive
set protocols bgp group ITE-BGP-HIJACK-MITIGATION family inet6 unicast add-path receive
set protocols bgp group ITE-BGP-HIJACK-MITIGATION export DENY-ALL
set protocols bgp group ITE-BGP-HIJACK-MITIGATION peer-as 8075
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP type external
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP description "IPv6 Public Peers"
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP import GLOBAL-STD-FREEPUBLIC-PEER-IN
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP import IPV6-GLOBAL-STD-PEER-IN
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP family inet6 unicast prefix-limit maximum 2000
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP family inet6 unicast prefix-limit teardown idle-timeout 45
deactivate protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP family inet6 unicast prefix-limit
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP export IPV6-GLOBAL-STD-PEER-OUT
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP multipath
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP neighbor 2a82::2 peer-as 8888
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP neighbor 2001:dea:0:40::2 description "IXIA LC9P4"
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP neighbor 2001:dea:0:40::2 peer-as 55561
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP type external
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP description "PRIVATE Peers"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP family inet unicast prefix-limit maximum 20000
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP family inet unicast prefix-limit teardown 90
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP multipath
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 description "16509:Amazon.com:amzn-noc-contact@amazon.com:+1.855.754.0997:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 import RPKI-VALIDITY-REJECT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 export ITE-EdgeToBackboneCongestionControl-99.82.180.152
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 99.82.180.152 peer-as 16509
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 description "36351:SoftLayer:peering@softlayer.com:214-442-0603:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 import RPKI-VALIDITY-REJECT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 authentication-key $PASS$
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 50.97.16.44 peer-as 36351
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 description "22616:Zscaler AS22616:ipnoc@zscaler.com:+14087010534:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 import RPKI-VALIDITY-REJECT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 export ITE-EdgeToBackboneCongestionControl-165.225.250.65
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 165.225.250.65 peer-as 22616
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 description "14340:SALESFORCE.COM:PEERING@SALESFORCE.COM:8484044613:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 import RPKI-VALIDITY-REJECT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 104.44.6.148 peer-as 14340
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 description "54113:FASTLY INC.:PEERING@FASTLY.COM:+1-415-404-9374:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 import RPKI-VALIDITY-REJECT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 199.27.73.230 peer-as 54113
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 23.203.153.20 description "20940:Akamai:noc@akamai.com:+1 617 444-3007:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 23.203.153.20 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 23.203.153.20 peer-as 20940
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 140.82.127.147 description "36459:GitHub Inc.:noc@github.com:+19179948634:SVC-WAN-EDGE"
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 140.82.127.147 export ITE-EdgeToBackboneCongestionControl-140.82.127.147
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 140.82.127.147 export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPRIVATE-PEERGROUP neighbor 140.82.127.147 peer-as 36459
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP type external
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP description "Public Peers BACKUP"
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet unicast prefix-limit maximum 20000
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet unicast prefix-limit teardown 90
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP-BACKUP multipath
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP type external
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP description "IPv4 MAPS Route Servers"
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP import GLOBAL-STD-ROUTESERVER-PEER-IN
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP family inet unicast prefix-limit maximum 20000
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP family inet unicast prefix-limit teardown 90
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-MAPS-ROUTESERVER-PEERGROUP multipath
set protocols bgp group ITE-BGP-LISTENER type internal
set protocols bgp group ITE-BGP-LISTENER description "BGP Group for BGP Listener"
set protocols bgp group ITE-BGP-LISTENER local-address 10.3.159.85
set protocols bgp group ITE-BGP-LISTENER import DENY-ALL
set protocols bgp group ITE-BGP-LISTENER family inet unicast
set protocols bgp group ITE-BGP-LISTENER family inet6 unicast
set protocols bgp group ITE-BGP-LISTENER export STATIC-TO-BGP
set protocols bgp group ITE-BGP-LISTENER export CONN-TO-BGP
set protocols bgp group ITE-BGP-LISTENER cluster 10.3.159.85
set protocols bgp group ITE-BGP-LISTENER peer-as 8075
set protocols bgp group GLOBAL-EBGP-AR type external
set protocols bgp group GLOBAL-EBGP-AR import STD-CUST-EBGP-IN
set protocols bgp group GLOBAL-EBGP-AR import CUST-EBGP-AR-IN
set protocols bgp group GLOBAL-EBGP-AR import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group GLOBAL-EBGP-AR export ADVERTISE-OOB-SPECIFICS
set protocols bgp group GLOBAL-EBGP-AR export GLOBAL-CUST-DEFAULT-OUT
set protocols bgp group GLOBAL-EBGP-AR peer-as 64512
set protocols bgp group GLOBAL-EBGP-AR multipath
set protocols bgp group IPV6-GLOBAL-EBGP-AR type external
set protocols bgp group IPV6-GLOBAL-EBGP-AR import IPV6-STD-CUST-EBGP-IN
set protocols bgp group IPV6-GLOBAL-EBGP-AR import CUST-EBGP-AR-IN
set protocols bgp group IPV6-GLOBAL-EBGP-AR import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group IPV6-GLOBAL-EBGP-AR export IPV6-SEND-DEFAULT-ONLY
set protocols bgp group IPV6-GLOBAL-EBGP-AR peer-as 64512
set protocols bgp group IPV6-GLOBAL-EBGP-AR multipath
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP type external
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP description "IPv6 Private Peers"
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP import IPV6-GLOBAL-STD-PEER-IN
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP family inet6 unicast prefix-limit maximum 2000
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP family inet6 unicast prefix-limit teardown idle-timeout 45
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP export IPV6-GLOBAL-STD-PEER-OUT
set protocols bgp group IPV6-8075-STD-FREEPRIVATE-PEERGROUP multipath
set protocols bgp group BGP-MONITOR type internal
set protocols bgp group BGP-MONITOR description "BGP Group for all read only bgp monitoring tools"
set protocols bgp group BGP-MONITOR local-address 10.3.159.85
set protocols bgp group BGP-MONITOR import DENY-ALL
set protocols bgp group BGP-MONITOR family inet unicast
set protocols bgp group BGP-MONITOR family inet6 unicast
set protocols bgp group BGP-MONITOR export STATIC-TO-BGP
set protocols bgp group BGP-MONITOR export CONN-TO-BGP
set protocols bgp group BGP-MONITOR cluster 10.3.159.85
set protocols bgp group BGP-MONITOR peer-as 8075
set protocols bgp group LOCAL-RR-CLIENT type internal
set protocols bgp group LOCAL-RR-CLIENT local-address 10.3.159.85
set protocols bgp group LOCAL-RR-CLIENT import STD-CUST-IBGP-IN
set protocols bgp group LOCAL-RR-CLIENT import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group LOCAL-RR-CLIENT export SET-NEXT-HOP-SELF
set protocols bgp group LOCAL-RR-CLIENT export default-originate-ibgp
set protocols bgp group LOCAL-RR-CLIENT export CUST-AR-LEAK-COMM-OUT
set protocols bgp group LOCAL-RR-CLIENT export DENY-ALL
set protocols bgp group LOCAL-RR-CLIENT cluster 10.3.159.85
set protocols bgp group LOCAL-RR-CLIENT peer-as 8075
set protocols bgp group LOCAL-RR-CLIENT multipath
set protocols bgp group IPV6-LOCAL-RR-CLIENT type internal
set protocols bgp group IPV6-LOCAL-RR-CLIENT local-address 2a01:111:2000::5:f000:12
set protocols bgp group IPV6-LOCAL-RR-CLIENT import IPV6-STD-CUST-IBGP-IN
set protocols bgp group IPV6-LOCAL-RR-CLIENT import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group IPV6-LOCAL-RR-CLIENT export IPV6-SEND-DEFAULT-ONLY
set protocols bgp group IPV6-LOCAL-RR-CLIENT cluster 10.3.159.85
set protocols bgp group IPV6-LOCAL-RR-CLIENT peer-as 8075
set protocols bgp group IPV6-LOCAL-RR-CLIENT multipath
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP type external
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP description "IPv6 Route Servers"
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP import DENY-ALL
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP import IPV6-GLOBAL-STD-PEER-IN
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP import GLOBAL-STD-ROUTESERVER-PEER-IN
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP family inet6 unicast prefix-limit maximum 100000
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP family inet6 unicast prefix-limit teardown idle-timeout 45
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP export DENY-ALL
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP export IPV6-GLOBAL-STD-PEER-OUT
set protocols bgp group IPV6-8075-STD-ROUTESERVER-PEERGROUP multipath
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP type external
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP description "Public Peers"
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP import SET-BGP-ORIGIN-IGP
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP import GLOBAL-STD-PEER-IN
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP import GLOBAL-STD-FREEPUBLIC-PEER-IN
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP family inet unicast prefix-limit maximum 20000
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP family inet unicast prefix-limit teardown 90
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP family inet unicast prefix-limit teardown idle-timeout 45
deactivate protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP family inet unicast prefix-limit
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP export GLOBAL-STD-PEER-OUT
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP multipath
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP neighbor 43.243.21.1 description "IXIA LC9P4"
set protocols bgp group 8075-STD-FREEPUBLIC-PEERGROUP neighbor 43.243.21.1 peer-as 55561
set protocols bgp group ITE-BGP-CONDUIT type external
set protocols bgp group ITE-BGP-CONDUIT description "ITE BGP Conduit, contact moiswanv@microsoft.com"
set protocols bgp group ITE-BGP-CONDUIT multihop ttl 255
set protocols bgp group ITE-BGP-CONDUIT accept-remote-nexthop
set protocols bgp group ITE-BGP-CONDUIT import ITE-BGP-CONDUIT-IN
set protocols bgp group ITE-BGP-CONDUIT family inet unicast
set protocols bgp group ITE-BGP-CONDUIT family inet6 unicast
set protocols bgp group ITE-BGP-CONDUIT export DENY-ALL
set protocols bgp group ITE-BGP-CONDUIT peer-as 64991
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP type external
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP description "IPV6 Public Peers BACKUP"
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import SET-BGP-ORIGIN-IGP
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import IPV6-GLOBAL-STD-PEER-IN
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP import GLOBAL-STD-FREEPUBLIC-PEER-IN-BACKUP
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet6 unicast prefix-limit maximum 2000
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP family inet6 unicast prefix-limit teardown idle-timeout 45
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP export IPV6-GLOBAL-STD-PEER-OUT
set protocols bgp group IPV6-8075-STD-FREEPUBLIC-PEERGROUP-BACKUP multipath
set protocols bgp group VPNV4-VPNV6-SERVER type internal
set protocols bgp group VPNV4-VPNV6-SERVER description "VPNv4 and VPNv6 Clients"
set protocols bgp group VPNV4-VPNV6-SERVER local-address 10.20.85.9
set protocols bgp group VPNV4-VPNV6-SERVER family inet-vpn unicast
set protocols bgp group VPNV4-VPNV6-SERVER family inet6-vpn unicast
set protocols bgp group VPNV4-VPNV6-SERVER peer-as 8075
set protocols bgp group BING-EDGE-BGP-GROUP type external
set protocols bgp group BING-EDGE-BGP-GROUP description "CUST:AZCDN:bingdns@microsoft.com"
set protocols bgp group BING-EDGE-BGP-GROUP import STD-CUST-EBGP-IN
set protocols bgp group BING-EDGE-BGP-GROUP import BINGEDGE-SUBREGIONAL
set protocols bgp group BING-EDGE-BGP-GROUP import CUST-BING-EDGE-IN
set protocols bgp group BING-EDGE-BGP-GROUP import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group BING-EDGE-BGP-GROUP family inet unicast prefix-limit maximum 1000
set protocols bgp group BING-EDGE-BGP-GROUP family inet unicast prefix-limit teardown 90
set protocols bgp group BING-EDGE-BGP-GROUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group BING-EDGE-BGP-GROUP export ( GLOBAL-CUST-DEFAULT-OUT )
set protocols bgp group BING-EDGE-BGP-GROUP peer-as 8068
set protocols bgp group BING-EDGE-BGP-GROUP multipath
set protocols bgp group BING-EDGE-BGP-GROUP neighbor 10.22.125.89 description PROP:BINGEDGE:AS8068:ae170:phynetedge.com:
set protocols bgp group BING-EDGE-BGP-GROUP neighbor 10.22.125.93 description PROP:BINGEDGE:AS8068:ae171:phynetedge.com:
set protocols bgp group BING-EDGE-BGP-GROUP neighbor 82.1.0.1 description PROP:IXIA:AS8068:et0/0/43:tester:
deactivate protocols bgp group BING-EDGE-BGP-GROUP neighbor 82.1.0.1
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP type external
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP description "CUST:AZCDN:bingdns@microsoft.com"
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP import IPV6-STD-CUST-EBGP-IN
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP import BINGEDGE-SUBREGIONAL
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP import IPV6-CUST-BING-EDGE-IN
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP family inet6 unicast prefix-limit maximum 1000
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP family inet6 unicast prefix-limit teardown idle-timeout 45
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP export IPV6-GLOBAL-CUST-DEFAULT-OUT
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP peer-as 8068
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP multipath
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP neighbor 2a01:111:222:148::6e description PROP:BINGEDGE:AS8068:ae170:phynetedge.com:
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP neighbor 2a01:111:222:149::6e description PROP:BINGEDGE:AS8068:ae171:phynetedge.com:
set protocols bgp group IPV6-BING-EDGE-BGP-GROUP neighbor 2a82::2 description PROP:IXIA:AS8068:et0/0/43:tester:
deactivate protocols bgp group IPV6-BING-EDGE-BGP-GROUP neighbor 2a82::2
set protocols bgp group IER-CLIENTS-IPV4 type external
set protocols bgp group IER-CLIENTS-IPV4 import SUBREGIONAL-ROUTING
set protocols bgp group IER-CLIENTS-IPV4 export SET-NEXT-HOP-SELF
set protocols bgp group IER-CLIENTS-IPV4 export STATIC-TO-BGP
set protocols bgp group IER-CLIENTS-IPV4 export CONN-TO-BGP
set protocols bgp group IER-CLIENTS-IPV4 export SET-OVERLOAD-LOCAL-PREF
set protocols bgp group IER-CLIENTS-IPV4 cluster 10.3.159.85
set protocols bgp group IER-CLIENTS-IPV4 peer-as 64915
set protocols bgp group IER-CLIENTS-IPV4 local-as 8075
set protocols bgp group IER-CLIENTS-IPV4 multipath multiple-as
set protocols bgp group IER-CLIENTS-IPV4 neighbor 82.1.0.1 description IXIA
deactivate protocols bgp group IER-CLIENTS-IPV4 neighbor 82.1.0.1
set protocols bgp group IER-CLIENTS-IPV6 type internal
set protocols bgp group IER-CLIENTS-IPV6 import SUBREGIONAL-ROUTING
set protocols bgp group IER-CLIENTS-IPV6 export IPV6-SET-NEXT-HOP-SELF
set protocols bgp group IER-CLIENTS-IPV6 export IPV6-IER-DEFAULT-OUT
set protocols bgp group IER-CLIENTS-IPV6 export IPV6-TO-BGP-NATIVE
set protocols bgp group IER-CLIENTS-IPV6 export SET-OVERLOAD-LOCAL-PREF
set protocols bgp group IER-CLIENTS-IPV6 cluster 10.3.159.85
set protocols bgp group IER-CLIENTS-IPV6 peer-as 8075
set protocols bgp group IER-CLIENTS-IPV6 multipath multiple-as
set protocols bgp group IER-CLIENTS-IPV6 neighbor 2a82::2 description IXIA
deactivate protocols bgp group IER-CLIENTS-IPV6 neighbor 2a82::2
set protocols bgp group IXIA-microBFD type external
set protocols bgp group IXIA-microBFD local-address 103.1.0.1
set protocols bgp group IXIA-microBFD peer-as 8080
set protocols bgp group IXIA-microBFD local-as 8075
set protocols bgp group IXIA-microBFD neighbor 103.1.0.2
set protocols bgp group BGP-EDGE-PEER type external
set protocols bgp group BGP-EDGE-PEER local-address 104.1.0.1
set protocols bgp group BGP-EDGE-PEER import SET-OVERLOAD-LOCAL-PREF
set protocols bgp group BGP-EDGE-PEER export SET-OVERLOAD-LOCAL-PREF
set protocols bgp group BGP-EDGE-PEER peer-as 8010
set protocols bgp group BGP-EDGE-PEER local-as 8090
set protocols bgp group BGP-EDGE-PEER local-as no-prepend-global-as
set protocols bgp group BGP-EDGE-PEER neighbor 104.1.0.2
set protocols bgp group BGP-EDGE-PEER-STR01 type external
set protocols bgp group BGP-EDGE-PEER-STR01 local-address 105.1.0.1
set protocols bgp group BGP-EDGE-PEER-STR01 family inet unicast
set protocols bgp group BGP-EDGE-PEER-STR01 peer-as 8010
set protocols bgp group BGP-EDGE-PEER-STR01 local-as 8090
set protocols bgp group BGP-EDGE-PEER-STR01 local-as no-prepend-global-as
set protocols bgp group BGP-EDGE-PEER-STR01 neighbor 105.1.0.2
set protocols bgp group BGP-EDGE-PEER-STR01 neighbor 82.1.0.1 local-address 82.1.0.0
set protocols bgp group BGP-EDGE-PEER-STR01-cis type internal
set protocols bgp group BGP-EDGE-PEER-STR01-cis local-address 115.1.0.1
set protocols bgp group BGP-EDGE-PEER-STR01-cis peer-as 8075
set protocols bgp group BGP-EDGE-PEER-STR01-cis local-as 8075
set protocols bgp group BGP-EDGE-PEER-STR01-cis local-as no-prepend-global-as
set protocols bgp group BGP-EDGE-PEER-STR01-cis neighbor 115.1.0.2
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP type external
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP description "IPv6 Internet Exchange Route Monitors"
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP import DENY-ALL
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP family inet6 unicast delay-route-advertisements minimum-delay inbound-convergence 900
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP family inet6 unicast delay-route-advertisements maximum-delay route-age 1200
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP export IPV6-GLOBAL-STD-PEER-OUT
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP neighbor 10.0.0.1 description test
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP neighbor 10.0.0.1 import DENY-ALL
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP neighbor 10.0.0.1 export DENY-ALL
set protocols bgp group IPV6-ROUTE-MONITOR-PEERGROUP neighbor 10.0.0.1 peer-as 9999
set protocols bgp group IRR-MESH-IPV4 type internal
set protocols bgp group IRR-MESH-IPV4 import SUBREGIONAL-ROUTING
set protocols bgp group IRR-MESH-IPV4 import IRR-ANCHOR-PRIORITY
set protocols bgp group IRR-MESH-IPV4 family inet unicast add-path receive
set protocols bgp group IRR-MESH-IPV4 export SET-SR-TE-COLOR
set protocols bgp group IRR-MESH-IPV4 export SET-NEXT-HOP-SELF
set protocols bgp group IRR-MESH-IPV4 export STATIC-TO-BGP
set protocols bgp group IRR-MESH-IPV4 export CONN-TO-BGP
set protocols bgp group IRR-MESH-IPV4 export ITE-IBGP-V4
set protocols bgp group IRR-MESH-IPV4 peer-as 8075
set protocols bgp group IRR-MESH-IPV4 local-as 8075
set protocols bgp group IRR-MESH-IPV4 multipath multiple-as
set protocols bgp group IRR-MESH-IPV4 neighbor 10.106.60.5 description ewa02.str40:PO1020
deactivate protocols bgp group IRR-MESH-IPV4 neighbor 10.106.60.5
set protocols bgp group IRR-MESH-IPV4 neighbor 10.106.60.120 description ewa01.str40:bundle-ether1820
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.130 description rwa01.str15
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.130 local-address 10.3.159.85
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.130 import REJECT_VARUN_IXIA_PREFIXES
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.175 description rwa02.str15
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.175 local-address 10.3.159.85
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.175 import REJECT_VARUN_IXIA_PREFIXES
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.14 description rwa01.str05
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.14 local-address 10.3.159.85
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.14 import REJECT_VARUN_IXIA_PREFIXES
set protocols bgp group IRR-MESH-IPV4 neighbor 172.20.249.1 description rwa01.str04:ae249
set protocols bgp group IRR-MESH-IPV4 neighbor 172.20.249.1 local-address 172.20.249.0
set protocols bgp group IRR-MESH-IPV4 neighbor 10.106.70.5 description ewa04.str40:PO1021
deactivate protocols bgp group IRR-MESH-IPV4 neighbor 10.106.70.5
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.178 description ear01.str06
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.184
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.196 description icr02.str05
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.196 local-address 10.3.159.85
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.196 import REJECT_VARUN_IXIA_PREFIXES
set protocols bgp group IRR-MESH-IPV4 neighbor 10.3.159.85
set protocols bgp group IRR-MESH-IPV6 type internal
set protocols bgp group IRR-MESH-IPV6 import SUBREGIONAL-ROUTING
set protocols bgp group IRR-MESH-IPV6 import IPV6-IRR-ANCHOR-PRIORITY
set protocols bgp group IRR-MESH-IPV6 family inet6 unicast add-path receive
set protocols bgp group IRR-MESH-IPV6 export SET-SR-TE-COLOR
set protocols bgp group IRR-MESH-IPV6 export IPV6-SET-NEXT-HOP-SELF
set protocols bgp group IRR-MESH-IPV6 export IPV6-TO-BGP-NATIVE
set protocols bgp group IRR-MESH-IPV6 export ITE-IBGP-V6
set protocols bgp group IRR-MESH-IPV6 export SET-OVERLOAD-LOCAL-PREF
set protocols bgp group IRR-MESH-IPV6 peer-as 8075
set protocols bgp group IRR-MESH-IPV6 multipath multiple-as
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:60:0:122 description ewa01.str40:PO1820
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:60:0:122 peer-as 8075
deactivate protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:60:0:122
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:106:60:5 description ewa02.str40:PO1020
deactivate protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:106:60:5
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:172:20:249:2 description rwa01.str04:ae249
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:172:20:249:2 local-address 2a01:111:e210:0:172:20:249:1
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:106:70:5 description ewa04.str40:PO1021
deactivate protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:0:10:106:70:5
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:175 description rwa02.str15
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:175 local-address 2a01:111:e210:1:10:3:159:85
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:130 description rwa01.str15
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:130 local-address 2a01:111:e210:1:10:3:159:85
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:14 description rwa01.str05
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:14 local-address 2a01:111:e210:1:10:3:159:85
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:14 peer-as 8075
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:178 description ear01.str06
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:196 description icr02.str05
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:196 local-address 2a01:111:e210:1:10:3:159:85
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:196 peer-as 8075
set protocols bgp group IRR-MESH-IPV6 neighbor 2a01:111:e210:1:10:3:159:85
set protocols bgp group IXIA-EWA type external
set protocols bgp group IXIA-EWA peer-as 8088
set protocols bgp group IXIA-EWA neighbor 18.18.18.2
set protocols bgp group IXIA-EWA neighbor 2a01:111:e210:0:18:18:18:2
set protocols bgp group IXIA-400G-EWA type external
set protocols bgp group IXIA-400G-EWA local-address 172.21.150.3
set protocols bgp group IXIA-400G-EWA peer-as 174
set protocols bgp group IXIA-400G-EWA local-as 2345
set protocols bgp group IXIA-400G-EWA neighbor 172.21.150.2 export ITE-EdgeToBackboneCongestionControl-172.21.150.2
set protocols bgp group IXIA-400G-EWA-IPV6 type external
set protocols bgp group IXIA-400G-EWA-IPV6 local-address 2619:10b0:a07:8102::1
set protocols bgp group IXIA-400G-EWA-IPV6 family inet6 unicast
set protocols bgp group IXIA-400G-EWA-IPV6 export IPR-TO-EWA
set protocols bgp group IXIA-400G-EWA-IPV6 peer-as 174
set protocols bgp group IXIA-400G-EWA-IPV6 local-as 8075
set protocols bgp group IXIA-400G-EWA-IPV6 multipath multiple-as
set protocols bgp group IXIA-400G-EWA-IPV6 neighbor 2619:10b0:a07:8102::2
set protocols bgp group ixia-ebgp-64604 type external
set protocols bgp group ixia-ebgp-64604 local-address 61.100.0.6
set protocols bgp group ixia-ebgp-64604 import SET-BGP-ORIGIN-IGP
set protocols bgp group ixia-ebgp-64604 peer-as 64604
set protocols bgp group ixia-ebgp-64604 local-as 8075
set protocols bgp group ixia-ebgp-64604 multipath
set protocols bgp group ixia-ebgp-64604 neighbor 61.100.0.7
set protocols bgp group CUST-DACIS-BGP-GROUP type external
set protocols bgp group CUST-DACIS-BGP-GROUP description "Azure Direct Attached peer group"
set protocols bgp group CUST-DACIS-BGP-GROUP family inet unicast prefix-limit maximum 5000
set protocols bgp group CUST-DACIS-BGP-GROUP family inet unicast prefix-limit teardown 90
set protocols bgp group CUST-DACIS-BGP-GROUP family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group CUST-DACIS-BGP-GROUP export PASS_ALL
set protocols bgp group CUST-DACIS-BGP-GROUP peer-as 12076
set protocols bgp group CUST-DACIS-BGP-GROUP multipath
set protocols bgp group CUST-DACIS-BGP-GROUP neighbor 10.22.176.201 description exr01.akl30
set protocols bgp group CUST-DACIS-BGP-GROUP neighbor 10.22.176.207 description exr02.akl30
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP type external
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP description "Azure Direct Attached peer group"
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP family inet6 unicast prefix-limit maximum 5000
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP family inet6 unicast prefix-limit teardown 90
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP family inet6 unicast prefix-limit teardown idle-timeout 45
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP export PASS_ALL
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP peer-as 12076
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP multipath
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP neighbor 2603:10e1:101:a8::6 description exr01.akl30
set protocols bgp group IPV6-CUST-DACIS-BGP-GROUP neighbor 2603:10e1:101:a9::a description exr02.akl30
set protocols bgp group ixia-ebgp-64604-ipv6 type external
set protocols bgp group ixia-ebgp-64604-ipv6 local-address 2a61:100:16::1
set protocols bgp group ixia-ebgp-64604-ipv6 peer-as 64604
set protocols bgp group ixia-ebgp-64604-ipv6 local-as 8075
set protocols bgp group ixia-ebgp-64604-ipv6 multipath
set protocols bgp group ixia-ebgp-64604-ipv6 neighbor 2a61:100:16::2 description IXIA.24LC5P2::wan_auto_test::RESERVED
set protocols bgp group ixia-ebgp-64604-ipv6 neighbor 2a61:100:16::2 local-address 2a61:100:16::1
set protocols bgp group ixia-ebgp-64604-ipv6 neighbor 2a61:100:16::2 peer-as 64604
set protocols bgp group ixia-ebgp-64626 type external
set protocols bgp group ixia-ebgp-64626 local-address 61.100.0.26
set protocols bgp group ixia-ebgp-64626 peer-as 64626
set protocols bgp group ixia-ebgp-64626 local-as 8075
set protocols bgp group ixia-ebgp-64626 multipath
set protocols bgp group ixia-ebgp-64626 neighbor 61.100.0.27 description IXIA.24LC9P1::wan_auto_test::RESERVED
set protocols bgp group ixia-ebgp-64626-ipv6 type external
set protocols bgp group ixia-ebgp-64626-ipv6 local-address 2a61:100:26::1
set protocols bgp group ixia-ebgp-64626-ipv6 family inet6 unicast
set protocols bgp group ixia-ebgp-64626-ipv6 peer-as 64626
set protocols bgp group ixia-ebgp-64626-ipv6 local-as 8075
set protocols bgp group ixia-ebgp-64626-ipv6 neighbor 2a61:100:26::2 description IXIA.24LC9P1::wan_auto_test::RESERVED
set protocols bgp group ITE-IBGP-CONDUIT type internal
set protocols bgp group ITE-IBGP-CONDUIT description "BGP Group for BYOIP and Congestion Mitigation"
set protocols bgp group ITE-IBGP-CONDUIT local-address 10.3.159.85
set protocols bgp group ITE-IBGP-CONDUIT import ITE-IBGP-CONDUIT-IN
set protocols bgp group ITE-IBGP-CONDUIT import TRANSLATE-CUSTOMER-COMMS
set protocols bgp group ITE-IBGP-CONDUIT family inet unicast add-path receive
set protocols bgp group ITE-IBGP-CONDUIT family inet6 unicast add-path receive
set protocols bgp group ITE-IBGP-CONDUIT export DENY-ALL
set protocols bgp group ITE-IBGP-CONDUIT cluster 10.3.151.18
set protocols bgp group ITE-IBGP-CONDUIT peer-as 8075
set protocols bgp group ITE-IBGP-CONDUIT neighbor 25.71.46.195
set protocols bgp group ITE-IBGP-CONDUIT neighbor 25.71.41.200
set protocols bgp group ITE-IBGP-CONDUIT neighbor 10.75.8.43
set protocols bgp group ITE-BGP-TEST type external
set protocols bgp group ITE-BGP-TEST description ITE-BGP-TEST
set protocols bgp group ITE-BGP-TEST import SET-BGP-ORIGIN-IGP
set protocols bgp group ITE-BGP-TEST import GLOBAL-STD-PEER-IN
set protocols bgp group ITE-BGP-TEST import GLOBAL-STD-FREEPRIVATE-PEER-IN
set protocols bgp group ITE-BGP-TEST family inet unicast prefix-limit maximum 20000
set protocols bgp group ITE-BGP-TEST family inet unicast prefix-limit teardown 90
set protocols bgp group ITE-BGP-TEST family inet unicast prefix-limit teardown idle-timeout 45
set protocols bgp group ITE-BGP-TEST family inet unicast add-path receive
set protocols bgp group ITE-BGP-TEST family inet unicast delay-route-advertisements minimum-delay inbound-convergence 900
set protocols bgp group ITE-BGP-TEST family inet unicast delay-route-advertisements maximum-delay route-age 1200
set protocols bgp group ITE-BGP-TEST family inet6 unicast add-path receive
set protocols bgp group ITE-BGP-TEST export GLOBAL-STD-PEER-OUT
set protocols bgp group ITE-BGP-TEST multipath
set protocols bgp group ISP-TEST type external
set protocols bgp group ISP-TEST local-address 111.111.111.112
set protocols bgp group ISP-TEST hold-time 180
set protocols bgp group ISP-TEST family inet unicast
set protocols bgp group ISP-TEST export PASS_ALL
set protocols bgp group ISP-TEST peer-as 1234
set protocols bgp group ISP-TEST local-as 8075
set protocols bgp group ISP-TEST neighbor 111.111.111.113 description str-3048TP-C11-U32:Eth1/50
set protocols bgp group IRR-MESH-IPV4-ANCHOR import SUBREGIONAL-ROUTING
set protocols bgp group IRR-MESH-IPV4-ANCHOR import NEXTHOP-REWRITE-IPV4
set protocols bgp group IRR-MESH-IPV6-ANCHOR import SUBREGIONAL-ROUTING
set protocols bgp group IRR-MESH-IPV6-ANCHOR import NEXTHOP-REWRITE-IPV6
set protocols bgp group VARUN_FAKE_PEER_IXIA type external
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 description "VARUN TEST FAKE NEIGHBOR"
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 import PERMIT-ALL
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 import VARUN_IXIA_PREFIXES
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 export ITE-EdgeToBackboneCongestionControl-172.20.48.3
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 export ITE-IngressCongestionControl-172.20.48.3
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 export VARUN_IXIA_PREFIXES
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 peer-as 1234
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.48.3 local-as 2345
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.49.1 description "VARUN TEST IXIA"
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.49.1 export VARUN_IXIA_PREFIXES
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.49.1 peer-as 5678
set protocols bgp group VARUN_FAKE_PEER_IXIA neighbor 172.20.49.1 local-as 2345
set protocols bgp traceoptions file bgp.log
set protocols bgp traceoptions file size 10m
set protocols bgp traceoptions file files 10
set protocols bgp traceoptions file world-readable
set protocols bgp traceoptions flag state
deactivate protocols bgp traceoptions
set protocols bgp advertise-inactive
set protocols bgp log-updown
set protocols bgp bgp-error-tolerance
set protocols bgp export DENY-ALL
set protocols bgp local-as 8075
set protocols isis apply-groups default_isis_setup
set protocols isis interface ae1.0
set protocols isis interface ae2.0
set protocols isis interface ae20.0 level 2 metric 16654321
set protocols isis interface ae22.0 level 2 metric 16654321
set protocols isis interface ae247.0 level 2 metric 512345
set protocols isis interface ae248.0 level 2 metric 512345
set protocols isis interface ae249.0 level 2 metric 512345
set protocols isis interface ae27.0 level 2 metric 16654321
set protocols isis interface ae48.0 level 2 metric 512345
set protocols isis interface ae49.0 level 2 metric 512345
set protocols isis interface ae85.0 level 2 metric 16654321
set protocols isis interface ae86.0 level 2 metric 16654321
set protocols isis interface lo0.0 level 2 metric 0
set protocols isis interface lo0.0 passive
set protocols isis source-packet-routing adjacency-segment hold-time 900000
set protocols isis source-packet-routing srgb start-label 16000
set protocols isis source-packet-routing srgb index-range 8000
set protocols isis level 1 disable
set protocols isis level 2 labeled-preference 20
set protocols isis level 2 wide-metrics-only
set protocols isis traceoptions flag error send
set protocols isis traceoptions flag error receive
set protocols isis traceoptions flag error detail
set protocols isis traceoptions flag packets
deactivate protocols isis traceoptions flag packets
set protocols isis traceoptions flag spf
deactivate protocols isis traceoptions flag spf
set protocols isis traceoptions file isis.log
set protocols isis traceoptions file size 100m
set protocols isis traceoptions file files 10
set protocols isis traceoptions file world-readable
set protocols isis traffic-engineering credibility-protocol-preference
set protocols isis traffic-engineering family inet shortcuts
set protocols isis traffic-engineering family inet6 shortcuts
set protocols isis traffic-engineering family inet6-mpls shortcuts
set protocols isis traffic-engineering family inet-mpls shortcuts
set protocols isis traffic-engineering multipath lsp-equal-cost
set protocols isis export EXPORT-TO-ISIS
set protocols isis export EXPORT-OSPF-TO-ISIS
set protocols isis overload timeout 1200
set protocols ldp apply-groups default_ldp_setup
set protocols ldp traceoptions file ldp.log
set protocols ldp traceoptions file size 10m
set protocols ldp traceoptions file files 10
set protocols ldp traceoptions file world-readable
set protocols ldp traceoptions flag error
set protocols ldp track-igp-metric
set protocols ldp egress-policy export-lo0-in-ldp
set protocols ldp deaggregate
set protocols ldp interface ae20.0
set protocols ldp interface ae22.0
set protocols ldp interface ae247.0
set protocols ldp interface ae248.0
set protocols ldp interface ae27.0
set protocols ldp interface ae49.0
set protocols ldp interface ae85.0
set protocols ldp interface ae86.0
set protocols ldp interface lo0.0
set protocols mpls apply-groups default_mpls_setup
set protocols mpls statistics file mpls_stats.log
set protocols mpls statistics file size 10m
set protocols mpls statistics file files 10
set protocols mpls statistics file world-readable
set protocols mpls statistics interval 60
set protocols mpls statistics auto-bandwidth
set protocols mpls statistics statistics-query-batch-size 25
set protocols mpls log-updown syslog
set protocols mpls log-updown no-trap mpls-lsp-traps
set protocols mpls log-updown no-trap rfc3812-traps
set protocols mpls optimize-adaptive-teardown p2p
set protocols mpls admin-groups non-te 11
set protocols mpls admin-groups metro 0
set protocols mpls admin-groups core 1
set protocols mpls admin-groups favored 2
set protocols mpls admin-groups unfavored 3
set protocols mpls admin-groups transatlantic 4
set protocols mpls admin-groups transpacific 5
set protocols mpls admin-groups us-latam 6
set protocols mpls admin-groups africa 7
set protocols mpls admin-groups oceania 8
set protocols mpls admin-groups CORE-NA-LAN 17
set protocols mpls admin-groups transarabia 9
set protocols mpls admin-groups golocal 10
set protocols mpls admin-groups core-backbone 16
set protocols mpls admin-groups bom-maa-terrestrial 12
set protocols mpls advertisement-hold-time 5
set protocols mpls optimize-aggressive
set protocols mpls explicit-null
set protocols mpls label-range dynamic-label-range 100000 999999
set protocols mpls traceoptions file mpls.log
set protocols mpls traceoptions file size 10m
set protocols mpls traceoptions file files 10
set protocols mpls traceoptions file world-readable
set protocols mpls traceoptions flag error
set protocols mpls ipv6-tunneling
set protocols mpls interface ae22.0 srlg BIO70-RBA30_INWI
set protocols mpls interface ae22.0 admin-group non-te
set protocols mpls interface ae27.0 srlg MRS20-RBA30_INWI
set protocols mpls interface ae27.0 admin-group non-te
set protocols mpls interface ae20.0 admin-group non-te
set protocols mpls interface ae85.0 admin-group non-te
set protocols mpls interface ae86.0 admin-group non-te
set protocols mpls interface ae48.0 admin-group non-te
set protocols mpls interface ae49.0 admin-group non-te
set protocols mpls interface ae247.0 admin-group non-te
set protocols mpls interface ae248.0 admin-group non-te
set protocols mpls interface ae249.0 admin-group non-te
set protocols rsvp apply-groups default_rsvp_setup
set protocols rsvp traceoptions file rsvp.log
set protocols rsvp traceoptions file size 10m
set protocols rsvp traceoptions file files 10
set protocols rsvp traceoptions file world-readable
set protocols rsvp traceoptions flag error
set protocols rsvp preemption aggressive
set protocols rsvp interface ae22.0
set protocols rsvp interface ae27.0
set protocols rsvp interface ae20.0
set protocols rsvp interface ae85.0 subscription 75
set protocols rsvp interface ae86.0 subscription 75
set protocols rsvp interface ae48.0 subscription 75
set protocols rsvp interface ae49.0 subscription 75
deactivate protocols rsvp
set protocols lldp port-id-subtype interface-name
set protocols lldp neighbour-port-info-display port-id
set protocols lldp interface all


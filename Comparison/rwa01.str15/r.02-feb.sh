"Timestamp": 2026-02-02T19:52:47.8620448Z,
"Hostname": rwa01.str15,
"Config": 
Mon Feb  2 19:52:39.097 UTC
!! Building configuration...
!! IOS XR Configuration 24.2.206
!! Last configuration change at Mon Feb  2 16:23:59 2026 by _wan-lab-auto
!
hostname rwa01.str15
group default_lsp_setup
 mpls traffic-eng 
 mpls traffic-eng  named-tunnels 
 mpls traffic-eng  named-tunnels  tunnel-te '.*' 
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  path-option 1 
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  path-option 1  preference 1
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  path-option 1  computation dynamic
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw 
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  bw-limit min 5000 max 100000000
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  overflow threshold 25 min 100000 limit 5
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  adjustment-threshold 25 min 5000
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  underflow threshold 50 min 5000000 limit 5
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  application 15
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity 
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity  merge-bandwidth 200000
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity  split-bandwidth 8000000
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity  max-clones 11
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity  min-clones 0
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  auto-bw  auto-capacity  nominal-bandwidth 6000000
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status reoptimize
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status state
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status reroute
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status bw-change
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status path-error
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status switchover
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status record-route
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  logging events lsp-status insufficient-bandwidth
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  priority 3 3
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  autoroute announce 
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  autoroute announce  metric relative -2
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  autoroute announce  include-ipv6
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  fast-reroute
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  record-route
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  soft-preemption
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  load-interval 30
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  affinity include core
 mpls traffic-eng  named-tunnels  tunnel-te '.*'  affinity include favored
end-group
apply-group default_lsp_setup
taskgroup taskgroup_read_only 
taskgroup taskgroup_read_only task read fr
taskgroup taskgroup_read_only task read li
taskgroup taskgroup_read_only task read aaa
taskgroup taskgroup_read_only task read acl
taskgroup taskgroup_read_only task read atm
taskgroup taskgroup_read_only task read bfd
taskgroup taskgroup_read_only task read bgp
taskgroup taskgroup_read_only task read cdp
taskgroup taskgroup_read_only task read cef
taskgroup taskgroup_read_only task read cgn
taskgroup taskgroup_read_only task read eem
taskgroup taskgroup_read_only task read nps
taskgroup taskgroup_read_only task read pbr
taskgroup taskgroup_read_only task read ppp
taskgroup taskgroup_read_only task read qos
taskgroup taskgroup_read_only task read rib
taskgroup taskgroup_read_only task read rip
taskgroup taskgroup_read_only task read sbc
taskgroup taskgroup_read_only task read ancp
taskgroup taskgroup_read_only task read bcdl
taskgroup taskgroup_read_only task read boot
taskgroup taskgroup_read_only task read diag
taskgroup taskgroup_read_only task read dwdm
taskgroup taskgroup_read_only task read hdlc
taskgroup taskgroup_read_only task read hsrp
taskgroup taskgroup_read_only task read ipv4
taskgroup taskgroup_read_only task read ipv6
taskgroup taskgroup_read_only task read isis
taskgroup taskgroup_read_only task read lisp
taskgroup taskgroup_read_only task read lpts
taskgroup taskgroup_read_only task read ospf
taskgroup taskgroup_read_only task read ouni
taskgroup taskgroup_read_only task read rcmd
taskgroup taskgroup_read_only task read snmp
taskgroup taskgroup_read_only task read vlan
taskgroup taskgroup_read_only task read vpdn
taskgroup taskgroup_read_only task read vrrp
taskgroup taskgroup_read_only task read admin
taskgroup taskgroup_read_only task read eigrp
taskgroup taskgroup_read_only task read l2vpn
taskgroup taskgroup_read_only task read bundle
taskgroup taskgroup_read_only task read crypto
taskgroup taskgroup_read_only task read fabric
taskgroup taskgroup_read_only task read static
taskgroup taskgroup_read_only task read sysmgr
taskgroup taskgroup_read_only task read system
taskgroup taskgroup_read_only task read tunnel
taskgroup taskgroup_read_only task read drivers
taskgroup taskgroup_read_only task read logging
taskgroup taskgroup_read_only task read monitor
taskgroup taskgroup_read_only task read mpls-te
taskgroup taskgroup_read_only task read netflow
taskgroup taskgroup_read_only task read network
taskgroup taskgroup_read_only task read pos-dpt
taskgroup taskgroup_read_only task read firewall
taskgroup taskgroup_read_only task read mpls-ldp
taskgroup taskgroup_read_only task read pkg-mgmt
taskgroup taskgroup_read_only task read call-home
taskgroup taskgroup_read_only task read fault-mgr
taskgroup taskgroup_read_only task read interface
taskgroup taskgroup_read_only task read inventory
taskgroup taskgroup_read_only task read multicast
taskgroup taskgroup_read_only task read route-map
taskgroup taskgroup_read_only task read sonet-sdh
taskgroup taskgroup_read_only task read transport
taskgroup taskgroup_read_only task read ext-access
taskgroup taskgroup_read_only task read filesystem
taskgroup taskgroup_read_only task read tty-access
taskgroup taskgroup_read_only task read config-mgmt
taskgroup taskgroup_read_only task read ip-services
taskgroup taskgroup_read_only task read mpls-static
taskgroup taskgroup_read_only task read route-policy
taskgroup taskgroup_read_only task read host-services
taskgroup taskgroup_read_only task read basic-services
taskgroup taskgroup_read_only task read config-services
taskgroup taskgroup_read_only task read ethernet-services
usergroup priv15 
usergroup priv15 taskgroup root-lr
usergroup priv15 taskgroup netadmin
usergroup priv15 taskgroup operator
usergroup priv15 taskgroup sysadmin
usergroup priv15 taskgroup serviceadmin
usergroup priv15 taskgroup cisco-support
usergroup usergroup_read_only 
usergroup usergroup_read_only taskgroup taskgroup_read_only
clock timezone UTC UTC
banner login ~
NOTICE NOTICE NOTICE
*
Unauthorized access and/or use prohibited. All access and/or use subject to monitoring.
**
NOTICE NOTICE NOTICE*
~
locale country AM
logging trap informational
logging events threshold 75
logging archive device harddisk
logging archive severity informational
logging archive file-size 10
logging archive frequency weekly
logging archive archive-size 500
logging archive archive-length 52
logging console disable
logging monitor debugging
logging buffered 10000000
logging facility local1
logging 10.20.2.38 vrf MANAGEMENT severity info
logging 10.20.6.16 vrf MANAGEMENT severity info
logging 10.20.6.84 vrf MANAGEMENT severity info
logging 10.20.7.33 vrf MANAGEMENT severity info
logging 10.20.4.167 vrf MANAGEMENT severity info
logging 10.20.7.232 vrf MANAGEMENT severity info port default
logging 10.3.145.99 vrf MANAGEMENT severity info port default
logging 10.3.157.12 vrf MANAGEMENT severity info port default
logging 10.3.157.16 vrf MANAGEMENT severity info
logging 10.181.114.0 vrf MANAGEMENT severity info
logging 10.20.20.211 vrf MANAGEMENT severity info port default
logging suppress rule suppress-smartlic-logs alarm LICENSE SMART_LIC COMM_FAILED
logging suppress apply rule suppress-smartlic-logs 
logging suppress apply rule suppress-smartlic-logs all-of-router
logging suppress rule suppress-smartlic-logs-1 alarm LICENSE SMART_LIC EVAL_EXPIRED_WARNING
logging suppress apply rule suppress-smartlic-logs-1 
logging suppress apply rule suppress-smartlic-logs-1 all-of-router
logging container all
logging hostnameprefix rwa01.str15
logging suppress duplicates
service timestamps log uptime
service timestamps log datetime localtime msec show-timezone
service timestamps debug datetime localtime msec show-timezone
template normal-mode
route-policy BGP-OVERLOAD
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  var globalVar1 0
end-policy
!
route-policy SET-OVERLOAD-LOCAL-PREF
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  apply CLEAR-ALL-LARGE-COMM
  pass
end-policy
!
end-template
template maintenance-mode
route-policy BGP-OVERLOAD
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  var globalVar1 10293
end-policy
!
route-policy SET-OVERLOAD-LOCAL-PREF
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  set local-preference 10
  apply CLEAR-ALL-LARGE-COMM
end-policy
!
end-template
logging events link-status software-interfaces
domain name network.microsoft.com
domain list network.microsoft.com
domain name-server 10.64.5.5
domain name-server 10.64.6.6
domain name-server 10.64.6.7
domain vrf MANAGEMENT name str.msn.net
domain vrf MANAGEMENT list network.microsoft.com
domain vrf MANAGEMENT list .
domain vrf MANAGEMENT list str.network.microsoft.com
domain vrf MANAGEMENT name-server 10.3.145.98
domain vrf MANAGEMENT name-server 10.3.145.99
domain vrf MANAGEMENT name-server 10.64.5.5
domain vrf MANAGEMENT name-server 10.64.6.6
domain vrf MANAGEMENT name-server 10.64.6.7
tacacs-server host 10.241.221.33 port 49 
tacacs-server host 10.241.221.33 port 49 key 7 $PASS$
tacacs-server host 10.241.221.33 port 49 timeout 3
tacacs-server host 10.241.221.44 port 49 
tacacs-server host 10.241.221.44 port 49 key 7 $PASS$
tacacs-server host 10.241.221.44 port 49 timeout 3
tacacs-server host 10.241.221.45 port 49 
tacacs-server host 10.241.221.45 port 49 key 7 $PASS$
tacacs-server host 10.241.221.45 port 49 timeout 3
username admin 
username admin group root-lr
username admin group cisco-support
username admin secret 10 $PASS$
aaa accounting exec VTY-DEFAULT start-stop group TACACS-DEFAULT none
aaa accounting exec CONSOLE-DEFAULT start-stop group TACACS-DEFAULT none
aaa accounting commands VTY-DEFAULT start-stop group TACACS-DEFAULT none
aaa accounting commands CONSOLE-DEFAULT start-stop group TACACS-DEFAULT none
aaa group server tacacs+ TACACS-DEFAULT 
aaa group server tacacs+ TACACS-DEFAULT server 10.241.221.33
aaa group server tacacs+ TACACS-DEFAULT server 10.241.221.44
aaa group server tacacs+ TACACS-DEFAULT server 10.241.221.45
aaa group server tacacs+ TACACS-DEFAULT vrf MANAGEMENT
aaa authorization exec VTY-DEFAULT group TACACS-DEFAULT local none
aaa authorization exec CONSOLE-DEFAULT group TACACS-DEFAULT local none
aaa authorization commands VTY-DEFAULT group TACACS-DEFAULT none
aaa authorization commands CONSOLE-DEFAULT group TACACS-DEFAULT none
aaa authentication login VTY-DEFAULT group TACACS-DEFAULT local
aaa authentication login CONSOLE-DEFAULT group TACACS-DEFAULT local
aaa display-login-failed-users
grpc port 57400
grpc 
grpc address-family ipv4
grpc service-layer 
grpc local-connection
router rib table ip-only activate vrf RED
router rib address-family ipv4 segment-routing mpls preserve-label-forwarding access-list pfx_acl_ldp apply-inverse
router rib address-family ipv6 segment-routing mpls preserve-label-forwarding access-list pfx_acl_ldp_v6 apply-inverse
vrf RED 
vrf RED fallback-vrf default
vrf tms-l3vrf 
vrf tms-l3vrf rd 10.3.159.130:10101
vrf tms-l3vrf address-family ipv4 unicast 
vrf tms-l3vrf address-family ipv4 unicast import route-policy TMS-IMPORT
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000101
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000205
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000207
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000312
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000317
vrf tms-l3vrf address-family ipv4 unicast import route-target 8075:3000318
vrf tms-l3vrf address-family ipv4 unicast export route-policy TMS-EXPORT
vrf tms-l3vrf address-family ipv4 unicast export route-target 8075:3000101
vrf tms-l3vrf address-family ipv4 unicast export route-target 8075:3000207
vrf tms-l3vrf address-family ipv4 unicast export route-target 8075:3000318
vrf tms-l3vrf address-family ipv6 unicast 
vrf tms-l3vrf address-family ipv6 unicast import route-policy TMS-IMPORT
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000101
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000205
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000207
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000312
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000317
vrf tms-l3vrf address-family ipv6 unicast import route-target 8075:3000318
vrf tms-l3vrf address-family ipv6 unicast export route-policy TMS-EXPORT
vrf tms-l3vrf address-family ipv6 unicast export route-target 8075:3000101
vrf tms-l3vrf address-family ipv6 unicast export route-target 8075:3000207
vrf tms-l3vrf address-family ipv6 unicast export route-target 8075:3000318
vrf ITEpremium 
vrf ITEpremium rd 8075:30000
vrf ITEpremium address-family ipv4 unicast 
vrf ITEpremium address-family ipv4 unicast import route-policy ITEPREMIUM-IMPORT
vrf ITEpremium address-family ipv4 unicast import route-target 8075:30000
vrf ITEpremium address-family ipv4 unicast export route-policy ITEPREMIUM-EXPORT
vrf ITEpremium address-family ipv4 unicast export route-target 8075:30000
vrf ITEpremium address-family ipv6 unicast 
vrf ITEpremium address-family ipv6 unicast import route-policy ITEPREMIUM-IMPORT
vrf ITEpremium address-family ipv6 unicast import route-target 8075:30000
vrf ITEpremium address-family ipv6 unicast export route-policy ITEPREMIUM-EXPORT
vrf ITEpremium address-family ipv6 unicast export route-target 8075:30000
vrf MANAGEMENT 
vrf MANAGEMENT address-family ipv4 unicast 
vrf tms-bypass-l3vrf 
vrf tms-bypass-l3vrf rd 10.3.159.130:10102
vrf tms-bypass-l3vrf address-family ipv4 unicast 
vrf tms-bypass-l3vrf address-family ipv4 unicast import route-policy DENY-ALL
vrf tms-bypass-l3vrf address-family ipv4 unicast import from default-vrf route-policy FROM-AS64915
vrf tms-bypass-l3vrf address-family ipv4 unicast export route-policy DENY-ALL
vrf tms-bypass-l3vrf address-family ipv6 unicast 
vrf tms-bypass-l3vrf address-family ipv6 unicast import route-policy DENY-ALL
vrf tms-bypass-l3vrf address-family ipv6 unicast import from default-vrf route-policy FROM-AS64915
vrf tms-bypass-l3vrf address-family ipv6 unicast export route-policy DENY-ALL
address-family ipv4 unicast 
line console accounting exec CONSOLE-DEFAULT
line console accounting commands CONSOLE-DEFAULT
line console authorization exec CONSOLE-DEFAULT
line console authorization commands CONSOLE-DEFAULT
line console login authentication CONSOLE-DEFAULT
line console timestamp
line console exec-timeout 10 0
line console escape-character 0x3
line console transport input telnet ssh
line console transport output none
line default timestamp
line default exec-timeout 10 0
line default access-class ingress GNS-VTY-ACCESS
line default transport input ssh
line default transport output none
line template VTY-DEFAULT accounting exec VTY-DEFAULT
line template VTY-DEFAULT accounting commands VTY-DEFAULT
line template VTY-DEFAULT authorization exec VTY-DEFAULT
line template VTY-DEFAULT authorization commands VTY-DEFAULT
line template VTY-DEFAULT login authentication VTY-DEFAULT
line template VTY-DEFAULT timestamp
line template VTY-DEFAULT exec-timeout 10 0
line template VTY-DEFAULT access-class ingress GNS-VTY-ACCESS
line template VTY-DEFAULT transport input ssh
line template VTY-DEFAULT transport output none
vty-pool default 0 29 line-template VTY-DEFAULT
lpts pifib hardware police 
lpts pifib hardware police flow ospf multicast default rate 0
lpts pifib hardware police flow ospf unicast default rate 0
lpts pifib hardware police flow bgp known rate 30000
lpts pifib hardware police flow bgp configured rate 30000
lpts pifib hardware police flow pim multicast default rate 0
lpts pifib hardware police flow pim multicast known rate 0
lpts pifib hardware police flow pim unicast rate 0
lpts pifib hardware police flow igmp rate 0
lpts pifib hardware police flow telnet known rate 0
lpts pifib hardware police flow telnet default rate 0
lpts pifib hardware police flow gre rate 0
lpts pifib hardware police flow vrrp rate 0
lpts pifib hardware police flow tpa rate 95000
snmp-server ifmib ifalias long
snmp-server ifindex persist
snmp-server ifmib stats cache
snmp-server trap link ietf
snmp-server vrf MANAGEMENT 
snmp-server vrf MANAGEMENT host 10.3.145.11 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.3.145.43 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.3.145.99 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.3.157.12 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.3.157.16 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.3.157.16 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.20.0.44 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.20.4.167 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.20.7.33 traps version 2c $PASS$
snmp-server vrf MANAGEMENT host 10.46.252.16 traps version 2c $PASS$
snmp-server host 10.3.145.43 traps version 2c $PASS$
snmp-server host 10.3.157.12 traps version 2c $PASS$
snmp-server host 10.3.157.203 traps version 2c $PASS$
snmp-server host 10.3.157.205 traps version 2c $PASS$
snmp-server host 10.3.157.220 traps version 2c $PASS$
snmp-server ipv4 dscp af41
snmp-server view CSCvr62342-bug 1 included
snmp-server view CSCvr62342-bug 1.3.6.1.2.1.138 excluded
snmp-server community $PASS$ RW SystemOwner IPv4 MSG-SNMP-POLLER
snmp-server community $PASS$ view CSCvr62342-bug RO SystemOwner IPv4 AP-SNMP-POLLER
snmp-server community $PASS$ RO SystemOwner
snmp-server community $PASS$ view CSCvr62342-bug RO SystemOwner IPv4 MSG-SNMP-POLLER
snmp-server traps rf
snmp-server traps snmp linkup
snmp-server traps snmp linkdown
snmp-server traps snmp coldstart
snmp-server traps snmp warmstart
snmp-server traps snmp authentication
snmp-server traps config
snmp-server traps entity
snmp-server traps system
snmp-server traps entity-state operstatus
snmp-server traps entity-state switchover
snmp-server traps entity-redundancy all
monitor-session BGPLS ethernet 
monitor-session BGPLS ethernet destination file size 1000000
monitor-session TEST_ECMP ethernet 
monitor-session TEST_ECMP ethernet destination file size 10000
srlg interface Bundle-Ether1 
srlg interface Bundle-Ether1 name PAR21-PAR30-NORTH
srlg interface Bundle-Ether3 
srlg interface Bundle-Ether3 name MRS20-PAR30_GTT_WEST
srlg interface Bundle-Ether7 
srlg interface Bundle-Ether7 name BIO70-PAR30_OPSPAN
srlg interface Bundle-Ether12 
srlg interface Bundle-Ether12 name CIRCESOUTH
srlg interface Bundle-Ether12 name LON22-PAR30_EUNETWORKS_PATH1
srlg interface Bundle-Ether12 name LON24-PAR21_HYBRID_OLS_EUNETWORKS_PATH1
srlg interface Bundle-Ether73 
srlg interface Bundle-Ether73 name AAG
srlg name AAG value 345
srlg name AJC value 347
srlg name APG value 101311
srlg name ASE value 102080
srlg name BBG value 101784
srlg name C2C value 357
srlg name CFX value 102235
srlg name EIG value 100338
srlg name NCP value 101428
srlg name SJC value 101947
srlg name TPE value 102110
srlg name AAE1 value 101761
srlg name B3JS value 102083
srlg name CBUS value 102232
srlg name HAWK value 101757
srlg name PCCS value 101320
srlg name RNAL value 374
srlg name SMW4 value 101785
srlg name SMW5 value 101851
srlg name WACS value 101898
srlg name APCN2 value 102114
srlg name EASSY value 101951
srlg name JONAH value 101845
srlg name TAINO value 102231
srlg name TGNIA value 101376
srlg name CLARO1 value 102229
srlg name CLARO2 value 102230
srlg name FALCON value 101763
srlg name FASTER value 102056
srlg name GEMINI value 102233
srlg name AMB-AMS value 100253
srlg name ARCOS_N value 102236
srlg name BAY-BY4 value 100303
srlg name BRE-GRQ value 101565
srlg name BRE-XFW value 101566
srlg name BY4-PAO value 101403
srlg name BY4-SBP value 101324
srlg name BY4-SJC value 101404
srlg name CH1-CH2 value 100364
srlg name CH1-CH4 value 100366
srlg name CH1-CHG value 100367
srlg name CH2-CHG value 101113
srlg name DNA-SN6 value 101020
srlg name EIRGRID value 101730
srlg name LAX-SBP value 100640
srlg name SG2-SG3 value 100583
srlg name SG2-SGE value 100584
srlg name SG3-SGE value 100586
srlg name SIN-SG2 value 100590
srlg name SIN-SG3 value 100591
srlg name SN2-SN4 value 100599
srlg name TENORTH value 101758
srlg name ASH-BL20 value 100825
srlg name BAY-BY21 value 100735
srlg name BL31-BL7 value 100814
srlg name BY21-PAO value 101405
srlg name BY21-SJC value 101406
srlg name EASTWEST value 102234
srlg name FLAG_FEA value 101764
srlg name TGN_GULF value 101765
srlg name AMB-AMS06 value 101472
srlg name AMB-AMS21 value 100816
srlg name AMB-AMS30 value 100817
srlg name AMS-AMS06 value 101071
srlg name AMS-AMS21 value 100819
srlg name AMS-AMS30 value 100818
srlg name AMS06-GRQ value 101564
srlg name BL31-BL20 value 100815
srlg name BL7-WAS02 value 100321
srlg name BL7-WAS05 value 101364
srlg name BOS01-CH1 value 100345
srlg name BOS01-NYC value 100346
srlg name BRU30-QDU value 101520
srlg name BY4-LAX03 value 101587
srlg name CH2-ENW01 value 101389
srlg name CH4-ENW01 value 101534
srlg name DAL-DFW04 value 100393
srlg name DB5-DUB08 value 101449
srlg name DBB-DUB07 value 100406
srlg name DBB-DUB08 value 100407
srlg name DBB-DUB30 value 100408
srlg name DNA-CYS04 value 101019
srlg name FRA30-QDU value 101521
srlg name HEL01-XFW value 101567
srlg name HK2-HKG20 value 100464
srlg name HK2-HKG31 value 100465
srlg name HKB-HKG20 value 100468
srlg name HKB-HKG31 value 100469
srlg name HKG-MNL30 value 100477
srlg name HKN-HKG20 value 100485
srlg name HKN-HKG31 value 100486
srlg name LON21-LTS value 100513
srlg name LON22-LTS value 100797
srlg name LON24-LTS value 100798
srlg name MAA02-SG2 value 101115
srlg name NYC-NYC30 value 100545
srlg name NYC-YMQ01 value 100546
srlg name PRA-PAR21 value 100563
srlg name ROCKABILL value 101948
srlg name SEA02-STB value 101136
srlg name SYD-SYD03 value 100604
srlg name SYD-SYD23 value 100605
srlg name TANGERINE value 101950
srlg name TYA-TYO01 value 100610
srlg name TYO-TYO79 value 100806
srlg name YHZ-YMQ01 value 101357
srlg name ALEXANDROS value 101844
srlg name BL20-WAS02 value 101463
srlg name BL20-WAS05 value 100313
srlg name BOM1-BOM03 value 100340
srlg name CIRCENORTH value 101729
srlg name CIRCESOUTH value 101595
srlg name EUROTUNNEL value 101723
srlg name GBICS_MENA value 101762
srlg name MIA-SN1_01 value 101052
srlg name AMS06-BRU30 value 101519
srlg name ATB-PR1_CWC value 101098
srlg name BIO70-PAR30 value 100707
srlg name BJ1-SJC_TPE value 102109
srlg name BKK-HKG_AAG value 101327
srlg name BKK30-BKK-T value 100645
srlg name BOM02-BOM03 value 100330
srlg name BOM02-DEL01 value 100331
srlg name BOM02-MAA02 value 100332
srlg name CAK02-CLE02 value 100987
srlg name CAK02-CLE30 value 101331
srlg name CO-MWH-EAST value 100655
srlg name CO-MWH-WEST value 100656
srlg name CYS04-CYS09 value 100950
srlg name CYS04-LAR01 value 101099
srlg name DBA-DUB07-1 value 100721
srlg name DBA-DUB08-1 value 100722
srlg name DEL01-MAA02 value 100411
srlg name DEN01-DEN02 value 100412
srlg name DFW01-FTW01 value 101356
srlg name DUB07-DUB30 value 100426
srlg name DUB08-DUB30 value 100428
srlg name EWR30-NYC30 value 101048
srlg name FRA-FRA30-1 value 100753
srlg name FRA-FRA30-2 value 100754
srlg name HKG-TPE_APG value 101328
srlg name HKG-TPE_C2C value 101323
srlg name HKG20-HKG30 value 100755
srlg name HKG30-HKG31 value 100756
srlg name KUL01-KUL30 value 100498
srlg name LIS01-MAD30 value 100507
srlg name LON04-LON21 value 100509
srlg name LON21-LON22 value 101631
srlg name LON21-LON24 value 101630
srlg name LON22-LON24 value 101577
srlg name LON22-LON30 value 100763
srlg name MEDNAUTILUS value 101771
srlg name OSA01-0SA20 value 100547
srlg name OSA01-OSA31 value 100550
srlg name OSA02-OSA20 value 100553
srlg name OSA02-OSA30 value 100554
srlg name OSA02-OSA31 value 100555
srlg name OSA20-OSA31 value 100556
srlg name PAR02-PAR21 value 100557
srlg name PAR02-PAR30 value 100558
srlg name PAR21-PAR30 value 100560
srlg name PDX30-PDX31 value 100964
srlg name RIO01-RIO02 value 100576
srlg name RIO01-RIO20 value 101395
srlg name RIO01-RIO30 value 101394
srlg name RIO02-RIO03 value 100578
srlg name SAO03-SCL01 value 100581
srlg name SCO01-SCL30 value 100582
srlg name SIN-SLA_EAC value 101044
srlg name SYD03-SYD23 value 100603
srlg name TEP30-TEP31 value 100606
srlg name TGN_EURASIA value 101766
srlg name WAS02-WAS05 value 101473
srlg name YTO01-YTO20 value 100629
srlg name YTO01-YTO30 value 100700
srlg name YTO02-YTO20 value 100782
srlg name AKL01-LAX_SX value 101241
srlg name ARI-LIM_SAM1 value 101697
srlg name ARI-VAP_SAM1 value 101698
srlg name ATB-ATL05-01 value 100644
srlg name BCT-PBR_SAM1 value 101694
srlg name BY4-PAO_EAST value 102205
srlg name CH2-CH3_WEST value 102200
srlg name CH3-CH2-WEST value 100912
srlg name CH3-CH4-EAST value 100913
srlg name DAL-TUL04_01 value 101210
srlg name DB3-DUB-EAST value 100663
srlg name DB3-DUB-WEST value 100664
srlg name DBB-DUB_EAST value 101815
srlg name DBB-DUB_WEST value 101816
srlg name GSJ-LIM_SAM1 value 101696
srlg name GSJ-PBR_SAM1 value 101695
srlg name HOU01-SN1_01 value 101801
srlg name JHB20-SG2_TM value 102086
srlg name MAA02-0MAA30 value 100519
srlg name SG1-SG2_EAST value 102142
srlg name SG1-SG3_WEST value 102141
srlg name SG2-SG3_EAST value 102140
srlg name SGN30-SG3_IA value 101016
srlg name SN1-SN3_WEST value 102138
srlg name SN1-SN6_EAST value 102137
srlg name SN1-SN6_ZAYO value 101344
srlg name SN2-SN6_EAST value 102134
srlg name SN3-SN6_EAST value 102133
srlg name SN3-SN6_ZAYO value 101345
srlg name SN4-SN6-MSFT value 100838
srlg name SN4-SN6_EAST value 102132
srlg name SN4-SN6_MSFT value 101441
srlg name STB-YVR_ZAYO value 101613
srlg name AAG-BKK-T-SGE value 100637
srlg name AMB-LTS_PATH1 value 101029
srlg name ASH-BL20_WEST value 102213
srlg name BER20-VIE_TBD value 101842
srlg name BL20-BL3_EAST value 102211
srlg name BL20-BL3_WEST value 102210
srlg name BL3-BL20-MSFT value 100834
srlg name BY21-BY4_EAST value 101468
srlg name BY21-BY4_WEST value 101432
srlg name BY21-LAX_ZAYO value 101602
srlg name BY21-PAO_WEST value 102206
srlg name BY4-HKG31_AAG value 101920
srlg name BY4-HNL01_AAG value 101114
srlg name CH2-CH4-NORTH value 100653
srlg name CH2-CH4-SOUTH value 100654
srlg name CH2-CH4_NORTH value 101978
srlg name CH2-CH4_SOUTH value 101979
srlg name EMERALDBRIDGE value 101949
srlg name FRA30-FRA21-1 value 100727
srlg name FRA30-FRA21-2 value 100728
srlg name GRU30-MIA_SAC value 101365
srlg name GUM01-HKG_AAG value 101101
srlg name HKG20-SG3_APG value 101120
srlg name HKG30-SG2_SJC value 102088
srlg name HKG31-SG2_SJC value 101069
srlg name HKG_MNL30_AAG value 101088
srlg name HNL01-LAX_AAG value 101189
srlg name HNL01-SBP_AAG value 101315
srlg name LON32-LON22-1 value 100729
srlg name LON32-LON24-1 value 100730
srlg name MAA02-SG3_I2I value 101381
srlg name MAA02-SG3_TIC value 101296
srlg name MAA30-SG3_I2I value 101132
srlg name MNL30-SG2_SJC value 101705
srlg name NYC30-PR1_CWC value 101055
srlg name OSA31-SG2_APG value 101280
srlg name PER01-SG3_ASC value 100866
srlg name PUS03-SG3_APG value 101750
srlg name PUS30-SG3_APG value 101082
srlg name SEL20-SG3_APG value 101260
srlg name SG2-SG3-NORTH value 100681
srlg name SG2-SG3-SOUTH value 100682
srlg name SG2-SG3_NORTH value 102139
srlg name SG2-SG3_WSS01 value 101528
srlg name SG2-SG3_WSS02 value 101487
srlg name SG2-SJC02_SJC value 101067
srlg name SG2-TYO79_SJC value 100906
srlg name SN1-SN6_NORTH value 102136
srlg name SN1-SN6_SOUTH value 102135
srlg name YHZ-DUB70-DBB value 101355
srlg name AKL01-SYD03_SX value 100854
srlg name AKL30-SYD03_SX value 101091
srlg name AM3-AMS21-MSFT value 100836
srlg name AM3-AMS30-MSFT value 100837
srlg name AMS-AMS21_EAST value 102217
srlg name AMS-AMS30_WEST value 102216
srlg name ASH-BL7_CAMPUS value 100824
srlg name ATA-ATL30_WEST value 101417
srlg name ATA-ATL31_EAST value 101418
srlg name ATB-ATL30_EAST value 101593
srlg name BCT-MIA30_SAM1 value 101621
srlg name BL2-BL7_CAMPUS value 100739
srlg name BL20-BL7_NORTH value 101455
srlg name BL20-BL7_SOUTH value 101544
srlg name BL3-BL7_CAMPUS value 100833
srlg name BL31-BL7_NORTH value 102209
srlg name BL7-BL20-NORTH value 100646
srlg name BL7-BL20-SOUTH value 100647
srlg name BL7-BL7_CAMPUS value 101533
srlg name BL7-BN6_OPSPAN value 101104
srlg name BOM02-SG3_SMW4 value 101143
srlg name BY21-BY4-NORTH value 100648
srlg name BY21-BY4-SOUTH value 100649
srlg name BY21-BY4_NORTH value 102208
srlg name BY21-BY4_SOUTH value 102207
srlg name BY21-HNL01_AAG value 101429
srlg name BY3-BY21_SJC47 value 101700
srlg name BY3-BY4_CAMPUS value 101402
srlg name BY4-BY30_SOUTH value 101818
srlg name BY4-BY4_CAMPUS value 101547
srlg name CELTIXCONNECT1 value 101724
srlg name CH1-CH2_CAMPUS value 101443
srlg name CH2-CH2_CAMPUS value 101506
srlg name CH2-CVG01_MSFT value 100985
srlg name CH2-DSM05_ZAYO value 101093
srlg name CH4-CH4_CAMPUS value 101572
srlg name CPQ02-GRU30_01 value 101119
srlg name CPQ02-GRU30_02 value 101090
srlg name CYS04-MWH_ZAYO value 101491
srlg name DBA-DUB07_WEST value 102193
srlg name DBA-DUB08_EAST value 102192
srlg name DBB-DBB_CAMPUS value 101466
srlg name DBB-DUB07_EAST value 102191
srlg name DBB-DUB07_WEST value 102190
srlg name DBB-DUB08_EAST value 102189
srlg name DBB-DUB08_WEST value 102188
srlg name DNA-LAS01_ZAYO value 101216
srlg name DXB20-JIB30_DU value 101368
srlg name DXB30-DXB20-DU value 100840
srlg name FRA-FRA21_WEST value 100901
srlg name FRA20-LEJ20_DT value 102119
srlg name FRA30-PAR30_EU value 101445
srlg name HK2-HKG31_EAST value 102177
srlg name HK2-HKG31_WEST value 102176
srlg name HKB-HKG20_EAST value 101959
srlg name HKB-HKG20_WEST value 102175
srlg name HKB-HKG31_EAST value 102174
srlg name HKB-HKG31_WEST value 101960
srlg name JHB20-KUL01_TM value 102084
srlg name JHB20-SG3_TIME value 102087
srlg name JKT30-SG2_B3JS value 101928
srlg name KUL01-KUL02-TM value 100760
srlg name KUL01-KUL30-TM value 100761
srlg name KUL02-KUL30-TM value 100762
srlg name LAS01-BY4_ZAYO value 102120
srlg name LAX-LAX30_EAST value 101749
srlg name LAX-LAX30_WEST value 101748
srlg name LON21-LTS_MSFT value 102238
srlg name LON22-LTS_WEST value 102166
srlg name LON24-LTS_EAST value 102164
srlg name MIA-MIA_CAMPUS value 101881
srlg name MIA-SAO03_TIWC value 101353
srlg name MRS20-SG2_SMW5 value 101596
srlg name NYC-EWR30_Zayo value 101800
srlg name NYC-NYC30_WEST value 102161
srlg name PAR21-PRA_WEST value 102147
srlg name SEL20-SLA_WEST value 102144
srlg name SEL21-SLA_EAST value 102143
srlg name SG2-SG2_CAMPUS value 101438
srlg name SG2-SIN30_WEST value 101412
srlg name SG3-SG3_CAMPUS value 101464
srlg name SG3-SIN30_EAST value 101413
srlg name SN1-SN2_CAMPUS value 101343
srlg name SN1-SN4_CAMPUS value 100597
srlg name STB-SEA_CAMPUS value 100601
srlg name STO-STO30_WEST value 101922
srlg name STO-STO31_EAST value 101923
srlg name SYD-SYD03_EAST value 102129
srlg name SYD-SYD23_WEST value 102128
srlg name TYA-TYO30_EAST value 100778
srlg name TYA-TYO30_WEST value 102040
srlg name TYA-TYO31_EAST value 100779
srlg name TYA-TYO31_WEST value 102041
srlg name TYB-TYO30_EAST value 100780
srlg name TYB-TYO30_WEST value 102038
srlg name TYB-TYO31_EAST value 100781
srlg name TYB-TYO31_WEST value 102039
srlg name ZRH-ZRH20_EAST value 100871
srlg name ZRH-ZRH20_WEST value 100872
srlg name AKL30-SYD23_TGA value 100925
srlg name AM3-AMS06_OMT02 value 101732
srlg name AM3-AMS06_OMT05 value 101728
srlg name ATL31-FLL30_ATT value 102066
srlg name ATL31-SAO30_SAC value 101603
srlg name BKK30-HKG20_APG value 102104
srlg name BL20-BL31_SOUTH value 102212
srlg name BL20-LYH01_MSFT value 102243
srlg name BN6-DAN03-DAN02 value 101157
srlg name BN6-LYH02-LYH01 value 100990
srlg name BOM30-JIB30_EIG value 101334
srlg name BOM30-MRS20_EIG value 101107
srlg name BOM30-MRS21_EIG value 102091
srlg name BUD01-VIE_PATH1 value 101151
srlg name BUH-SOF01_PATH1 value 101202
srlg name BY21-BY30_NORTH value 101819
srlg name BY21-SYD03_SCCN value 101775
srlg name DBB-DUB07_01_01 value 101499
srlg name DBB-DUB07_01_02 value 101538
srlg name DBB-DUB08_02_01 value 101507
srlg name DBB-DUB08_02_02 value 101461
srlg name EWR30-SXL71_AEC value 101049
srlg name FRA-PRG01_PATH1 value 101279
srlg name FRA-SOF01_PATH2 value 101130
srlg name FRA-WAW01_PATH1 value 101194
srlg name FRA23-VIE20_TBD value 101841
srlg name GUM01-HKG20_AAG value 101203
srlg name GUM01-HNL01_AAG value 101209
srlg name GUM01-SYD23_AJC value 101170
srlg name GUM01-TYO30_AJC value 101094
srlg name GVA20-MRS21_TBD value 102095
srlg name HKB-PUS03_APCN2 value 101182
srlg name HKG-KUL02_APCN2 value 101097
srlg name HKG20-KUL30_AAG value 101100
srlg name HKG20-SEL20_APG value 101434
srlg name HKG20-SG3_TGNIA value 101383
srlg name HKG20-TPE30_C2C value 101864
srlg name HKG20-TPE31_C2C value 101124
srlg name HKG20-TYO31_ASE value 102081
srlg name HKG30-HK20-WEST value 101011
srlg name HKG30-HK31-EAST value 101013
srlg name HKG31-OSA31_APG value 101046
srlg name HKG31-SGN30_AAG value 102226
srlg name HKG31-TYO30_C2C value 101529
srlg name HKG31-TYO79_SJC value 100891
srlg name JIB30-MRS20_EIG value 101310
srlg name JKT30-SG2_Telin value 101025
srlg name JKT30-SG3_Telin value 101026
srlg name LTS-MME20_PATH1 value 101295
srlg name MIL30-ROM30_GTT value 101611
srlg name MNL30-SGE_APCN2 value 101704
srlg name MRS20-ZRH_PATH1 value 101259
srlg name NYC-NYC30-NORTH value 100673
srlg name OSA20-SG3_TGNIA value 101377
srlg name PDX30-TYO79_NCP value 101112
srlg name PRG01-VIE_PATH2 value 101230
srlg name PUS20-SEL21_LGU value 101341
srlg name PUS20-TYO79_NCP value 101788
srlg name ROM30-MIL30_GTT value 101832
srlg name SEL20-SLA-NORTH value 100773
srlg name SEL20-SLA-SOUTH value 100774
srlg name SEL20-TYO79_TPE value 101024
srlg name SEL21-SLA-NORTH value 100775
srlg name SEL21-SLA-SOUTH value 100776
srlg name SEL21-TYO30_EAC value 100969
srlg name SG3-TYO31_TGNIA value 101380
srlg name SGN30-HKG20_APG value 101015
srlg name SIN30-TYO31_ASE value 102082
srlg name SJC02-TYO79_SJC value 101162
srlg name SYD23-TYO30_AJC value 101717
srlg name TPE30-TYO30_APG value 101414
srlg name TPE31-TYO31_APG value 101424
srlg name TPE31-TYO31_NCP value 101425
srlg name TYO30-TYO79_501 value 101599
srlg name TYO31-TYO79_502 value 101598
srlg name VIE-WAW01_PATH1 value 101495
srlg name VIE-ZAG30_PATH1 value 101089
srlg name VIE20-ZRH21_TBD value 101843
srlg name WAW01-VIE_PATH1 value 101200
srlg name AMS04-AMS21_MSFT value 100979
srlg name AMS04-AMS30_MSFT value 100980
srlg name AMS21-AMS31_EAST value 102215
srlg name AMS30-AMS31_WEST value 102214
srlg name ATB-ATL30_CAMPUS value 100827
srlg name ATL05-ATL31_ZAYO value 101686
srlg name BAY-SAC71_OPSPAN value 101337
srlg name BER20-IEV30_RETN value 101755
srlg name BIO70-RBA30_INWI value 101701
srlg name BL20-BL20_CAMPUS value 101863
srlg name BNA01-DFW05_MSFT value 101061
srlg name BOG30-MIA_UFINET value 101001
srlg name BOM02-HYD30_TATA value 100934
srlg name BOM02-PAR21_MENA value 100936
srlg name BOS01-CH1_LEVEL3 value 102065
srlg name BUD01-BUH01_COLT value 100348
srlg name BY2-LAX03_OPSPAN value 101211
srlg name BY21-BY21_CAMPUS value 101483
srlg name BY4-SAC71_OPSPAN value 101340
srlg name CLE02-YTO30_ZAYO value 102015
srlg name CPQ01-CPQ02_EAST value 102199
srlg name CPQ01-CPQ20_WEST value 102198
srlg name CPQ02-CPQ20_EAST value 102197
srlg name CPQ02-CPQ20_WEST value 102194
srlg name CPT02-CPT20-EAST value 100745
srlg name CPT02-CPT20-WEST value 100746
srlg name CPT20-LAD30_WACS value 101739
srlg name CPT20-LON22_SAT3 value 101661
srlg name CYS01-CYS04-EAST value 100661
srlg name CYS01-CYS04-WEST value 100662
srlg name CYS04-DEN01_MSFT value 102245
srlg name CYS04-MWH01_ZAYO value 101047
srlg name DB3-DUB08_CAMPUS value 101731
srlg name DB5-DUB07_CAMPUS value 101725
srlg name DFW05-DSM05_MSFT value 101225
srlg name DFW05-HOU02_MSFT value 101102
srlg name DNA-DEN02_CAMPUS value 102077
srlg name DSM05-MSP02_MSFT value 102052
srlg name DSM05-MSP30_ZAYO value 102047
srlg name DUB07-DUB30_WEST value 102187
srlg name DUB08-DUB30_EAST value 102186
srlg name DXB20-MRS20_SMW4 value 101076
srlg name ENW01-MSP02_MSFT value 102051
srlg name FRA21-FRA30_EAST value 102185
srlg name FRA21-FRA30_WEST value 102184
srlg name FRA21-FRA31_WEST value 102183
srlg name FRA21-IEV30_RETN value 101756
srlg name FRA30-FRA31_EAST value 102182
srlg name FRA30-FRA_CAMPUS value 102098
srlg name FRA30-SOF01_COLT value 101416
srlg name FRA31-FRA21_WEST value 100997
srlg name FRA31-FRA30_EAST value 100996
srlg name FTW01-SN2_OPSPAN value 100984
srlg name GRU-GRU30_CAMPUS value 101408
srlg name GUM01-TYO31_TGNP value 101707
srlg name GVA20-GVA30_EAST value 102179
srlg name GVA20-GVA30_WEST value 102178
srlg name HKG20-HKG30_WEST value 102173
srlg name HKG20-SG3_TGN_IA value 101270
srlg name HKG30-HKG31_EAST value 102172
srlg name HKG31-SEL21_RNAL value 101173
srlg name HKG31-SJCA02_SJC value 100959
srlg name HOU02-SN6_OPSPAN value 101204
srlg name HYD30-MAA02_TATA value 100960
srlg name JHB20-KUL30_TIME value 102085
srlg name JNB02-JNB21_WEST value 102171
srlg name LAD30-LON22_SAT3 value 102118
srlg name LAD30-LON22_WACS value 101740
srlg name LAX30-LAX31_EAST value 101633
srlg name LAX30-SYD23_SCCN value 101776
srlg name LAX31-SLC01_MSFT value 102078
srlg name LON04-LON24_EAST value 102168
srlg name LON22-LON32_WEST value 102167
srlg name LON24-LON32_EAST value 102165
srlg name ME01-MEL20-NORTH value 101453
srlg name ME01-MEL20-SOUTH value 100670
srlg name MEL01-MEL20_EAST value 102163
srlg name MEL01-MEL20_WEST value 102162
srlg name MIA30-SCL01_SAM1 value 101734
srlg name MIL30-ZRH20_EAST value 101423
srlg name MRS20-RBA30_INWI value 101702
srlg name MRS20-SIN30_AAE1 value 101706
srlg name MUC30-BER20_COLT value 101022
srlg name MUC30-FRA30_COLT value 101021
srlg name MWH01-MWH30_EAST value 101957
srlg name MWH01-MWH30_WEST value 101958
srlg name OSA01-OSA02_EAST value 100548
srlg name OSA01-OSA02_WEST value 102042
srlg name OSA01-OSA20_EAST value 102160
srlg name OSA01-OSA20_WEST value 102159
srlg name OSA01-OSA30_EAST value 100549
srlg name OSA01-OSA30_WEST value 102043
srlg name OSA01-OSA31_EAST value 102158
srlg name OSA01-OSA31_WEST value 102157
srlg name OSA02-OSA20_EAST value 102156
srlg name OSA02-OSA20_WEST value 102155
srlg name OSA02-OSA31_EAST value 102154
srlg name OSA02-OSA31_WEST value 102153
srlg name OSA20-OSA30_EAST value 102152
srlg name OSA20-TYO31_NTT1 value 101485
srlg name OSA31-TYO30_KDDI value 101585
srlg name OSL20-OSL30_EAST value 102151
srlg name OSL20-OSL30_WEST value 102150
srlg name PAR02-PAR21_EAST value 102149
srlg name PAR02-PAR30_WEST value 102148
srlg name PDX31-STB_OPSPAN value 101122
srlg name PER30-SG2_INDIGO value 101379
srlg name PHX01-SN4_OPSPAN value 101244
srlg name PHX10-SN1_OPSPAN value 101991
srlg name PNQ01-PNQ21_EAST value 101952
srlg name PNQ01-PNQ21_WEST value 101953
srlg name PRA-PAR30_CAMPUS value 100564
srlg name PUS20-PUS03-KT-1 value 100998
srlg name PUS20-PUS03-KT-2 value 100999
srlg name SEL20-SEL21_WEST value 102079
srlg name SEL21-TYO30_RNAL value 101062
srlg name SJCA02-TYO79_SJC value 100971
srlg name STO30-STO31_EAST value 101924
srlg name STO30-STO31_WEST value 101925
srlg name SYD03-SYD23_EAST value 101420
srlg name SYD03-SYD23_WEST value 101419
srlg name TEB30-NYC30_ZAYO value 102239
srlg name TYO01-TYO30_EAST value 100616
srlg name TYO01-TYO30_WEST value 102046
srlg name TYO01-TYO31_EAST value 100617
srlg name TYO01-TYO31_WEST value 102045
srlg name TYO30-TYO33_WEST value 101715
srlg name TYO31-TYO33_EAST value 101716
srlg name WAS02-NYC30_MSFT value 102244
srlg name YTO01-YTO20_WEST value 102126
srlg name YTO01-YTO30_EAST value 102125
srlg name YTO20-YTO30-EAST value 100698
srlg name YTO20-YTO30-WEST value 100699
srlg name YTO20-YTO30_WEST value 102124
srlg name ZAG30-ZRH20_COLT value 101747
srlg name AMS04-AMS06_OMT07 value 101722
srlg name AMS04-AMS06_OMT10 value 101727
srlg name AMS21-AMS31_RTM06 value 100927
srlg name AMS21-BRU30_PATH1 value 101242
srlg name AMS30-AMS31_RTM05 value 100926
srlg name AMS30-DUS30_PATH1 value 101410
srlg name ATL30-ATL31_FTY01 value 100932
srlg name ATL30-ATL31_FTY02 value 100933
srlg name ATL30-ATL31_NORTH value 101972
srlg name ATL30-ATL31_SOUTH value 101973
srlg name ATL31-ATL02-PDK03 value 101292
srlg name BCN30-MAD30_PATH2 value 101142
srlg name BCN30-MRS20_PATH1 value 101218
srlg name BL20-NYC30_OPSPAN value 101675
srlg name BL20-NYC30_SLS123 value 101752
srlg name BL7-STG30_MADISON value 101363
srlg name BLU-BL7_WEST_MSFT value 100831
srlg name BOG30-MIA_GLOBNET value 101000
srlg name BOM02-PAR21_IMEWE value 101155
srlg name BRU30-PAR21_PATH2 value 101285
srlg name BUD01-ZAG30_PATH2 value 101263
srlg name BUE30-SAO30_IPLAN value 101821
srlg name BY21-OSA20_FASTER value 101207
srlg name BY21-PDX30_OPSPAN value 101407
srlg name CBR20-CBR21-NORTH value 100650
srlg name CBR20-CBR21-SOUTH value 100651
srlg name CBR20-CBR21_NORTH value 102204
srlg name CBR20-CBR21_SOUTH value 102203
srlg name CBR21-CBR22_NORTH value 102202
srlg name CBR21-CBR22_North value 101809
srlg name CBR21-CBR22_SOUTH value 102201
srlg name CBR21-CBR22_South value 101810
srlg name CBR21-CBR23_NORTH value 102121
srlg name CBR21-CBR23_SOUTH value 102122
srlg name CPQ02-CPQ20_NORTH value 102196
srlg name CPQ02-CPQ20_SOUTH value 102195
srlg name CPT20-LOS30-WIOCC value 101009
srlg name CYS09-DEN70-DEN01 value 100951
srlg name DFW05-DFW01-FTW01 value 101239
srlg name DUB07-DUB08-NORTH value 100665
srlg name DUB07-DUB08-SOUTH value 100666
srlg name DUB07-DUB08_NORTH value 101988
srlg name DUB07-DUB08_SOUTH value 101989
srlg name DUS30-FRA21_PATH1 value 101411
srlg name EWR30-NYC30_LGA01 value 101454
srlg name EWR30-NYC30_LGA02 value 101522
srlg name FRA-FRA23_MADISON value 101658
srlg name FRA21-FRA23_NORTH value 102218
srlg name FRA21-FRA23_SOUTH value 102219
srlg name FRA23-FRA30_NORTH value 102220
srlg name FRA23-FRA30_SOUTH value 102221
srlg name FRA30-PRG01_PATH1 value 101421
srlg name GRU30-SAO30_NORTH value 102181
srlg name GRU30-SAO30_SOUTH value 102180
srlg name GVA20-MRS20_PATH1 value 101372
srlg name GVA20-PAR21_PATH1 value 101033
srlg name HAM30-HAM31_NORTH value 102101
srlg name HAM30-HAM31_SOUTH value 102102
srlg name HKG20-HKG30_NORTH value 101510
srlg name HKG20-HKG30_SOUTH value 101992
srlg name HKG20-HKG31-NORTH value 100667
srlg name HKG20-HKG31-SOUTH value 100668
srlg name HKG20-HKG31_NORTH value 101465
srlg name HKG20-HKG31_VHK02 value 101549
srlg name HKG20-OSA20_TGNIA value 101378
srlg name HKG20-SEL20_APCN2 value 101433
srlg name HKG20-TYO31_TGNIA value 101374
srlg name HKG30-HKG31_NORTH value 101993
srlg name HKG30-HKG31_SOUTH value 101994
srlg name HKG31-KUL01_APCN2 value 100958
srlg name HKG31-SGN30_TGNIA value 102227
srlg name JNB20-JNB21-NORTH value 100758
srlg name JNB20-JNB21-SOUTH value 100759
srlg name JNB20-JNB21_NORTH value 102170
srlg name JNB20-JNB21_SOUTH value 102169
srlg name JNB20-MRS20_EASSY value 101312
srlg name JNB20-MRS21_EASSY value 102092
srlg name LAX03-TYO30_UNITY value 101290
srlg name LAX30-LAX31_NORTH value 101876
srlg name LAX30-LAX31_SOUTH value 101877
srlg name LAX30-TYO30_UNITY value 101807
srlg name LIS01-LON04_PATH1 value 101197
srlg name LIS01-LON22_PATH1 value 101084
srlg name LIS01-MAD30_PATH2 value 101275
srlg name LON04-LON24_LHR50 value 100928
srlg name LON04-MME20_PATH1 value 101235
srlg name LON22-LON24-NORTH value 100719
srlg name LON22-LON24-SOUTH value 100720
srlg name LON22-LON24_NORTH value 101995
srlg name LON22-LON24_SOUTH value 101996
srlg name LON22-LOS30-WIOCC value 101010
srlg name MAA01-MAA02-TCL-1 value 100874
srlg name MAA01-MAA02-TCL-2 value 100875
srlg name MAD30-PAR30_PATH1 value 101198
srlg name MEL01-MEL20-NORTH value 100767
srlg name MEL01-MEL20-SOUTH value 100768
srlg name MEL01-MEL20_YMM03 value 101478
srlg name MEL01-PER01_OPTUS value 101600
srlg name MIA-PR1_CWC_PATH1 value 101085
srlg name MIA-PR1_CWC_PATH2 value 102237
srlg name MRS20-NBO30_WIOCC value 101751
srlg name MWH01-YVR30_TELUS value 101618
srlg name NBO30-JNB20_WIOCC value 101338
srlg name NYC30-EWR30_LGA01 value 100963
srlg name ORF70-RIO02_BRUSA value 101589
srlg name OSA20-OSA30-NORTH value 100769
srlg name OSA20-OSA31-NORTH value 100675
srlg name OSA20-OSA31-SOUTH value 100676
srlg name OSA20-OSA31_NORTH value 102002
srlg name OSA20-OSA31_SOUTH value 102003
srlg name OSA30-OSA31-NORTH value 100770
srlg name OSL20-SVG20_PATH1 value 101317
srlg name OSL20-SVG20_PATH2 value 101382
srlg name OSL20-SVG20_PATH3 value 101375
srlg name PAR21-PAR30-NORTH value 100679
srlg name PAR21-PAR30-SOUTH value 100680
srlg name PAR21-PAR30_NORTH value 102004
srlg name PAR21-PAR30_SOUTH value 102005
srlg name PDX30-PDX31_NORTH value 101517
srlg name PDX30-PDX31_SOUTH value 101318
srlg name PER30-PER01-OPTUS value 100978
srlg name PER30-PER01-VOCUS value 100977
srlg name PNQ20-PNQ21_NORTH value 102112
srlg name PNQ20-PNQ21_SOUTH value 102113
srlg name RIO20-RIO30_NORTH value 101392
srlg name RIO20-RIO30_SOUTH value 101393
srlg name SEL20-SEL21-NORTH value 100771
srlg name SEL20-SEL21-SOUTH value 100772
srlg name SEL20-SEL21_NORTH value 102146
srlg name SEL20-SEL21_SOUTH value 102145
srlg name STG30-STG31_NORTH value 102131
srlg name STG30-STG31_SOUTH value 102130
srlg name SYD03-SYD23-NORTH value 100684
srlg name SYD03-SYD23-SOUTH value 100685
srlg name SYD03-SYD23_BWU01 value 101559
srlg name SYD03-SYD23_BWU03 value 101508
srlg name SYD03-SYD23_SOUTH value 102127
srlg name TPE30-TPE31_PATH1 value 101926
srlg name TPE30-TPE31_PATH2 value 101927
srlg name TYO02-TYO31_NORTH value 100810
srlg name TYO02-TYO31_SOUTH value 102044
srlg name TYO30-TYO31-NORTH value 100686
srlg name TYO30-TYO31-SOUTH value 100687
srlg name TYO30-TYO31_NORTH value 102011
srlg name TYO30-TYO31_SOUTH value 102012
srlg name WAW01-BER20_PATH2 value 101002
srlg name WST-YVR01_SHAW_01 value 101273
srlg name WST-YVR01_SHAW_02 value 101326
srlg name YTO20-YTO30_NORTH value 101573
srlg name YTO20-YTO30_SOUTH value 101470
srlg name AKL01_AKL30_CAMPUS value 101888
srlg name AMS06-AMS21-1-MSFT value 100822
srlg name AMS06-AMS21-2-MSFT value 100823
srlg name AMS06-AMS30-1-MSFT value 100820
srlg name AMS06-AMS30-2-MSFT value 100821
srlg name AMS06-HAM30_OPSPAN value 101498
srlg name AMS21-AMS21_CAMPUS value 101490
srlg name AMS30-GOT30_IPONLY value 101687
srlg name ATL30-ATL30_CAMPUS value 101552
srlg name ATL30-BNA01_OPSPAN value 101135
srlg name ATL30-CLT02_OPSPAN value 101277
srlg name ATL30-HOU02_OPSPAN value 101037
srlg name ATL31-ATL31_CAMPUS value 101561
srlg name BER20-BER20_CAMPUS value 101484
srlg name BER20-MMA01_IPONLY value 101676
srlg name BIO70-BIO70_CAMPUS value 101531
srlg name BIO70-PAR30_OPSPAN value 101190
srlg name BL2-BL20_EAST_MSFT value 100738
srlg name BL20-STG30_MADISON value 101474
srlg name BL20-STG31_MADISON value 101370
srlg name BL4-BL20_EAST_MSFT value 100740
srlg name BLU-BL20_EAST_MSFT value 100832
srlg name BNA01-CVG01_OPSPAN value 101145
srlg name BOM02-BOM01-TATA-1 value 100843
srlg name BOM02-BOM01-TATA-2 value 100844
srlg name BOM30-DXB20_DU_EIG value 101254
srlg name BOM30-DXB21_DU_EIG value 101787
srlg name BOM30-DXB30_DU_EIG value 101880
srlg name BOM30-HYD30_AIRTEL value 101853
srlg name BOS31-NYC30_OPSPAN value 101350
srlg name BOS31-YQM01_OPSPAN value 101358
srlg name CAK02-CVG01_OPSPAN value 100986
srlg name CAK02-WAS02_OPSPAN value 100988
srlg name CBR20-CBR20_CAMPUS value 101509
srlg name CBR20-CBR22_CAMPUS value 101808
srlg name CBR21-CBR21_CAMPUS value 101489
srlg name CLE02-YTO03_OPSPAN value 101452
srlg name CLE02-YTO20_OPSPAN value 101118
srlg name CLE30-CLE30_CAMPUS value 101435
srlg name CLE30-EWR30_OPSPAN value 100989
srlg name CLT02-DAN02_OPSPAN value 101065
srlg name CLT02-PDK03_OPSPAN value 101532
srlg name CMB30-MAA01_AIRTEL value 101663
srlg name CPQ01-CPQ02_SHT016 value 100937
srlg name CPQ01-CPQ20_SHT006 value 100938
srlg name CPQ01-CPQ20_SHT013 value 101399
srlg name CPQ02-CPQ20_SHT001 value 100939
srlg name CPQ02-CPQ20_SHT002 value 101397
srlg name CPQ02-CPQ20_SHT003 value 101398
srlg name CPQ02-CPQ20_SHT004 value 100940
srlg name CPQ02-CPQ20_SHT021 value 100941
srlg name CPQ02-CPQ20_SHT023 value 101400
srlg name CPQ02-CPQ70_SLS446 value 100942
srlg name CPQ02-SOD70_SLS444 value 100943
srlg name CPQ20-CPQ70_SLS447 value 100944
srlg name CPQ20-CPQ70_SLS454 value 101901
srlg name CPQ20-CPQ71_SLS442 value 100945
srlg name CPQ20-SAO70_SLS450 value 100946
srlg name CPQ70-SAO71_SLS446 value 100947
srlg name CPQ70-SAO71_SLS447 value 100948
srlg name CPQ70-SAO71_SLS454 value 101902
srlg name CPQ71-SAO01_SLS442 value 100949
srlg name CWL20-CWL20_CAMPUS value 101439
srlg name CYS04-DEN02_OPSPAN value 100982
srlg name DEL01-DEL01_CAMPUS value 101895
srlg name DEN01-DSM05_OPSPAN value 100952
srlg name DEN02-FTW01_OPSPAN value 100983
srlg name DEN02-SLC02_OPSPAN value 101335
srlg name DFW05-MEX31_TELMEX value 101710
srlg name DUB07-DUB07_CAMPUS value 101450
srlg name DUB07-DUB08_CAMPUS value 101688
srlg name DUB07-LON22_OPSPAN value 101436
srlg name DUB08-DUB08_CAMPUS value 101574
srlg name DUB08-LON24_OPSPAN value 101536
srlg name EWR30-EWR30_CAMPUS value 101442
srlg name EWR30-WAS05_OPSPAN value 101354
srlg name FRA21-FRA21_CAMPUS value 101569
srlg name FRA30-FRA30_CAMPUS value 101557
srlg name GOT30-GVX01_IPONLY value 101648
srlg name GOT30-MMA01_IPONLY value 101647
srlg name GRU30-SAO01_SLS452 value 100953
srlg name GRU30-SAO30_SHT040 value 100954
srlg name GRU30-SAO30_SHT041 value 100955
srlg name GRU30-SAO70_SLS450 value 100956
srlg name GRU30-SAO71_SLS454 value 101903
srlg name GRU30-SCL01_SILICA value 101872
srlg name GRU30-SOD70_SLS449 value 100957
srlg name GVA20-GVA20_CAMPUS value 101553
srlg name GVX01-STO30_IPONLY value 101646
srlg name GVX01-STO31_IPONLY value 101645
srlg name HAM30-HAM30_CAMPUS value 101446
srlg name HAM30-MMA01_IPONLY value 101644
srlg name HEL01-HEL01_CAMPUS value 101571
srlg name HKG20-HKG20_CAMPUS value 101586
srlg name HKG30-HKG30_CAMPUS value 101541
srlg name HKG31-HKG31_CAMPUS value 101523
srlg name HYD30-MAA30_AIRTEL value 101854
srlg name JNB20-JNB02_CAMPUS value 100757
srlg name JNB20-JNB20_CAMPUS value 101578
srlg name JNB21-JNB21_CAMPUS value 101469
srlg name KUL01-KUL01_CAMPUS value 101894
srlg name LAD30-WACS_WACS_BU value 101741
srlg name LAR01-SLC01_OPSPAN value 101294
srlg name LAS30-LAS30_CAMPUS value 101861
srlg name LAX03-LAX30_OPSPAN value 101878
srlg name LAX03-PHX01_OPSPAN value 101192
srlg name LAX30-LAX30_CAMPUS value 101860
srlg name LAX30-PHX10_OPSPAN value 101990
srlg name LON22-LON22_CAMPUS value 101548
srlg name LON24-LON24_CAMPUS value 101551
srlg name LYH01-WAS05_OPSPAN value 100991
srlg name MAA02-MAA30-AIRTEL value 100765
srlg name MEL01-MEL01_CAMPUS value 101543
srlg name MEL20-MEL20_CAMPUS value 101501
srlg name MIA-Bulkfiber_EAST value 101804
srlg name MIA-Bulkfiber_WEST value 101803
srlg name MRS20-MRS20_CAMPUS value 101479
srlg name MWH01-PDX30_OPSPAN value 101187
srlg name MWH01-SEA02_OPSPAN value 101220
srlg name MWH01-SLC01_OPSPAN value 101291
srlg name NYC30-NYC30_CAMPUS value 101440
srlg name NYC30-WAS05_OPSPAN value 101570
srlg name ORF70-ORF70_CAMPUS value 101524
srlg name OSA20-OSA20_CAMPUS value 101505
srlg name OSA20-PDX31_FASTER value 101852
srlg name OSA31-OSA31_CAMPUS value 101525
srlg name PAR21-PAR21_CAMPUS value 101518
srlg name PAR30-PAR30_CAMPUS value 101496
srlg name PDX01-SAC04_OPSPAN value 101283
srlg name PDX30-PDX30_CAMPUS value 101540
srlg name PDX31-PDX31_CAMPUS value 101459
srlg name RIO01-RIO02_CAMPUS value 101873
srlg name RIO02-RIO20_GIG020 value 101886
srlg name RIO02-RIO30_GIG021 value 101887
srlg name RIO03-RIO30_CAMPUS value 101387
srlg name SAC71-SLC02_OPSPAN value 101336
srlg name SAO01-SAO30_SLS442 value 100965
srlg name SAO03-SAO30_CAMPUS value 101409
srlg name SAO30-SAO71_SLS446 value 100966
srlg name SAO30-SAO71_SLS447 value 100967
srlg name SAO30-SOD70_SLS444 value 100968
srlg name SEL20-TYO79_APG_KT value 101885
srlg name SN1-SN6_NORTH_EAST value 100972
srlg name SN1-SN6_SOUTH_WEST value 100973
srlg name STG30-STG30_CAMPUS value 101511
srlg name STG30-STG31_CAMPUS value 101451
srlg name STG31-STG31_CAMPUS value 101486
srlg name SXL71-SXL71_CAMPUS value 101493
srlg name SYD03-SYD03_CAMPUS value 101516
srlg name SYD23-SYD23_CAMPUS value 101530
srlg name TEB30-TEB30_CAMPUS value 102242
srlg name TYO02-TYO30_CAMPUS value 100809
srlg name TYO30-TYO30_CAMPUS value 101462
srlg name TYO31-TYO31_CAMPUS value 101550
srlg name TYO79-TYO79_CAMPUS value 101480
srlg name YMQ01-YTO03_OPSPAN value 101360
srlg name YQB20-YQB20_CAMPUS value 101862
srlg name YQM01-YTO02_OPSPAN value 101329
srlg name ZRH20-ZRH20_CAMPUS value 101503
srlg name AMS-DUB30_GTT_PATH1 value 101134
srlg name ATH01-VIE_TISPARKLE value 101781
srlg name BCN30-BIO70_SLS_308 value 102224
srlg name BCN30-MRS20_SLS_308 value 102225
srlg name BIO70-MAD30_SLS_308 value 102222
srlg name BIO70-MRS21_SLS_308 value 102097
srlg name BL4-BL7_CENTURYLINK value 100741
srlg name BN1-BN6_CAMPUS_EAST value 100742
srlg name BN1-BN6_CAMPUS_WEST value 100743
srlg name BN6-BN6_CAMPUS_EAST value 101975
srlg name BN6-BN6_CAMPUS_WEST value 101974
srlg name BOM02-PNQ01_TATA_01 value 101054
srlg name BOM02-PNQ01_TATA_02 value 101213
srlg name CAI30-MRS20_TE_HAWK value 101759
srlg name CHG-CH2-CENTURYLINK value 100915
srlg name CHG-CH4-CENTURYLINK value 100914
srlg name DXB30-MRS20_DU_SMW5 value 101850
srlg name EWR30-GRU30_SEABRAS value 101081
srlg name FRA23-FRA31_MADISON value 101654
srlg name GRU30-SAO30_ASCENTY value 101427
srlg name HKG31-SYD23_AAG_AJC value 101817
srlg name HKG31-TYO79_SJC_CMI value 101954
srlg name HNL01-PDX30_HAWAIKI value 101703
srlg name MAA20-MAA02_TATA_01 value 101627
srlg name MAA20-MAA02_TATA_02 value 101626
srlg name MAA20-MAA30_TATA_01 value 101623
srlg name MAA20-MAA30_TATA_02 value 101622
srlg name MAD30-MRS20_SLS_308 value 102223
srlg name MEL01-PER01_AAPT_01 value 100855
srlg name MEL01-SYD03_AAPT_01 value 100858
srlg name MEL20-SYD23_VOCUS_1 value 100862
srlg name MEL20-SYD23_VOCUS_2 value 100859
srlg name MRS20-VIE_GTT_PATH1 value 101542
srlg name PDX30-PDX31_MSFT_01 value 100889
srlg name PDX30-PDX31_MSFT_02 value 100890
srlg name PER30-SYD23_TELSTRA value 101601
srlg name PUS03-SG3_APCN2_TPE value 101138
srlg name PUS03-SGE_APCN2_TPE value 101180
srlg name SEL21-SG2_APCN2_TPE value 101267
srlg name SN1-SN1_CAMPUS_WEST value 102007
srlg name SN6-SN6_CAMPUS_EAST value 102010
srlg name VIE-VIE_CAMPUS_EAST value 101838
srlg name VIE-VIE_CAMPUS_WEST value 101837
srlg name AKL30-SYD03_SX_Vocus value 101931
srlg name AMS-MSA_LEVEL3_PATH1 value 101217
srlg name BJB-HKB_CHINATELECOM value 101735
srlg name BN6-BN6_CAMPUS_NORTH value 101976
srlg name BN6-BN6_CAMPUS_SOUTH value 101977
srlg name BNE01-SYD03_VOCUS_01 value 100856
srlg name BNE01-SYD23_VOCUS_01 value 100865
srlg name BOM02-BOM30-AIRTEL-1 value 100841
srlg name BOM02-BOM30-AIRTEL-2 value 100842
srlg name BOM30-BOM01-AIRTEL-1 value 100845
srlg name BOM30-BOM01-AIRTEL-2 value 100846
srlg name CBR21-SYD03_OPTUS_01 value 100853
srlg name CH2-DTT30_EDGECONNEX value 101669
srlg name CH4-DTT30_EDGECONNEX value 101666
srlg name CPH30-STO_EUNETWORKS value 101430
srlg name DEN02-SN_EAST_CORONA value 101943
srlg name DXB20-DXB30_DU_PATH2 value 101792
srlg name FRA-MSA_LEVEL3_PATH1 value 101193
srlg name GRU-SCL01_TELEFONICA value 101070
srlg name HAM30-STO_EUNETWORKS value 101125
srlg name HKG20_MNL30_ASE_PLDT value 101867
srlg name HKG31-MNL30_AAG_PLDT value 101869
srlg name MAA02-MAA30-AIRTEL-2 value 100848
srlg name MEL01-SYD03_Vocus_01 value 101871
srlg name MEX31-SN1_TRANSTELCO value 101711
srlg name MEX31-SN6_TRANSTELCO value 101712
srlg name MRS20-PAR21_GTT_EAST value 101359
srlg name MRS20-PAR21_TBD_EAST value 102094
srlg name MRS20-PAR30_GTT_WEST value 101367
srlg name MRS21-PAR30_TBD_WEST value 102093
srlg name PAR21-VIE_EUNETWORKS value 101726
srlg name SHA-HKB_CHINATELECOM value 101736
srlg name SN1-SN6_CAMPUS_NORTH value 102008
srlg name SN1-SN6_CAMPUS_SOUTH value 102009
srlg name VIE-VIE_CAMPUS_NORTH value 102013
srlg name VIE-VIE_CAMPUS_SOUTH value 102014
srlg name VIE-ZRH20_COLT_PATH1 value 101121
srlg name AMB-PAR30_TELIA_PATH1 value 101156
srlg name ATH01-MRS20_TISPARKLE value 101782
srlg name ATL30-MIA_CENTURYLINK value 102070
srlg name BAY-SFO70-SAC03-SAC04 value 101063
srlg name BKK30-SG3_TIS_SINGTEL value 101946
srlg name BL6-CLT30_CENTURYLINK value 102059
srlg name BL7-PHL30_CENTURYLINK value 102061
srlg name BN6-RIC73-ORF71-ORF70 value 101362
srlg name BUD01-VIE_CENTURYLINK value 101936
srlg name BUH01-VIE_CENTURYLINK value 101778
srlg name CH2-DTT30_CENTURYLINK value 102068
srlg name CH2-MSP30_CENTURYLINK value 101667
srlg name CH4-CVG30_CENTURYLINK value 102057
srlg name CH4-DTT30_CENTURYLINK value 102069
srlg name CH4-MSP30_CENTURYLINK value 101665
srlg name CHI30-CH2_CENTURYLINK value 102105
srlg name CHI30-CH4_CENTURYLINK value 102106
srlg name CWL20-LON24_SSE_PATH3 value 100910
srlg name CWL20-LON24_SSE_PATH4 value 101935
srlg name DXB20-MRS20_DU_FALCON value 101733
srlg name GVA20-ZRH20_UPC_PATH1 value 101297
srlg name GVA20-ZRH20_UPC_PATH2 value 101252
srlg name GVA20-ZRH20_UPC_PATH3 value 101195
srlg name HEL03-STO_TELIA_PATH2 value 101117
srlg name HKG30-HK20-VHK65-WEST value 101012
srlg name HNL01-SYD03_ENDEAVOUR value 101183
srlg name JNB20-MRS20_EASSY_EIG value 100898
srlg name KUL01-SG3_TERRESTRIAL value 101293
srlg name KUL30-SG2_TERRESTRIAL value 101181
srlg name MAA20-MAA02_BHARTI_01 value 101629
srlg name MAA20-MAA02_BHARTI_02 value 101628
srlg name MAA20-MAA30_BHARTI_01 value 101625
srlg name MAA20-MAA30_BHARTI_02 value 101624
srlg name MIA-MIA30_CENTURYLINK value 102064
srlg name MRS20-MRS01_EAST_MSFT value 100671
srlg name MRS20-MRS01_WEST_MSFT value 100672
srlg name MRS20-ROM30_GTT_PATH1 value 101802
srlg name PHX31-SN1_CENTURYLINK value 101831
srlg name SG2-TYO30_C2C_TELSTRA value 101870
srlg name SG2-TYO79_SJC_SINGTEL value 101956
srlg name SOF01-VIE_CENTURYLINK value 101610
srlg name TLV20-VIE20_JONAH_TBD value 101848
srlg name AKL30-SYD03_SX_Telstra value 101930
srlg name AMB-CPH30_LEVEL3_PATH1 value 101229
srlg name AMS-DUB30_HIBERNIA_GTT value 101471
srlg name AMS21-FRA30_EUNETWORKS value 100929
srlg name AMS21-SVG20_EAST_PATH1 value 101265
srlg name AMS30-HEL01_EUNETWORKS value 101753
srlg name ATB-MIA_CENTURYLINK_01 value 101139
srlg name ATL30-BNA30_EDGECONNEX value 101684
srlg name ATL30-JAX30_EDGECONNEX value 101683
srlg name ATL31-BNA30_EDGECONNEX value 101681
srlg name ATL31-JAX30_EDGECONNEX value 101680
srlg name BCN30-MAD30_EUNETWORKS value 101855
srlg name BCN30-MRS20_EUNETWORKS value 101857
srlg name BER20-HAM30_EUNETWORKS value 101316
srlg name BER20-MUC30_COLT_PATH1 value 102103
srlg name BJ1-HKG30_CHINATELECOM value 102108
srlg name BJB-HKG30_CHINATELECOM value 101737
srlg name BL7-CLE30_MSFT_SLS_222 value 101504
srlg name BY21-LAS30_CENTURYLINK value 101673
srlg name BY21-SLC31_CENTURYLINK value 101824
srlg name BY4-SJC30_SOUTH_LEASED value 101797
srlg name CAI30-MRS20_TE_TENORTH value 101760
srlg name CBR22-SYD03_TELSTRA_01 value 102111
srlg name CBR22-SYD03_TELSTRA_02 value 101746
srlg name CPH30-HAM30_EUNETWORKS value 101431
srlg name CPH30-STO_LEVEL3_PATH1 value 101133
srlg name CPT20-LOS30_WACS_PATH1 value 101028
srlg name DXB30-DXB20-1-Etisalat value 100829
srlg name DXB30-DXB20-2-Etisalat value 100830
srlg name FOR01-RIO02_TELXIUS_01 value 101281
srlg name FOR01-RIO30_CENTURLINK value 101934
srlg name FRA21-FRA30_EAST_HHN10 value 101545
srlg name FRA21-FRA30_WEST_HHN09 value 101568
srlg name FRA21-HAM30_EUNETWORKS value 101657
srlg name FRA21-HAM31_EUNETWORKS value 101828
srlg name FRA21-MOW30_ROSTELECOM value 101656
srlg name FRA23-PAR21_EUNETWORKS value 101653
srlg name FRA30-MOW30_ROSTELECOM value 101651
srlg name FRA30-MUC30_COLT_PATH1 value 101650
srlg name FRA30-ZRH_LEVEL3_PATH1 value 101262
srlg name GUM01-HKG31_TGNP_TGNIA value 101035
srlg name GVA20-GVA30_EAST_PATH1 value 101386
srlg name GVA20-GVA30_WEST_PATH1 value 101385
srlg name HAM30-HEL03_EUNETWORKS value 101369
srlg name HAM30-OSL20_WEST_PATH1 value 101391
srlg name JKT30-SG3_JASUKA_Telin value 101893
srlg name LON20-LON22_COLT_PATH1 value 100962
srlg name LON20-LON24_COLT_PATH1 value 101342
srlg name LON22-LOS30_GLO1_PATH1 value 102116
srlg name LON22-LOS30_WACS_PATH1 value 101129
srlg name LON22-SVG20_WEST_PATH1 value 101103
srlg name MAD30-PAR30_EUNETWORKS value 101856
srlg name MEL01-SYD03_TELSTRA_01 value 100861
srlg name MEL20-PER30_TELSTRA_01 value 100860
srlg name MIA-SAO30_TELXIUS_TIWC value 101255
srlg name MIL30-MRS20_EUNETWORKS value 101858
srlg name MIL30-MRS20_WEST_PATH1 value 101043
srlg name MIL30-ZRH20_EUNETWORKS value 101859
srlg name MRS20-SIN30_SMW5_TELIN value 101883
srlg name MRS20-ZRH20_COLT_PATH1 value 101159
srlg name MRS20-ZRH20_COLT_PATH2 value 101900
srlg name MRS21-NBO30_DARE1_AAE1 value 102117
srlg name NYC30-YQB20_BELLCANADA value 101614
srlg name OSL30-OSL20_EAST_PATH1 value 101396
srlg name OSL30-OSL20_WEST_PATH1 value 101390
srlg name PAR21-PAR30_EUNETWORKS value 102006
srlg name RIO02-SAO30_TELXIUS_01 value 101351
srlg name SAO30-SCL01_TELXIUS_01 value 101347
srlg name SHA-HKG30_CHINATELECOM value 101738
srlg name TLV20-TLV30_BEZEQ_EAST value 101904
srlg name TLV20-TLV30_BEZEQ_WEST value 101905
srlg name YQB20-YTO30_BELLCANADA value 101829
srlg name YTO02-YTO20_BELLCANADA value 101606
srlg name YTO03-YTO30_BELLCANADA value 101607
srlg name YTO20-YVR30_BELLCANADA value 101605
srlg name YTO30-YVR30_BELLCANADA value 101604
srlg name AKL30-SYD23_TGA_SPARKNZ value 101932
srlg name AMS06-AMS06_CAMPUS_EAST value 101961
srlg name AMS06-AMS06_CAMPUS_WEST value 101966
srlg name AMS21-DUB08_SOUTH_PATH1 value 101361
srlg name AMS30-AMS30_CAMPUS_EAST value 101971
srlg name AMS30-DUB07_NORTH_PATH1 value 101371
srlg name ATL05-ATL30_CENTURYLINK value 102107
srlg name ATL30-CLT30_CENTURYLINK value 102060
srlg name ATL30-MIA30_CENTURYLINK value 102063
srlg name BER20-BUD01_CENTURYLINK value 101777
srlg name BER20-BUH01_CENTURYLINK value 101779
srlg name BIO70-MRS20_COLT_OPSPAN value 102017
srlg name BOM02-BOM31_RELIANCEJIO value 102029
srlg name BOM02-DOH31_OOREDOO_TGN value 101770
srlg name BOM02-MRS20_FALCON_HAWK value 101075
srlg name BOM30-BOM31_RELIANCEJIO value 102030
srlg name BOS31-EWR30_CENTURYLINK value 101827
srlg name BOS31-NYC30_CENTURYLINK value 101826
srlg name BUD01-BUH01_CENTURYLINK value 101167
srlg name BUE30-GRU30_CENTURYLINK value 101822
srlg name CLE02-CVG30_CENTURYLINK value 102058
srlg name CPT02-LON30_WIOCC_PATH1 value 101171
srlg name CPT20-JNB20_WIOCC_PATH1 value 101299
srlg name CPT20-LON22_WIOCC_PATH1 value 101231
srlg name CYS04-CYS04_CAMPUS_EAST value 101983
srlg name CYS04-CYS04_CAMPUS_WEST value 101980
srlg name CYS04-SLC31_CENTURYLINK value 101825
srlg name DAL-MEX30_TRANSTELCO_01 value 101251
srlg name DEN02-TUL04_CENTURYLINK value 100414
srlg name DSM05-DSM05_CAMPUS_EAST value 101984
srlg name DSM05-DSM05_CAMPUS_WEST value 101987
srlg name DSM05-MSP30_CENTURYLINK value 102048
srlg name DUB07-SXL71_AEC_SLS_302 value 101366
srlg name DUB08-SXL71_AEC_SLS_303 value 101348
srlg name EWR30-PHL30_CENTURYLINK value 102062
srlg name FRA30-HEL02_TELIA_PATH1 value 101172
srlg name HAM30-HEL01_CINIA_PATH1 value 101437
srlg name HEL01-STO30_CINIA_PATH1 value 102033
srlg name HKG31-TYO79_SJC_SINGTEL value 101955
srlg name JNB20-NBO30_WIOCC_PATH1 value 101897
srlg name LAS01-LAX30_Centurylink value 101820
srlg name LAS30-PHX01_CENTURYLINK value 101672
srlg name LAX30-LAX32_CENTURYLINK value 101906
srlg name LAX30-PHX31_CENTURYLINK value 101830
srlg name LAX30-SAN30_CENTURYLINK value 101635
srlg name LAX31-LAX32_CENTURYLINK value 101634
srlg name LAX31-SAN30_CENTURYLINK value 101632
srlg name LON04-LON22_CAMPUS_EAST value 101823
srlg name LON04-LON22_CAMPUS_WEST value 100811
srlg name LON30-NYC30_GTT_EXPRESS value 101349
srlg name MAA01-MAA30-Powergrid-1 value 100880
srlg name MAA01-MAA30-Powergrid-2 value 100881
srlg name MAA01-MAA31_RELIANCEJIO value 102031
srlg name MAA02-MAA30-PowerGrid-1 value 100851
srlg name MAA30-MAA31_RELIANCEJIO value 102032
srlg name MEX30-SN1_TRANSTELCO_01 value 101105
srlg name MEX30-SN6_TRANSTELCO_01 value 101078
srlg name MRS20-JNB02_WIOCC_PATH1 value 101045
srlg name MRS20-NBO30_WIOCC_PATH1 value 101899
srlg name MWH01-MWH01_CAMPUS_EAST value 102001
srlg name MWH01-MWH01_CAMPUS_WEST value 101997
srlg name PHX01-PHX31_CENTURYLINK value 101612
srlg name PUS20-PUS20_BULK_Path_1 value 101865
srlg name PUS20-PUS20_BULK_Path_2 value 101866
srlg name RIO02-RIO03_CENTURYLINK value 101874
srlg name SEA02-SEA73_CAMPUS_EAST value 102036
srlg name SEA02-SEA73_CAMPUS_WEST value 102037
srlg name SG2-TYO30_C2C_PROTECTED value 101384
srlg name SYD03-TYO79_JGA-S_JGA-N value 101879
srlg name TYO30-TYO81-TYO80-TYO79 value 101560
srlg name AKL30-SYD23_TGA_Vodafone value 101933
srlg name AMS06-AMS06_CAMPUS_NORTH value 101962
srlg name AMS06-AMS06_CAMPUS_SOUTH value 101964
srlg name AMS21-AMS30_NORTH_CAMPUS value 101969
srlg name AMS21-AMS30_SOUTH_CAMPUS value 101970
srlg name AUH20-BOM30_ETISALAT_BBG value 101140
srlg name BJS20-SHA20_CHINA_UNICOM value 101913
srlg name BKK30-SG3_TM_TERRESTRIAL value 101868
srlg name BOM30-PNQ01_POWERGRID_01 value 101027
srlg name BOM30-PNQ01_POWERGRID_02 value 101228
srlg name BY21-SYD03_AAG_ENDEAVOUR value 101919
srlg name CLE30-EWR30_MSFT_SLS_226 value 101546
srlg name CPT20-JNB21_LIQUID_PATH1 value 101057
srlg name CPT20-JNB21_LIQUID_PATH2 value 101699
srlg name CYS04-CYS04_CAMPUS_NORTH value 101981
srlg name CYS04-CYS04_CAMPUS_SOUTH value 101982
srlg name DM2-DSM05_CenturyLink_01 value 100867
srlg name DM3-DSM05_CenturyLink_01 value 100868
srlg name DOH30-MRS20_OOREDOO_AAE1 value 101767
srlg name DSM05-DSM05_CAMPUS_NORTH value 101985
srlg name DSM05-DSM05_CAMPUS_SOUTH value 101986
srlg name JKT30-SG3_IGG_BSCS_Telin value 101929
srlg name JNB21-MRS20_SEACOM_PATH1 value 101116
srlg name LED30-STO30_ROSTEL_PATH1 value 101805
srlg name LED30-STO31_ROSTEL_PATH1 value 101806
srlg name MRS20-SIN30_SMW5_SINGTEL value 101882
srlg name MWH01-MWH01_CAMPUS_NORTH value 101998
srlg name MWH01-MWH01_CAMPUS_SOUTH value 102000
srlg name NTG20-HKG31_CHINA_UNICOM value 101916
srlg name NTG20-SHA20_CHINA_UNICOM value 101911
srlg name PHX02-PHX21_SOUTH_OPSPAN value 101798
srlg name STG30-STG31_IAD106_NORTH value 101307
srlg name STG30-STG31_IAD107_SOUTH value 101308
srlg name ZQZ20-NTG20_CHINA_MOBILE value 101907
srlg name ZQZ22-BJS20_CHINA_UNICOM value 101910
srlg name ZQZ22-HKG20_CHINA_UNICOM value 101915
srlg name ZQZ22-NTG20_CHINA_UNICOM value 101908
srlg name AUH20-MRS20_ETISALAT_SMW4 value 101147
srlg name AUH20-MRS21_ETISALAT_SMW4 value 102096
srlg name BIO70-ORF70_MAREA_SLS_901 value 101246
srlg name BJS20-SHA20_CHINA_TELECOM value 102115
srlg name BOG30-MIA_CWNETWORKS_CFX1 value 102100
srlg name CMB30-SG2_SRILANKATELECOM value 101662
srlg name CYS06-SEA90_B25-WEST_ZAYO value 101944
srlg name CYS06-SEA90_B43-EAST_ZAYO value 101945
srlg name DXB20-MRS20_ETISALAT_AAE1 value 101783
srlg name FRA30-VIE_INTEROUTE_PATH1 value 101223
srlg name LAX-SCL01_CENTURYLINK_LAN value 101248
srlg name NTG20-HKG20_CHINA_TELECOM value 101917
srlg name NTG20-SHA20_CHINA_TELECOM value 101912
srlg name PAR21-VIE_INTEROUTE_PATH1 value 101092
srlg name PER30-SYD23_INDIGOCENTRAL value 101401
srlg name YMQ01-YQB20_BELLCANADA_01 value 101253
srlg name YMQ01-YQB20_BELLCANADA_02 value 101322
srlg name YMQ01-YTO20_BELLCANADA_01 value 101313
srlg name YMQ01-YTO30_BELLCANADA_01 value 100974
srlg name ZQZ20-BJS20_CHINA_TELECOM value 101909
srlg name ZQZ20-HKG31_CHINA_TELECOM value 101914
srlg name AMB-BER30_EUNETWORKS_PATH1 value 101059
srlg name AMS-HEL01_EUNETWORKS_PATH1 value 101754
srlg name AMS06-AMS21_EUROFIBER_EAST value 101968
srlg name AMS06-AMS21_EUROFIBER_WEST value 101967
srlg name AMS06-AMS30_EUROFIBER_EAST value 101965
srlg name AMS06-AMS30_EUROFIBER_WEST value 101963
srlg name AUH20-DXB20_ETISALAT_PATH1 value 101201
srlg name AUH20-DXB20_ETISALAT_PATH2 value 101149
srlg name BER30-FRA_EUNETWORKS_PATH2 value 101276
srlg name BKK30-SG3_TIME_TERRESTRIAL value 102123
srlg name DXB20-DXB30_ETISALAT_PATH1 value 101791
srlg name DXB21-MRS20_DU_FALCON_HAWK value 101786
srlg name EWR31-NYC_CROWNCASTLE_EAST value 102072
srlg name EWR31-NYC_CROWNCASTLE_WEST value 102071
srlg name FOR01-RIO03_CENTURYLINK_01 value 101141
srlg name FRA30-VIE_EUNETWORKS_PATH1 value 101555
srlg name GRU30-RIO03_CENTURYLINK_01 value 101240
srlg name HOU01-SN1_CENTURYLINK_WEST value 102076
srlg name HOU01-SN6_CENTURYLINK_EAST value 102073
srlg name MRS21-TLV20_ALEXANDROS_TBD value 101846
srlg name PUS01-PUS03_TERRESTRIAL_KT value 100569
srlg name PUS01-SEL20_TERRESTRIAL_KT value 101330
srlg name PUS03-PUS20_TERRESTRIAL_KT value 101889
srlg name PUS20-SEL21_TERRESTRIAL_KT value 101339
srlg name SYD-SYD03_TERRESTRIAL_PIPE value 101891
srlg name ATH01-MRS01_TISPARKLE_PATH1 value 101169
srlg name ATH01-SOF01_TISPARKLE_PATH1 value 101268
srlg name BER20-FRA21_EUNETWORKS_WEST value 100917
srlg name BER20-FRA30_EUNETWORKS_EAST value 100918
srlg name BER20-OSL20_EUNETWORKS_EAST value 100992
srlg name CYS06-SN8_WEST_CENTRULYLINK value 101942
srlg name FRA21-TLV30_JONAH_PROTECTED value 101655
srlg name FRA30-PAR30_INTEROUTE_PATH1 value 101185
srlg name HEL01-HEL02_ELISA_YH3101718 value 100457
srlg name HEL01-HEL03_ELISA_YH3101711 value 100458
srlg name HEL02-HEL03_ELISA_YH3101719 value 100459
srlg name MIL30-ZRH20_GTT_CENTURYLINK value 101833
srlg name MRS20-ROM30_SOUTH_GTT_PATH1 value 101896
srlg name OSA20-TYO31_NTT_TERRESTRIAL value 101332
srlg name PUS20-SLA_01_02_TERRESTRIAL value 101056
srlg name SG2-SGE_TERRESTRIAL_SINGTEL value 101890
srlg name TLV20-ZRH20_MEDNAUTILUS_TBD value 101847
srlg name AMS21-BRU30_EUNETWORKS_PATH1 value 101080
srlg name AMS21-PAR21_EUNETWORKS_PATH1 value 101073
srlg name BER20-HAM30_EUNETWORKS_PATH1 value 101188
srlg name BOM02-MAA02_AIRTEL_PROTECTED value 101597
srlg name BOM30-DOH30_OOREDOO_GBI_MENA value 101768
srlg name DBB-MAN30_GTT_HIBERNIA_PATH1 value 101305
srlg name FRA21-ZRH20_EUNETWORKS_PATH1 value 101249
srlg name FRA30-HAM30_EUNETWORKS_PATH1 value 101287
srlg name FRA30-HEL01_EUNETWORKS_PATH1 value 101588
srlg name FRA30-PAR21_EUNETWORKS_PATH1 value 101053
srlg name HEL01-STO31_EUNETWORKS_PATH1 value 101643
srlg name LON22-PAR30_EUNETWORKS_PATH1 value 101352
srlg name OSA31-TYO30_COLT_TERRESTRIAL value 101884
srlg name OSA31-TYO30_KDDI_TERRESTRIAL value 101123
srlg name AMS06-HAM30_EUROFIBER_SLS_301 value 101284
srlg name BOM02-PNQ21_TERRESTRIAL_PATH1 value 101674
srlg name CBR20-SYD23_OPTUS_TERRESTRIAL value 101333
srlg name CBR21-MEL20_OPTUS_TERRESTRIAL value 101745
srlg name COS01-DEN02_CENTURYLINK_PATH1 value 100377
srlg name COS01-DEN02_CENTURYLINK_PATH2 value 100657
srlg name CWL20-LON22_CENTURYLINK_PATH1 value 101232
srlg name CWL20-LON22_CENTURYLINK_PATH2 value 101074
srlg name JGA20-BOM31_RELIANCEJIO_PATH1 value 102020
srlg name JGA20-BOM31_RELIANCEJIO_PATH2 value 102021
srlg name JGA20-MAA31_RELIANCEJIO_PATH1 value 102018
srlg name JGA20-MAA31_RELIANCEJIO_PATH2 value 102019
srlg name JGA20-NAG20_RELIANCEJIO_PATH1 value 102022
srlg name JGA20-NAG20_RELIANCEJIO_PATH2 value 102023
srlg name JGA20-NAG20_RELIANCEJIO_PATH3 value 102024
srlg name LON22-MAN30_GTTHIBERNIA_PATH1 value 101415
srlg name LON24-MAN30_GTTHIBERNIA_PATH1 value 101721
srlg name MNZ21-MANASSAS_JCT_CORONA_CTL value 101939
srlg name NAG20-BOM31_RELIANCEJIO_PATH1 value 102027
srlg name NAG20-BOM31_RELIANCEJIO_PATH2 value 102028
srlg name NAG20-MAA31_RELIANCEJIO_PATH1 value 102025
srlg name NAG20-MAA31_RELIANCEJIO_PATH2 value 102026
srlg name SCL01-SCL30_TELXIUS_PROTECT_1 value 101834
srlg name SCL01-SCL30_TELXIUS_PROTECT_2 value 102055
srlg name DXB20-DXB21_DU_DARKFIBER_NORTH value 101789
srlg name DXB20-DXB21_DU_DARKFIBER_SOUTH value 101790
srlg name LON04-MAN30_GTT_HIBERNIA_PATH1 value 101258
srlg name MNZ21-MANASSAS_JCT_CORONA_ZAYO value 101941
srlg name CBR23-MEL01_TELSTRA_TERRESTRIAL value 101671
srlg name DOH31-MRS20_OOREDOO_FALCON_FLAG value 101769
srlg name FLL30-FOR01_MONET_ANGOLA_CABLES value 102067
srlg name FRA21-IST30_MEDTURK_TERRESTRIAL value 101774
srlg name FRA30-IST30_MEDTURK_TERRESTRIAL value 101773
srlg name HOU01-SN1_CENTURYLINK_EAST_TEMP value 102075
srlg name HOU01-SN6_CENTURYLINK_WEST_TEMP value 102074
srlg name PUS01-PUS03_TERRESTRIAL_LGUPLUS value 102035
srlg name PUS01-SEL20_TERRESTRIAL_LGUPLUS value 102034
srlg name PUS03-SEL20_TERRESTRIAL_LGUPLUS value 101214
srlg name PUS20-SEL21_TERRESTRIAL_LGUPLUS value 101719
srlg name AMS21-LON24_TANGERINE_COLT_PATH1 value 101152
srlg name BER20-BER30_MSFT_BULK_EAST_PATH1 value 100923
srlg name BER20-BER30_MSFT_BULK_WEST_PATH1 value 100924
srlg name BOM02-PNQ01_TATA_01_02_PROTECTED value 101108
srlg name BOM30-MAA30_TATA_01_02_PROTECTED value 101060
srlg name AMS30-FRA21_HYBRID_OLS_EUNETWORKS value 101346
srlg name BER20-FRA21_EUNETWORKS_WEST_PATH1 value 101166
srlg name BER20-FRA21_EUNETWORKS_WEST_PATH2 value 101477
srlg name BER20-FRA30_EUNETWORKS_EAST_PATH1 value 101300
srlg name BER20-FRA30_EUNETWORKS_WEST_PATH1 value 101921
srlg name BER20-OSL20_EUNETWORKS_EAST_PATH1 value 101038
srlg name DUB08-LON24_EIRGRID_NORTH_SLS_304 value 101179
srlg name FRA30-TLV30_MEDNAUTILUS_PROTECTED value 101649
srlg name MIL30-ZRH20_GTT_CENTURYLINK_SHARE value 101591
srlg name TEB30-PHL01_LEAFROUTE_CENTURYLINK value 102240
srlg name PHL01-WA05_WILTELROUTE_CENTURYLINK value 102241
srlg name COLUMBIA_CLS-BOG30_UFINET_PROTECT_1 value 102053
srlg name COLUMBIA_CLS-BOG30_UFINET_PROTECT_2 value 102054
srlg name COLUMBIA_CLS-BOG30_UFINET_PROTECT_3 value 102099
srlg name CWL20-LON22_CENTURYLINK_NORTH_PATH2 value 101319
srlg name CWL20-LON22_CENTURYLINK_SOUTH_PATH1 value 101314
srlg name CYS06-DEN02_EAST_CORONA_CENTRUYLINK value 101937
srlg name VIE-VIE20_EUNETWORKS_DARKFIBER_EAST value 101840
srlg name VIE-VIE20_EUNETWORKS_DARKFIBER_WEST value 101839
srlg name VIE-VIE20_EUNETWORKS_DARKFIBER_NORTH value 101835
srlg name VIE-VIE20_EUNETWORKS_DARKFIBER_SOUTH value 101836
srlg name BOM02-MAA02_POWERGRID_01_02_PROTECTED value 101050
srlg name BOM30-PNQ01_POWERGRID_01_02_PROTECTED value 101302
srlg name DEN02-MANASSAS_JCT_CORONA_CENTURYLINK value 101938
srlg name MINNETONKA_MN_HWY_61-OLD_SHADY_OAK_RD value 102050
srlg name MRS20-MRS21_SIPARTECH_DARKFIBER_NORTH value 102089
srlg name MRS20-MRS21_SIPARTECH_DARKFIBER_SOUTH value 102090
srlg name AMS06-AMS21_EUROFIBER_WEST_OMT62_PATH1 value 101692
srlg name BOM30-PNQ20_TATA_TERRESTRIAL_PROTECTED value 101742
srlg name MAA30-PNQ21_TATA_TERRESTRIAL_PROTECTED value 101743
srlg name LON22-PAR30_HYBRID_OLS_EUNETWORKS_PATH1 value 101594
srlg name LON24-PAR21_HYBRID_OLS_EUNETWORKS_PATH1 value 101918
srlg name MINNETONKA_MN_5th_ST_SOUTH-7th_ST_SOUTH value 102049
srlg name DUB07-LON22_CELTIC_CONNECT_SOUTH_SLS_305 value 101301
srlg name MAA01-PNQ20_AIRTEL_TERRESTRIAL_PROTECTED value 101744
srlg name CYS06-DEN02_WEST_MANASSAS_JCT_CORONA_ZAYO value 101940
srlg name DXB20-DXB21_DU_DARKFIBER_METRO_EDGE_RNG_EAST value 101795
srlg name DXB20-DXB30_DU_DARKFIBER_METRO_EDGE_RNG_WEST value 101793
srlg name DXB21-DXB30_DU_DARKFIBER_METRO_EDGE_RNG_EAST value 101794
srlg name MWH01-SEA02_OPSPAN_SEA02-STB_PDX01-STB_OPSPAN value 101999
srlg name FRA30-IST30_MEDTURK_SUBSEA_MEDNAUTILUS_PROTECTION value 101772
srlg 
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny 
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 100.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 172.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 192.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.3.145.32/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.18.78.236/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.53.45.0/24
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.53.46.0/24
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.130.48.10/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 100.88.4.0/22
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny 
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 100.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 172.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 192.0.0.0/8
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.3.145.32/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.18.78.236/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.53.45.0/24
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.53.46.0/24
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.130.48.10/32
linux networking vrf default address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 100.88.4.0/22
linux networking vrf default address-family ipv4 protection protocol tcp local-port 57400 default-action deny 
linux networking vrf default address-family ipv4 protection protocol tcp local-port 57400 default-action deny permit local-address 127.0.0.1/32
linux networking vrf default address-family ipv6 protection protocol tcp local-port 57400 default-action deny 
linux networking vrf default address-family ipv6 protection protocol tcp local-port 57400 default-action deny permit local-address ::1/128
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny 
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 100.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 172.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 192.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.3.145.32/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.18.78.236/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.53.45.0/24
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.53.46.0/24
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 10.130.48.10/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10000 default-action deny permit remote-address 100.88.4.0/22
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny 
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 100.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 172.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 192.0.0.0/8
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.3.145.32/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.18.78.236/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.53.45.0/24
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.53.46.0/24
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 10.130.48.10/32
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 10001 default-action deny permit remote-address 100.88.4.0/22
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 57400 default-action deny 
linux networking vrf MANAGEMENT address-family ipv4 protection protocol tcp local-port 57400 default-action deny permit local-address 127.0.0.1/32
linux networking vrf MANAGEMENT address-family ipv6 protection protocol tcp local-port 57400 default-action deny 
linux networking vrf MANAGEMENT address-family ipv6 protection protocol tcp local-port 57400 default-action deny permit local-address ::1/128
fpd auto-upgrade enable
icmp ipv4 rate-limit unreachable 600
ipv4 conflict-policy static
ipv6 conflict-policy static
appmgr application SwanAgent activate type docker source swanagent docker-run-opts "--vrf-forward vrf-MANAGEMENT:10000-10001 global-vrf:10000-10001 -it --restart always --memory=500m --memory-reservation=450m --cap-add=SYS_ADMIN --net=host --log-opt max-size=20m --log-opt max-file=3 -e HOSTNAME=$HOSTNAME -v /var/run/netns:/var/run/netns -v {app_install_root}/config/swanagent:/root/config -v {app_install_root}/config/swanagent/hostname:/etc/hostname -v {app_install_root}/data/certs:/root/config/certs -v /etc/localtime:/hostetc/localtime:ro -v /var/lib/docker/ems:/root/ems "
appmgr application ApCaCertAgent activate type docker source apcacertagent docker-run-opts "-it --restart always --cap-add=SYS_ADMIN --net=host --log-opt max-size=20m --log-opt max-file=3 -v /var/run/netns:/var/run/netns -v {app_install_root}/config/apcacertagent:/root/config -v {app_install_root}/data/certs:/root/config/certs -v {app_install_root}/config/apcacertagent/hostname:/etc/hostname"
ntp server vrf MANAGEMENT 10.20.8.129 prefer iburst
ntp server vrf MANAGEMENT 10.20.8.130 prefer iburst
ntp server vrf MANAGEMENT 25.66.230.0 prefer iburst
ntp access-group ipv4 serve ntp-request
ntp update-calendar
bfd echo disable
ipv4 unnumbered mpls traffic-eng Loopback99
object-group port SKYPE-UDP 
object-group port SKYPE-UDP eq 3478
object-group port SKYPE-UDP eq 3479
object-group port SKYPE-UDP eq 3480
object-group port SKYPE-UDP eq 3481
object-group port GLOBAL-UDP 
object-group port GLOBAL-UDP eq 3544
object-group port GLOBAL-UDP eq 4500
object-group port GLOBAL-UDP eq 20000
object-group port GLOBAL-UDP eq 20001
object-group port GLOBAL-UDP eq 20002
object-group port TCP-L4-list 
object-group port TCP-L4-list eq 443
object-group port TCP-L4-list range 8443 8445
object-group port udp-port-be 
object-group port udp-port-be range 1 20002
object-group port udp-port-scav 
object-group port udp-port-scav eq www
object-group port udp-port-scav eq 443
object-group port DDOS-REFLECTION 
object-group port DDOS-REFLECTION eq 17
object-group port DDOS-REFLECTION eq chargen
object-group port DDOS-REFLECTION eq sunrpc
object-group port DDOS-REFLECTION eq 123
object-group port DDOS-REFLECTION eq 137
object-group port DDOS-REFLECTION eq 389
object-group port DDOS-REFLECTION eq 1900
object-group port DDOS-REFLECTION eq 5353
object-group port DDOS-REFLECTION eq 11211
object-group port TEAMS-PREFIX-V4-PORTS-ef 
object-group port TEAMS-PREFIX-V4-PORTS-ef range 32768 36864
object-group port TEAMS-PREFIX-V4-PORTS-ef range 49152 53247
object-group port TEAMS-PREFIX-V4-PORTS-af21 
object-group port TEAMS-PREFIX-V4-PORTS-af21 eq 3481
object-group port TEAMS-PREFIX-V4-PORTS-af21 range 57344 61439
object-group port TEAMS-PREFIX-V4-PORTS-af21 range 61440 65535
object-group port TEAMS-PREFIX-V4-PORTS-af41 
object-group port TEAMS-PREFIX-V4-PORTS-af41 eq 3480
object-group port TEAMS-PREFIX-V4-PORTS-af41 range 53248 57343
object-group port MAPS-VOICE-PSTN-PREFIX-PORTS-ef 
object-group port MAPS-VOICE-PSTN-PREFIX-PORTS-ef range 32768 36863
object-group port MAPS-VOICE-PSTN-PREFIX-PORTS-ef range 49152 53247
object-group network ipv4 XBOX-V4 
object-group network ipv4 XBOX-V4 13.104.64.0/18
object-group network ipv4 BOGON-V4 
object-group network ipv4 BOGON-V4 0.0.0.0/8
object-group network ipv4 BOGON-V4 10.0.0.0/8
object-group network ipv4 BOGON-V4 127.0.0.0/8
object-group network ipv4 BOGON-V4 172.16.0.0/12
object-group network ipv4 BOGON-V4 198.18.0.0/15
object-group network ipv4 BOGON-V4 224.0.0.0/3
object-group network ipv4 BOGON-V4 0.0.0.0/32
object-group network ipv4 BOGON-V4 169.254.0.0/16
object-group network ipv4 BOGON-V4 192.0.0.0/24
object-group network ipv4 BOGON-V4 192.0.2.0/24
object-group network ipv4 BOGON-V4 192.168.0.0/16
object-group network ipv4 BOGON-V4 198.51.100.0/24
object-group network ipv4 BOGON-V4 203.0.113.0/24
object-group network ipv4 MOONCAKE 
object-group network ipv4 MOONCAKE 40.72.0.0/15
object-group network ipv4 MOONCAKE 52.130.0.0/15
object-group network ipv4 MOONCAKE 40.125.128.0/17
object-group network ipv4 MOONCAKE 40.126.64.0/18
object-group network ipv4 MOONCAKE 42.159.0.0/16
object-group network ipv4 MOONCAKE 103.9.8.0/22
object-group network ipv4 MOONCAKE 139.217.0.0/16
object-group network ipv4 MOONCAKE 139.219.0.0/16
object-group network ipv4 ITEpremium 
object-group network ipv4 ITEpremium 52.112.0.0/14
object-group network ipv4 PERMIT-DNS 
object-group network ipv4 PERMIT-DNS 13.106.32.32/27
object-group network ipv4 PERMIT-DNS 23.103.131.0/24
object-group network ipv4 PERMIT-DNS 51.4.71.32/27
object-group network ipv4 PERMIT-DNS 51.5.71.0/27
object-group network ipv4 PERMIT-DNS 64.4.5.0/26
object-group network ipv4 PERMIT-DNS 64.4.15.80/28
object-group network ipv4 PERMIT-DNS 65.54.70.0/26
object-group network ipv4 PERMIT-DNS 65.54.121.0/26
object-group network ipv4 PERMIT-DNS 65.54.238.64/27
object-group network ipv4 PERMIT-DNS 65.55.5.128/27
object-group network ipv4 PERMIT-DNS 65.55.33.0/27
object-group network ipv4 PERMIT-DNS 65.55.37.32/28
object-group network ipv4 PERMIT-DNS 65.55.81.0/28
object-group network ipv4 PERMIT-DNS 65.55.117.0/26
object-group network ipv4 PERMIT-DNS 65.55.178.0/26
object-group network ipv4 PERMIT-DNS 65.55.238.0/26
object-group network ipv4 PERMIT-DNS 70.37.154.0/27
object-group network ipv4 PERMIT-DNS 94.245.64.0/28
object-group network ipv4 PERMIT-DNS 94.245.77.0/28
object-group network ipv4 PERMIT-DNS 94.245.112.32/28
object-group network ipv4 PERMIT-DNS 104.44.106.32/27
object-group network ipv4 PERMIT-DNS 104.44.106.64/27
object-group network ipv4 PERMIT-DNS 104.44.106.128/27
object-group network ipv4 PERMIT-DNS 104.44.193.224/27
object-group network ipv4 PERMIT-DNS 104.44.221.32/27
object-group network ipv4 PERMIT-DNS 104.44.221.96/27
object-group network ipv4 PERMIT-DNS 104.44.222.160/27
object-group network ipv4 PERMIT-DNS 104.44.223.0/26
object-group network ipv4 PERMIT-DNS 111.221.121.0/27
object-group network ipv4 PERMIT-DNS 134.170.65.0/28
object-group network ipv4 PERMIT-DNS 134.170.216.32/27
object-group network ipv4 PERMIT-DNS 134.170.217.128/27
object-group network ipv4 PERMIT-DNS 157.56.74.160/27
object-group network ipv4 PERMIT-DNS 157.56.96.0/28
object-group network ipv4 PERMIT-DNS 157.56.156.0/27
object-group network ipv4 PERMIT-DNS 157.56.157.32/27
object-group network ipv4 PERMIT-DNS 157.56.158.0/27
object-group network ipv4 PERMIT-DNS 157.56.159.0/27
object-group network ipv4 PERMIT-DNS 157.56.204.32/27
object-group network ipv4 PERMIT-DNS 157.56.205.0/27
object-group network ipv4 PERMIT-DNS 193.221.113.53/32
object-group network ipv4 PERMIT-DNS 204.79.195.0/26
object-group network ipv4 PERMIT-DNS 204.79.252.0/27
object-group network ipv4 PERMIT-DNS 207.46.0.32/27
object-group network ipv4 PERMIT-DNS 207.46.48.192/27
object-group network ipv4 PERMIT-DNS 207.46.66.64/27
object-group network ipv4 PERMIT-DNS 207.46.116.0/26
object-group network ipv4 PERMIT-DNS 207.46.200.32/28
object-group network ipv4 PERMIT-DNS 207.68.168.16/28
object-group network ipv4 PERMIT-DNS 208.68.136.32/27
object-group network ipv4 PERMIT-DNS 208.76.45.53/32
object-group network ipv4 PERMIT-DNS 208.76.46.0/26
object-group network ipv4 PERMIT-DNS 208.84.0.53/32
object-group network ipv4 PERMIT-DNS 208.84.2.53/32
object-group network ipv4 PERMIT-DNS 213.199.177.64/27
object-group network ipv4 PRIVATE-V4 
object-group network ipv4 PRIVATE-V4 4.128.0.0/12
object-group network ipv4 PRIVATE-V4 10.0.0.0/8
object-group network ipv4 PRIVATE-V4 13.96.0.0/13
object-group network ipv4 PRIVATE-V4 20.144.0.0/14
object-group network ipv4 PRIVATE-V4 20.176.0.0/14
object-group network ipv4 PRIVATE-V4 20.180.0.0/14
object-group network ipv4 PRIVATE-V4 21.0.0.0/8
object-group network ipv4 PRIVATE-V4 22.0.0.0/8
object-group network ipv4 PRIVATE-V4 25.0.0.0/12
object-group network ipv4 PRIVATE-V4 25.28.0.0/14
object-group network ipv4 PRIVATE-V4 25.64.0.0/10
object-group network ipv4 PRIVATE-V4 25.128.0.0/14
object-group network ipv4 PRIVATE-V4 25.142.0.0/15
object-group network ipv4 PRIVATE-V4 25.144.0.0/12
object-group network ipv4 PRIVATE-V4 25.160.0.0/11
object-group network ipv4 PRIVATE-V4 25.192.0.0/11
object-group network ipv4 PRIVATE-V4 25.224.0.0/12
object-group network ipv4 PRIVATE-V4 25.244.0.0/14
object-group network ipv4 PRIVATE-V4 25.248.0.0/13
object-group network ipv4 PRIVATE-V4 52.132.0.0/14
object-group network ipv4 PRIVATE-V4 68.18.0.0/15
object-group network ipv4 PRIVATE-V4 100.64.0.0/10
object-group network ipv4 PRIVATE-V4 172.16.0.0/12
object-group network ipv4 PRIVATE-V4 198.18.0.0/15
object-group network ipv4 PRIVATE-V4 20.35.252.0/22
object-group network ipv4 PRIVATE-V4 20.128.0.0/16
object-group network ipv4 PRIVATE-V4 20.130.0.0/16
object-group network ipv4 PRIVATE-V4 23.103.0.0/18
object-group network ipv4 PRIVATE-V4 25.33.80.0/20
object-group network ipv4 PRIVATE-V4 25.41.3.0/25
object-group network ipv4 PRIVATE-V4 40.66.128.0/17
object-group network ipv4 PRIVATE-V4 40.108.0.0/19
object-group network ipv4 PRIVATE-V4 40.108.32.0/19
object-group network ipv4 PRIVATE-V4 40.108.64.0/18
object-group network ipv4 PRIVATE-V4 40.109.0.0/16
object-group network ipv4 PRIVATE-V4 52.145.0.0/16
object-group network ipv4 PRIVATE-V4 104.146.0.0/19
object-group network ipv4 PRIVATE-V4 104.146.32.0/19
object-group network ipv4 PRIVATE-V4 104.146.64.0/18
object-group network ipv4 PRIVATE-V4 104.147.0.0/16
object-group network ipv4 PRIVATE-V4 129.75.0.0/16
object-group network ipv4 PRIVATE-V4 134.177.0.0/16
object-group network ipv4 PRIVATE-V4 138.196.0.0/16
object-group network ipv4 PRIVATE-V4 141.251.0.0/16
object-group network ipv4 PRIVATE-V4 146.147.0.0/16
object-group network ipv4 PRIVATE-V4 191.232.4.0/26
object-group network ipv4 PRIVATE-V4 191.232.6.0/23
object-group network ipv4 PRIVATE-V4 191.235.9.0/24
object-group network ipv4 PRIVATE-V4 191.235.10.0/24
object-group network ipv4 PRIVATE-V4 191.235.13.0/24
object-group network ipv4 PRIVATE-V4 191.235.14.0/24
object-group network ipv4 PRIVATE-V4 192.32.0.0/16
object-group network ipv4 PRIVATE-V4 192.100.102.0/24
object-group network ipv4 PRIVATE-V4 192.100.103.0/24
object-group network ipv4 PRIVATE-V4 192.168.0.0/16
object-group network ipv4 IDENTITY-AS 
object-group network ipv4 IDENTITY-AS 13.75.88.52/32
object-group network ipv4 IDENTITY-AS 13.75.90.19/32
object-group network ipv4 IDENTITY-AS 13.75.90.35/32
object-group network ipv4 IDENTITY-AS 13.75.90.183/32
object-group network ipv4 IDENTITY-AS 13.75.91.110/32
object-group network ipv4 IDENTITY-AS 13.75.92.74/32
object-group network ipv4 IDENTITY-AS 13.75.93.69/32
object-group network ipv4 IDENTITY-AS 13.75.94.1/32
object-group network ipv4 IDENTITY-AS 13.75.94.4/32
object-group network ipv4 IDENTITY-AS 13.75.94.23/32
object-group network ipv4 IDENTITY-AS 13.75.94.181/32
object-group network ipv4 IDENTITY-AS 13.75.95.13/32
object-group network ipv4 IDENTITY-AS 13.75.113.72/32
object-group network ipv4 IDENTITY-AS 13.75.114.100/32
object-group network ipv4 IDENTITY-AS 13.75.121.215/32
object-group network ipv4 IDENTITY-AS 13.75.125.48/32
object-group network ipv4 IDENTITY-AS 13.76.97.152/32
object-group network ipv4 IDENTITY-AS 13.76.100.50/32
object-group network ipv4 IDENTITY-AS 13.76.208.173/32
object-group network ipv4 IDENTITY-AS 13.76.247.164/32
object-group network ipv4 IDENTITY-AS 13.94.24.95/32
object-group network ipv4 IDENTITY-AS 13.94.27.46/32
object-group network ipv4 IDENTITY-AS 13.94.33.9/32
object-group network ipv4 IDENTITY-AS 13.94.46.216/32
object-group network ipv4 IDENTITY-AS 20.184.1.207/32
object-group network ipv4 IDENTITY-AS 20.184.1.254/32
object-group network ipv4 IDENTITY-AS 20.184.3.89/32
object-group network ipv4 IDENTITY-AS 20.184.3.90/32
object-group network ipv4 IDENTITY-AS 20.184.3.92/32
object-group network ipv4 IDENTITY-AS 20.184.3.146/32
object-group network ipv4 IDENTITY-AS 20.184.4.6/32
object-group network ipv4 IDENTITY-AS 20.184.4.9/32
object-group network ipv4 IDENTITY-AS 23.102.236.110/32
object-group network ipv4 IDENTITY-AS 23.102.237.94/32
object-group network ipv4 IDENTITY-AS 23.102.238.238/32
object-group network ipv4 IDENTITY-AS 40.83.121.235/32
object-group network ipv4 IDENTITY-AS 40.83.122.207/32
object-group network ipv4 IDENTITY-AS 40.83.122.220/32
object-group network ipv4 IDENTITY-AS 40.83.124.112/32
object-group network ipv4 IDENTITY-AS 40.83.124.246/32
object-group network ipv4 IDENTITY-AS 40.83.126.117/32
object-group network ipv4 IDENTITY-AS 40.83.127.243/32
object-group network ipv4 IDENTITY-AS 52.163.92.240/32
object-group network ipv4 IDENTITY-AS 52.163.94.204/32
object-group network ipv4 IDENTITY-AS 52.163.118.59/32
object-group network ipv4 IDENTITY-AS 52.163.123.2/32
object-group network ipv4 IDENTITY-AS 52.163.211.177/32
object-group network ipv4 IDENTITY-AS 52.163.215.212/32
object-group network ipv4 IDENTITY-AS 52.163.219.241/32
object-group network ipv4 IDENTITY-AS 52.163.226.140/32
object-group network ipv4 IDENTITY-AS 52.163.229.167/32
object-group network ipv4 IDENTITY-AS 52.163.241.114/32
object-group network ipv4 IDENTITY-AS 52.175.23.211/32
object-group network ipv4 IDENTITY-AS 52.175.25.101/32
object-group network ipv4 IDENTITY-AS 52.175.27.41/32
object-group network ipv4 IDENTITY-AS 52.175.28.140/32
object-group network ipv4 IDENTITY-AS 52.175.31.247/32
object-group network ipv4 IDENTITY-AS 52.175.33.200/32
object-group network ipv4 IDENTITY-AS 52.175.39.194/32
object-group network ipv4 IDENTITY-AS 52.184.26.159/32
object-group network ipv4 IDENTITY-AS 52.187.37.10/32
object-group network ipv4 IDENTITY-AS 52.187.67.242/32
object-group network ipv4 IDENTITY-AS 52.187.72.121/32
object-group network ipv4 IDENTITY-AS 52.187.78.162/32
object-group network ipv4 IDENTITY-AS 52.187.122.245/32
object-group network ipv4 IDENTITY-AS 52.187.124.202/32
object-group network ipv4 IDENTITY-AS 52.187.128.140/32
object-group network ipv4 IDENTITY-AS 52.187.134.232/32
object-group network ipv4 IDENTITY-AS 52.187.164.172/32
object-group network ipv4 IDENTITY-AS 52.229.170.137/32
object-group network ipv4 IDENTITY-AS 52.229.170.149/32
object-group network ipv4 IDENTITY-AS 52.229.171.47/32
object-group network ipv4 IDENTITY-AS 52.230.65.100/32
object-group network ipv4 IDENTITY-AS 52.230.124.125/32
object-group network ipv4 IDENTITY-AS 207.46.233.6/32
object-group network ipv4 IDENTITY-AS 207.46.236.4/32
object-group network ipv4 IDENTITY-AS 207.46.236.31/32
object-group network ipv4 IDENTITY-AS 207.46.236.143/32
object-group network ipv4 IDENTITY-AS 207.46.237.88/32
object-group network ipv4 IDENTITY-AS 207.46.237.158/32
object-group network ipv4 IDENTITY-AS 207.46.237.194/32
object-group network ipv4 IDENTITY-AS 207.46.237.213/32
object-group network ipv4 IDENTITY-EU 
object-group network ipv4 IDENTITY-EU 13.94.235.65/32
object-group network ipv4 IDENTITY-EU 51.136.15.98/32
object-group network ipv4 IDENTITY-EU 51.136.30.139/32
object-group network ipv4 IDENTITY-EU 51.137.49.119/32
object-group network ipv4 IDENTITY-EU 51.137.99.118/32
object-group network ipv4 IDENTITY-EU 51.144.162.25/32
object-group network ipv4 IDENTITY-EU 51.144.230.43/32
object-group network ipv4 IDENTITY-EU 52.138.148.88/32
object-group network ipv4 IDENTITY-EU 52.138.221.86/32
object-group network ipv4 IDENTITY-EU 52.169.1.240/32
object-group network ipv4 IDENTITY-EU 52.169.84.94/32
object-group network ipv4 IDENTITY-EU 52.169.85.142/32
object-group network ipv4 IDENTITY-EU 52.178.184.238/32
object-group network ipv4 IDENTITY-EU 52.178.188.120/32
object-group network ipv4 IDENTITY-EU 52.178.196.187/32
object-group network ipv4 IDENTITY-EU 52.232.76.88/32
object-group network ipv4 IDENTITY-EU 104.45.17.212/32
object-group network ipv4 prefix-snmpx 
object-group network ipv4 prefix-snmpx 10.20.6.32/27
object-group network ipv4 prefix-snmpx 10.20.6.64/27
object-group network ipv4 prefix-snmpx 10.20.6.192/27
object-group network ipv4 prefix-snmpx 10.20.17.160/27
object-group network ipv4 prefix-snmpx 10.20.17.224/27
object-group network ipv4 WAN-Management 
object-group network ipv4 WAN-Management 10.18.78.235/32
object-group network ipv4 WAN-Management 10.20.0.38/32
object-group network ipv4 WAN-Management 10.20.0.41/32
object-group network ipv4 WAN-Management 10.20.0.44/32
object-group network ipv4 WAN-Management 10.20.0.100/32
object-group network ipv4 WAN-Management 10.20.0.103/32
object-group network ipv4 WAN-Management 10.20.0.110/31
object-group network ipv4 WAN-Management 10.20.0.139/32
object-group network ipv4 WAN-Management 10.20.0.167/32
object-group network ipv4 WAN-Management 10.20.0.197/32
object-group network ipv4 WAN-Management 10.20.0.199/32
object-group network ipv4 WAN-Management 10.20.0.206/32
object-group network ipv4 WAN-Management 10.20.0.209/32
object-group network ipv4 WAN-Management 10.20.0.212/32
object-group network ipv4 WAN-Management 10.20.0.220/31
object-group network ipv4 WAN-Management 10.20.0.222/32
object-group network ipv4 WAN-Management 10.20.54.56/29
object-group network ipv4 WAN-Management 10.20.54.64/29
object-group network ipv4 BEST-EFFORT-DST 
object-group network ipv4 BEST-EFFORT-DST 192.0.0.9/32
object-group network ipv4 BEST-EFFORT-SRC 
object-group network ipv4 BEST-EFFORT-SRC 192.0.0.8/32
object-group network ipv4 IPv4ONEDDOS-CNS 
object-group network ipv4 IPv4ONEDDOS-CNS 13.68.31.37/32
object-group network ipv4 IPv4ONEDDOS-CNS 40.118.251.245/32
object-group network ipv4 LOOPBACK-IPONLY 
object-group network ipv4 LOOPBACK-IPONLY 10.3.159.184/32
object-group network ipv4 TEAMS-PREFIX-V4 
object-group network ipv4 TEAMS-PREFIX-V4 52.112.0.0/14
object-group network ipv4 TEAMS-PREFIX-V4 52.120.0.0/14
object-group network ipv4 TEAMS-PREFIX-V4 13.107.64.0/18
object-group network ipv4 bgp-ls-machines 
object-group network ipv4 bgp-ls-machines 10.45.243.128/32
object-group network ipv4 bgp-ls-machines 10.45.243.130/32
object-group network ipv4 bgp-ls-machines 10.45.243.182/32
object-group network ipv4 bgp-ls-machines 10.45.243.185/32
object-group network ipv4 bgp-ls-machines 100.100.47.0/25
object-group network ipv4 bgp-ls-machines 100.100.47.1/32
object-group network ipv4 bgp-ls-machines 100.100.47.2/32
object-group network ipv4 PRIVATE-IP-SPACE 
object-group network ipv4 PRIVATE-IP-SPACE 10.0.0.0/8
object-group network ipv4 PRIVATE-IP-SPACE 100.64.0.0/10
object-group network ipv4 PRIVATE-IP-SPACE 172.16.0.0/12
object-group network ipv4 PRIVATE-IP-SPACE 192.168.0.0/16
object-group network ipv4 SCAVENGER-DST-DDOS 
object-group network ipv4 SCAVENGER-DST-DDOS 192.0.0.9/32
object-group network ipv4 SCAVENGER-SRC-DDOS 
object-group network ipv4 SCAVENGER-SRC-DDOS 2.2.2.2/32
object-group network ipv4 SCAVENGER-SRC-DDOS 2.2.5.6/32
object-group network ipv4 SCAVENGER-SRC-DDOS 2.3.4.5/32
object-group network ipv4 SCAVENGER-SRC-DDOS 13.107.246.40/32
object-group network ipv4 SCAVENGER-SRC-DDOS 192.0.0.8/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.199.11/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.199.13/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.199.14/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.209.75/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.209.76/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.209.79/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.209.82/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.5.232.66/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.17.177.250/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.104.16.39/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.104.16.167/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.104.20.17/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.104.20.145/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.232.203.143/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 10.232.203.144/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.68.226.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.68.226.140/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.68.230.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.68.230.140/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.72.217.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.72.220.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.19.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.21.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.90.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.92.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.240.142/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.241.206/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.242.206/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.73.244.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.74.9.27/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.74.9.28/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.74.11.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.74.74.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.74.76.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.75.72.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.75.72.206/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.75.73.142/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.75.74.78/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.76.138.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.76.140.25/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.76.140.26/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.81.65.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.81.67.142/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.81.69.142/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.81.72.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.152.22/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.152.26/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.209.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.209.136/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.212.7/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.212.8/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.234.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.234.140/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.238.133/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.85.238.138/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.86.32.12/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.86.32.18/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.86.34.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.86.34.16/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.100.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.100.138/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.160.7/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.160.11/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.192.25/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.192.27/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.224.25/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.87.224.27/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.89.114.137/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.89.114.140/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.90.40.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.90.40.9/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.209.137/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.209.140/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.212.137/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.212.142/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.224.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.92.224.18/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.200.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.200.9/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.235.139/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.235.203/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.236.11/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.236.75/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.236.139/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.93.236.203/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.99.208.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.99.208.18/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.122.211.16/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.122.215.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.125.42.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.125.46.144/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.125.72.18/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.148.129.94/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.148.129.222/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.6.135/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.6.199/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.14.9/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.14.73/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.16.7/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.16.71/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.64.28/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.64.92/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.64.156/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.64.220/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.136.11/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.136.75/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.176.17/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.176.81/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.200.17/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.200.81/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.232.9/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.232.73/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.240.9/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.150.240.73/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.0.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.0.69/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.56.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.56.69/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.80.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.80.69/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.81.133/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.159.81.197/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.112.91/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.113.93/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.113.219/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.114.221/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.192.78/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.193.78/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.194.78/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.195.78/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.240.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.240.206/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.242.14/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.184.242.206/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.16.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.16.69/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.24.5/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.24.69/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.57.150/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.57.152/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.62.144/30
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.66.16/30
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.68.149/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.68.150/31
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.186.68.152/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.64.17/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.64.145/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.66.20/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.66.148/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.68.31/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.68.37/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.68.157/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.68.160/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.76.141/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.77.13/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.133.7/32
object-group network ipv4 IPv4ONEDDOS-A10-MGMT 25.254.133.71/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET 
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.1.67.224/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.1.140.128/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.1.152.16/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.2.185.64/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.5.36.0/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.14.19.128/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.17.84.0/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.17.104.80/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.24.140.0/27
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.25.169.16/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.25.233.32/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.26.72.64/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.26.207.0/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.26.238.0/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.26.240.192/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.40.132.240/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.40.190.128/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.40.236.176/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.63.13.32/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.201.136.128/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.207.146.0/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 10.211.236.128/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.25.48/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.29.48/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.33.48/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.37.48/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.52.224/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.55.160/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.56.96/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.58.16/28
object-group network ipv4 IPv4ONEDDOS-HYPERNET 100.127.60.64/28
object-group network ipv4 prefix-windows-update 
object-group network ipv4 prefix-windows-update 13.107.4.50/32
object-group network ipv4 prefix-windows-update 13.107.4.54/32
object-group network ipv4 prefix-windows-update 13.107.12.54/32
object-group network ipv4 prefix-windows-update 13.107.246.11/32
object-group network ipv4 prefix-windows-update 13.107.253.10/32
object-group network ipv4 prefix-windows-update 13.107.253.254/32
object-group network ipv4 prefix-windows-update 40.77.226.72/32
object-group network ipv4 prefix-windows-update 40.77.226.181/32
object-group network ipv4 prefix-windows-update 40.77.228.30/32
object-group network ipv4 prefix-windows-update 40.77.232.59/32
object-group network ipv4 prefix-windows-update 131.253.33.50/32
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.128.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.144.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.160.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.176.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.192.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.208.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.224.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 4.240.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 13.64.0.0/11
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 13.104.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.0.0.0/11
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.34.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.36.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.40.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.48.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.64.0.0/10
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.140.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.150.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.158.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.160.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.184.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.192.0.0/10
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 23.96.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 23.100.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 40.64.0.0/10
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.10.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.12.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.104.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.136.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.140.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.144.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.96.0.0/12
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.112.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.120.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.126.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.136.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.146.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.148.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.152.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.160.0.0/11
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.224.0.0/11
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 65.52.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 68.18.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 68.154.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 68.210.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 68.218.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 68.220.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 70.152.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 70.156.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 72.144.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 72.152.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.160.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.176.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.224.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.234.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.240.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 74.248.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 98.64.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 98.70.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 104.40.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 104.208.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 108.140.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 137.116.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 157.54.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 157.56.0.0/14
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 168.62.0.0/15
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 191.232.0.0/13
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.33.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.135.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.136.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.143.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.152.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.153.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 20.157.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 23.102.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 23.103.64.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 23.103.128.0/17
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 30.130.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.51.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.53.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.103.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.107.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.116.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.120.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.124.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.132.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 51.138.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 52.125.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 64.4.0.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 64.41.193.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 66.119.144.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 70.37.0.0/17
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 70.37.128.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 91.190.216.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 94.245.64.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 102.37.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 102.133.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 103.25.156.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 103.36.96.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 103.255.140.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 104.146.0.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 104.146.128.0/17
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 111.221.16.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 111.221.64.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 128.94.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.107.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.1.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.3.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.5.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.6.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.8.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.12.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.16.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.18.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.21.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.22.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.24.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.32.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.61.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.62.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.64.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 131.253.128.0/17
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 132.245.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 134.170.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 135.149.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 137.135.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 138.91.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 138.239.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 143.64.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 147.145.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 147.243.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 148.7.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 150.171.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 155.62.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 157.60.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 158.158.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 167.105.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 167.220.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 168.61.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 169.138.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 170.165.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.48.225.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.84.160.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.92.196.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.102.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.103.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.104.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.112.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.120.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.100.128.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 192.197.157.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 193.149.64.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 193.221.113.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 194.41.16.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 194.69.96.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 195.134.224.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.49.8.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.105.232.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.180.95.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.180.97.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.200.130.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 198.206.164.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.2.137.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.30.16.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.60.28.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.74.210.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.103.90.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.103.122.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.242.32.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 199.242.48.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 202.89.224.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.13.120.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.14.180.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.135.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.179.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.180.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.188.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.195.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.196.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.197.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.79.252.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.95.96.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.152.140.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.176.46.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.182.144.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.192.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.194.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.196.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.200.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.208.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.231.236.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 204.255.244.0/23
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 205.174.224.0/20
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 206.138.168.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 206.191.224.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 207.46.0.0/16
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 207.68.128.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 208.68.136.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 208.76.44.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 208.84.0.0/21
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 209.1.15.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 209.185.128.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 209.240.192.0/19
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 213.199.128.0/18
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 216.32.180.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 216.32.240.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 216.33.240.0/22
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 216.34.51.0/24
object-group network ipv4 GLOBAL-EGRESS-IP-SPACE 216.220.208.0/20
object-group network ipv4 MAPS-VOICE-PSTN-PREFIX 
object-group network ipv4 MAPS-VOICE-PSTN-PREFIX 52.112.0.0/14
object-group network ipv4 MAPS-VOICE-PSTN-PREFIX 52.120.0.0/14
object-group network ipv4 MAPS-VOICE-PSTN-PREFIX 52.120.0.0/15
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 13.96.0.0/13
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.144.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.176.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.180.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 21.0.0.0/8
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 22.0.0.0/8
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.0.0.0/12
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.28.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.64.0.0/10
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.128.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.142.0.0/15
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.144.0.0/12
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.160.0.0/11
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.192.0.0/11
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.224.0.0/12
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.244.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.248.0.0/13
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 52.132.0.0/14
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 198.18.0.0/15
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.35.252.0/22
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.128.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 20.130.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 23.103.0.0/18
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.33.80.0/20
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 25.41.3.0/25
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 30.130.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 40.66.128.0/17
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 40.108.0.0/19
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 40.108.32.0/19
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 40.108.64.0/18
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 40.109.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 52.145.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 61.100.2.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 61.100.2.4/31
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 100.88.4.0/22
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 104.146.0.0/19
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 104.146.32.0/19
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 104.146.64.0/18
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 104.147.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 129.75.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 134.177.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 138.196.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 141.251.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 146.147.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.232.4.0/26
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.232.6.0/23
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.235.9.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.235.10.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.235.13.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 191.235.14.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 192.32.0.0/16
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 192.100.102.0/24
object-group network ipv4 MICROSOFT-PRIVATE-ROUTES 192.100.103.0/24
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 13.71.122.103/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 13.74.153.36/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 13.82.147.240/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 13.84.189.46/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 23.96.55.92/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 23.98.146.36/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 40.86.188.39/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 40.117.239.185/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 40.123.41.162/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 40.126.242.195/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 51.140.125.246/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 51.141.54.244/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.161.20.215/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.162.167.138/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.163.240.40/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.166.115.41/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.173.240.151/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.180.179.193/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.229.166.182/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.231.37.38/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.231.206.203/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.233.44.98/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.235.42.73/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.246.189.70/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 52.250.120.103/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 104.41.29.28/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 104.211.190.172/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 104.215.63.59/32
object-group network ipv4 IPv4ONEDDOS-SFLOW-SFABRIC 137.135.46.202/32
object-group network ipv4 ITE-SRC-DST-SCAVENGER-DST 
object-group network ipv4 ITE-SRC-DST-SCAVENGER-DST 192.0.0.9/32
object-group network ipv4 ITE-SRC-DST-SCAVENGER-SRC 
object-group network ipv4 ITE-SRC-DST-SCAVENGER-SRC 192.0.0.8/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 13.66.20.221/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 13.71.184.224/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 13.73.3.24/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 13.75.93.117/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 13.76.44.85/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.74.134.37/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.86.220.202/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.87.156.3/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.89.135.114/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.112.184.146/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.114.51.208/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.122.70.219/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.126.235.232/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 40.127.71.63/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 51.140.25.83/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 51.141.116.39/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.161.13.91/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.161.17.84/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.167.6.141/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.180.176.248/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.183.10.153/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.231.67.113/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 52.231.152.167/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 104.40.157.173/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 104.41.45.88/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 104.211.96.167/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 104.211.164.180/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 104.211.228.226/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 157.55.164.101/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 191.234.163.235/32
object-group network ipv4 IPv4ONEDDOS-HYPERNET-Public 191.237.45.219/32
object-group network ipv6 BOGON-V6 
object-group network ipv6 BOGON-V6 ::/8
object-group network ipv6 BOGON-V6 100::/8
object-group network ipv6 BOGON-V6 200::/7
object-group network ipv6 BOGON-V6 400::/6
object-group network ipv6 BOGON-V6 800::/5
object-group network ipv6 BOGON-V6 1000::/4
object-group network ipv6 BOGON-V6 4000::/3
object-group network ipv6 BOGON-V6 5f00::/8
object-group network ipv6 BOGON-V6 6000::/3
object-group network ipv6 BOGON-V6 8000::/3
object-group network ipv6 BOGON-V6 a000::/3
object-group network ipv6 BOGON-V6 c000::/3
object-group network ipv6 BOGON-V6 e000::/4
object-group network ipv6 BOGON-V6 f000::/5
object-group network ipv6 BOGON-V6 f800::/6
object-group network ipv6 BOGON-V6 fc00::/7
object-group network ipv6 BOGON-V6 fe00::/9
object-group network ipv6 BOGON-V6 fe80::/10
object-group network ipv6 BOGON-V6 fec0::/10
object-group network ipv6 BOGON-V6 ff00::/8
object-group network ipv6 BOGON-V6 ::/96
object-group network ipv6 BOGON-V6 ::/128
object-group network ipv6 BOGON-V6 ::1/128
object-group network ipv6 BOGON-V6 ::ffff:0.0.0.0/96
object-group network ipv6 BOGON-V6 100::/64
object-group network ipv6 BOGON-V6 2001:10::/28
object-group network ipv6 BOGON-V6 2001:db8::/32
object-group network ipv6 BOGON-V6 2002::/24
object-group network ipv6 BOGON-V6 2002:a00::/24
object-group network ipv6 BOGON-V6 2002:7f00::/24
object-group network ipv6 BOGON-V6 2002:a9fe::/32
object-group network ipv6 BOGON-V6 2002:ac10::/28
object-group network ipv6 BOGON-V6 2002:c0a8::/32
object-group network ipv6 BOGON-V6 2002:e000::/20
object-group network ipv6 BOGON-V6 2002:f000::/24
object-group network ipv6 BOGON-V6 3ffe::/16
object-group network ipv6 SWAN-mgmt 
object-group network ipv6 SWAN-mgmt 2001:506:28:800::/54
object-group network ipv6 TEAMS-PREFIX-V6 
object-group network ipv6 TEAMS-PREFIX-V6 2603:1063::/38
object-group network ipv6 LOOPBACK-IPV6ONLY 
object-group network ipv6 LOOPBACK-IPV6ONLY 2a01:111:e210:1:10:3:159:184/128
object-group network ipv6 WAN-Management-v6 
object-group network ipv6 WAN-Management-v6 2001:506:28::/48
object-group network ipv6 WAN-Management-v6 2603:10e2::/36
object-group network ipv6 SCAVENGER-SRC-DDOS 
object-group network ipv6 SCAVENGER-SRC-DDOS 24::/128
object-group network ipv6 SCAVENGER-SRC-DDOS 2a01:111:f402:f0ed::25/128
object-group network ipv6 MSFT-PERMIT-LIST-V6 
object-group network ipv6 MSFT-PERMIT-LIST-V6 2001:4898:8000::/33
object-group network ipv6 MSFT-PERMIT-LIST-V6 2404:f801:8000::/33
object-group network ipv6 MSFT-PERMIT-LIST-V6 2a01:110:8000::/33
object-group network ipv6 MSFT-PERMIT-LIST-V6 2a01:111:f003::/48
object-group network ipv6 MSFT-PERMIT-LIST-V6 2a01:111:f006::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:df0:7::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d7::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d8::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:df0:d9::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:4898::/32
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:489a:2000::/35
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2001:489a:4000::/35
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2404:f800::/32
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2404:f801::/32
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2404:f802::/31
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2603:1000::/25
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2620:0:30::/45
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2620:1ec::/36
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2801:80:1d0::/48
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2a00:1c68::/29
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2a01:110::/32
object-group network ipv6 IPV6-GLOBAL-EGRESS-SPACE 2a01:111::/32
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 2001:506:28::/48
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 2001:489a::/35
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 2603:1080::/25
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 2a01:111::/36
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES 2a01:111:e000::/36
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES fd35:eef2::/32
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES fd35:eef3::/32
object-group network ipv6 IPV6-MICROSOFT-PRIVATE-ROUTES fd35:eef4::/32
system recovery
key chain ISIS 
key chain ISIS key 1 
key chain ISIS key 1 accept-lifetime 00:00:00 december 01 2014 infinite
key chain ISIS key 1 key-string password $PASS$
key chain ISIS key 1 send-lifetime 00:00:00 december 01 2014 infinite
key chain ISIS key 1 cryptographic-algorithm HMAC-MD5
key chain RSVP 
key chain RSVP key 1 
key chain RSVP key 1 accept-lifetime 00:00:00 december 01 2014 infinite
key chain RSVP key 1 key-string password $PASS$
key chain RSVP key 1 send-lifetime 00:00:00 december 01 2014 infinite
key chain RSVP key 1 cryptographic-algorithm HMAC-MD5
key chain rsvp-key 
key chain rsvp-key $PASS$ 8 
key chain rsvp-key key $PASS$ accept-lifetime 00:00:00 december 12 2014 infinite
key chain rsvp-key key 8 key-string password $PASS$
key chain rsvp-key key $PASS$ send-lifetime 00:00:00 december 12 2014 infinite
key chain rsvp-key key $PASS$ cryptographic-algorithm HMAC-MD5
key chain rsvp-key $PASS$ infinite
key chain macsec-int 
key chain macsec-int macsec 
key chain macsec-int macsec key $PASS$
key chain macsec-int macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain macsec-int macsec key $PASS$ lifetime 01:23:00 february 28 2021 infinite
key chain rwa-owr-fb 
key chain rwa-owr-fb macsec 
key chain rwa-owr-fb macsec key $PASS$
key chain rwa-owr-fb macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain rwa-owr-fb macsec key $PASS$ lifetime 00:00:00 january 01 2017 infinite
key chain rwa-owr-pri 
key chain rwa-owr-pri macsec 
key chain rwa-owr-pri macsec key $PASS$
key chain rwa-owr-pri macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain rwa-owr-pri macsec key $PASS$ lifetime 00:00:00 october 17 2025 infinite
key chain macsec-int-fb 
key chain macsec-int-fb macsec 
key chain macsec-int-fb macsec key $PASS$
key chain macsec-int-fb macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain macsec-int-fb macsec key $PASS$ lifetime 01:32:00 february 22 2018 infinite
key chain rsvp-key-ixia 
key chain rsvp-key-ixia key $PASS$ 
key chain rsvp-key-ixia key $PASS$ accept-lifetime 00:00:00 december 12 2014 infinite
key chain rsvp-key-ixia key 12345 key-string password $PASS$
key chain rsvp-key-ixia key $PASS$ send-lifetime 00:00:00 december 12 2014 infinite
key chain rsvp-key-ixia key $PASS$ cryptographic-algorithm HMAC-MD5
key chain macsec-int-BE131 
key chain macsec-int-BE131 macsec 
key chain macsec-int-BE131 macsec key $PASS$
key chain macsec-int-BE131 macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain macsec-int-BE131 macsec key $PASS$ lifetime 01:23:00 february 28 2021 infinite
key chain macsec-int-fb-BE131 
key chain macsec-int-fb-BE131 macsec 
key chain macsec-int-fb-BE131 macsec key $PASS$
key chain macsec-int-fb-BE131 macsec key $PASS$ key-string password $PASS$ cryptographic-algorithm aes-256-cmac
key chain macsec-int-fb-BE131 macsec key $PASS$ lifetime 01:32:00 february 22 2018 infinite
call-home service active
call-home contact smart-licensing
call-home profile CiscoTAC-1 
call-home profile CiscoTAC-1 active
call-home profile CiscoTAC-1 destination transport-method email disable
call-home profile CiscoTAC-1 destination transport-method http
control-plane management-plane inband interface all allow SSH peer address ipv4 10.0.0.0/8
control-plane management-plane inband interface all allow SSH peer address ipv4 25.0.0.0/8
control-plane management-plane inband interface all allow SSH peer address ipv4 100.0.0.0/8
control-plane management-plane inband interface all allow SSH peer address ipv4 10.3.144.0/20
control-plane management-plane inband interface all allow SSH peer address ipv4 10.18.78.0/24
control-plane management-plane inband interface all allow SSH peer address ipv4 10.20.0.0/18
control-plane management-plane inband interface all allow SSH peer address ipv4 10.20.192.0/18
control-plane management-plane inband interface all allow SSH peer address ipv4 10.41.192.0/18
control-plane management-plane inband interface all allow SSH peer address ipv4 10.64.0.0/18
control-plane management-plane inband interface all allow SSH peer address ipv4 25.66.128.0/17
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.3.145.43
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.0.0.0/8
control-plane management-plane inband interface all allow SNMP peer address ipv4 25.0.0.0/8
control-plane management-plane inband interface all allow SNMP peer address ipv4 100.0.0.0/8
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.3.144.0/20
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.18.78.0/24
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.20.0.0/18
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.41.192.0/18
control-plane management-plane inband interface all allow SNMP peer address ipv4 10.154.232.0/21
control-plane management-plane inband interface all allow SNMP peer address ipv4 25.65.16.0/20
netconf-yang agent ssh
netconf-yang agent 
ipv4 virtual address vrf MANAGEMENT 10.3.151.130/24
ipv4 virtual address use-as-src-addr
ipv6 virtual address vrf MANAGEMENT 2a01:111:e210:1:10:3:151:130/64
ipv6 virtual address use-as-src-addr
install repository new-repo url file:///misc/disk1/new_repo
ipv6 access-list ipv6_wan_in 5 permit ipv6 any net-group LOOPBACK-IPV6ONLY nexthop1 vrf RED
ipv6 access-list ipv6_wan_in 10 permit tcp any eq bgp any
ipv6 access-list ipv6_wan_in 20 permit ipv6 any any nexthop1 vrf tms-l3vrf
ipv6 access-list pfx_acl_ldp_ipv6_dummy 10 permit ipv6 host 2603:1060:0:12::f1c1 any
ipv6 access-list ipv6_internal_protections_rwa 10 permit tcp any eq bgp any
ipv6 access-list ipv6_internal_protections_rwa 20 permit ipv6 any any nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list test 10 permit ipv4 any any
ipv4 access-list test 20 permit tcp any any
ipv4 access-list BGPLS 10 permit tcp host 10.3.148.124 eq bgp host 100.100.47.2 capture
ipv4 access-list BGPLS 20 permit tcp host 10.3.148.124 host 100.100.47.2 eq bgp capture
ipv4 access-list BGPLS 30 permit ipv4 any any
ipv4 access-list TI_LFA 5 permit ipv4 host 20.188.229.192 host 10.2.146.41 capture
ipv4 access-list TI_LFA 10 permit ipv4 any any
ipv4 access-list wan_in 5 permit ipv4 any net-group LOOPBACK-IPONLY nexthop1 vrf RED
ipv4 access-list wan_in 10 permit tcp any eq bgp any
ipv4 access-list wan_in 20 permit udp net-group PERMIT-DNS any eq domain
ipv4 access-list wan_in 30 permit ipv4 any any nexthop1 vrf tms-l3vrf
ipv4 access-list test-bfd 10 deny ipv4 host 172.20.247.0 host 172.20.247.1 counter test-bfd
ipv4 access-list BLOCK_BFD 10 deny udp any any eq bfd
ipv4 access-list BLOCK_BFD 20 deny udp any any eq 4784
ipv4 access-list BLOCK_BFD 30 deny udp any any eq 6784
ipv4 access-list BLOCK_BFD 40 permit ipv4 any any
ipv4 access-list test-swan 10 deny udp any any eq 42000
ipv4 access-list test-swan 100 permit ipv4 any any
ipv4 access-list test_drop 10 permit ipv4 host 61.100.6.0 host 61.100.2.1
ipv4 access-list test_drop 15 permit tcp any any
ipv4 access-list test_drop 20 permit ipv4 any any
ipv4 access-list test_ipfix 10 permit ipv4 host 10.3.159.196 host 25.71.49.32
ipv4 access-list test_ipfix 11 permit ipv4 host 10.3.159.14 host 25.71.49.32
ipv4 access-list test_ipfix 12 permit ipv4 host 10.3.159.15 host 25.71.49.32
ipv4 access-list test_ipfix 20 permit ipv4 host 10.3.159.196 any
ipv4 access-list test_ipfix 30 permit ipv4 any host 25.71.49.32
ipv4 access-list test_ipfix 40 permit ipv4 any any
ipv4 access-list ntp-request 10 permit udp 13.64.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 20 permit udp 13.104.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 30 permit udp 20.0.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 40 permit udp 20.33.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 50 permit udp 20.34.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 60 permit udp 20.36.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 70 permit udp 20.40.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 80 permit udp 20.48.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 90 permit udp 20.64.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 100 permit udp 20.135.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 110 permit udp 20.136.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 120 permit udp 20.140.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 130 permit udp 20.143.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 140 permit udp 20.150.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 150 permit udp 20.152.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 160 permit udp 20.153.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 170 permit udp 20.157.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 180 permit udp 20.158.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 190 permit udp 20.160.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 200 permit udp 20.184.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 210 permit udp 20.192.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 220 permit udp 23.96.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 230 permit udp 23.100.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 240 permit udp 23.102.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 250 permit udp 23.103.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 260 permit udp 23.103.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 270 permit udp 40.64.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 280 permit udp 51.10.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 290 permit udp 51.12.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 300 permit udp 51.51.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 310 permit udp 51.53.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 320 permit udp 51.103.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 330 permit udp 51.104.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 340 permit udp 51.107.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 350 permit udp 51.116.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 360 permit udp 51.120.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 370 permit udp 51.124.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 380 permit udp 51.132.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 390 permit udp 51.136.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 400 permit udp 51.138.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 410 permit udp 51.140.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 420 permit udp 51.144.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 430 permit udp 52.96.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 440 permit udp 52.112.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 450 permit udp 52.120.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 460 permit udp 52.125.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 470 permit udp 52.126.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 480 permit udp 52.136.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 490 permit udp 52.146.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 500 permit udp 52.148.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 510 permit udp 52.152.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 520 permit udp 52.160.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 530 permit udp 52.224.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 540 permit udp 64.4.0.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 550 permit udp 64.41.193.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 560 permit udp 65.52.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 570 permit udp 66.119.144.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 580 permit udp 70.37.0.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 590 permit udp 70.37.128.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 600 permit udp 91.190.216.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 610 permit udp 94.245.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 620 permit udp 102.37.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 630 permit udp 102.133.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 640 permit udp 103.25.156.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 650 permit udp 103.36.96.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 660 permit udp 103.255.140.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 670 permit udp 104.40.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 680 permit udp 104.146.0.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 690 permit udp 104.146.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 700 permit udp 104.208.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 710 permit udp 111.221.16.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 720 permit udp 111.221.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 730 permit udp 128.94.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 740 permit udp 131.107.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 750 permit udp 131.253.1.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 760 permit udp 131.253.3.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 770 permit udp 131.253.5.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 780 permit udp 131.253.6.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 790 permit udp 131.253.8.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 800 permit udp 131.253.12.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 810 permit udp 131.253.16.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 820 permit udp 131.253.18.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 830 permit udp 131.253.21.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 840 permit udp 131.253.22.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 850 permit udp 131.253.24.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 860 permit udp 131.253.32.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 870 permit udp 131.253.61.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 880 permit udp 131.253.62.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 890 permit udp 131.253.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 900 permit udp 131.253.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 910 permit udp 132.245.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 920 permit udp 134.170.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 930 permit udp 135.149.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 940 permit udp 137.116.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 950 permit udp 137.135.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 960 permit udp 138.91.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 970 permit udp 138.239.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 980 permit udp 143.64.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 990 permit udp 147.145.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1000 permit udp 147.243.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1010 permit udp 148.7.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1020 permit udp 150.171.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1030 permit udp 155.62.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1040 permit udp 157.54.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1050 permit udp 157.56.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1060 permit udp 157.60.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1070 permit udp 158.158.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1080 permit udp 159.27.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1090 permit udp 163.228.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1100 permit udp 167.105.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1110 permit udp 167.220.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1120 permit udp 168.61.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1130 permit udp 168.62.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1140 permit udp 169.138.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1150 permit udp 170.165.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1160 permit udp 191.232.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1170 permit udp 192.48.225.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1180 permit udp 192.84.160.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1190 permit udp 192.92.196.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1200 permit udp 192.100.102.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1210 permit udp 192.100.103.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1220 permit udp 192.100.104.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1230 permit udp 192.100.112.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1240 permit udp 192.100.120.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1250 permit udp 192.100.128.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1260 permit udp 192.197.157.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1270 permit udp 193.149.64.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1280 permit udp 193.221.113.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1290 permit udp 194.41.16.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1300 permit udp 194.69.96.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1310 permit udp 195.134.224.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1320 permit udp 198.49.8.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1330 permit udp 198.105.232.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1340 permit udp 198.180.95.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1350 permit udp 198.180.97.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1360 permit udp 198.200.130.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1370 permit udp 198.206.164.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1380 permit udp 199.2.137.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1390 permit udp 199.30.16.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1400 permit udp 199.60.28.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1410 permit udp 199.74.210.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1420 permit udp 199.103.90.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1430 permit udp 199.103.122.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1440 permit udp 199.242.32.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1450 permit udp 199.242.48.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1460 permit udp 202.89.224.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1470 permit udp 204.13.120.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1480 permit udp 204.14.180.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1490 permit udp 204.79.135.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1500 permit udp 204.79.179.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1510 permit udp 204.79.180.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1520 permit udp 204.79.188.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1530 permit udp 204.79.195.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1540 permit udp 204.79.196.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1550 permit udp 204.79.197.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1560 permit udp 204.79.252.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1570 permit udp 204.95.96.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1580 permit udp 204.152.18.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1590 permit udp 204.152.140.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1600 permit udp 204.176.46.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1610 permit udp 204.182.144.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1620 permit udp 204.231.192.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1630 permit udp 204.231.194.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1640 permit udp 204.231.196.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1650 permit udp 204.231.200.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1660 permit udp 204.231.208.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1670 permit udp 204.231.236.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1680 permit udp 204.255.244.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1690 permit udp 205.174.224.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1700 permit udp 206.138.168.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1710 permit udp 206.191.224.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1720 permit udp 207.46.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1730 permit udp 207.68.128.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1740 permit udp 207.82.250.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1750 permit udp 208.68.136.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1760 permit udp 208.76.44.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1770 permit udp 208.84.0.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1780 permit udp 209.1.15.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1790 permit udp 209.185.128.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1800 permit udp 209.240.192.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1810 permit udp 213.199.128.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1820 permit udp 216.32.180.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1830 permit udp 216.32.240.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1840 permit udp 216.33.240.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1850 permit udp 216.34.51.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1860 permit udp 216.220.208.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1870 permit udp 10.0.0.0/8 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1880 permit udp 13.96.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1890 permit udp 20.35.252.0/22 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1900 permit udp 20.128.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1910 permit udp 20.130.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1920 permit udp 20.144.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1930 permit udp 20.176.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1940 permit udp 20.180.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1950 permit udp 21.0.0.0/8 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1960 permit udp 22.0.0.0/8 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1970 permit udp 23.103.0.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1980 permit udp 25.0.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 1990 permit udp 25.16.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2000 permit udp 25.24.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2010 permit udp 25.28.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2020 permit udp 25.32.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2030 permit udp 25.64.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2040 permit udp 25.128.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2050 permit udp 25.142.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2060 permit udp 25.144.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2070 permit udp 25.160.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2080 permit udp 25.192.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2090 permit udp 25.224.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2100 permit udp 25.244.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2110 permit udp 25.248.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2120 permit udp 40.66.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2130 permit udp 40.108.32.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2140 permit udp 40.108.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2150 permit udp 40.109.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2160 permit udp 52.132.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2170 permit udp 52.145.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2180 permit udp 100.64.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2190 permit udp 104.146.32.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2200 permit udp 104.146.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2210 permit udp 104.147.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2220 permit udp 129.75.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2230 permit udp 134.177.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2240 permit udp 138.196.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2250 permit udp 141.251.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2260 permit udp 146.147.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2270 permit udp 172.16.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2280 permit udp 191.232.4.0/26 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2290 permit udp 191.232.6.0/23 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2300 permit udp 191.235.9.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2310 permit udp 191.235.10.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2320 permit udp 191.235.13.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2330 permit udp 191.235.14.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2340 permit udp 192.32.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2350 permit udp 192.100.102.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2360 permit udp 192.100.103.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2370 permit udp 192.168.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2380 permit udp 13.96.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2390 permit udp 21.0.0.0/8 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2400 permit udp 22.0.0.0/8 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2410 permit udp 23.103.0.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2420 permit udp 25.0.0.0/9 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2430 permit udp 25.128.0.0/10 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2440 permit udp 25.192.0.0/11 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2450 permit udp 25.224.0.0/12 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2460 permit udp 25.240.8.0/21 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2470 permit udp 25.240.16.0/20 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2480 permit udp 25.240.32.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2490 permit udp 25.240.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2500 permit udp 25.240.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2510 permit udp 25.241.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2520 permit udp 25.242.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2530 permit udp 25.244.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2540 permit udp 25.248.0.0/13 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2550 permit udp 40.66.128.0/17 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2560 permit udp 40.108.32.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2570 permit udp 40.108.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2580 permit udp 40.109.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2590 permit udp 52.132.0.0/14 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2600 permit udp 104.146.32.0/19 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2610 permit udp 104.146.64.0/18 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2620 permit udp 104.147.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2630 permit udp 129.75.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2640 permit udp 134.177.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2650 permit udp 141.251.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2660 permit udp 191.234.129.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2670 permit udp 191.234.133.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2680 permit udp 191.235.1.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2690 permit udp 191.235.2.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2700 permit udp 191.235.5.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2710 permit udp 191.235.6.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2720 permit udp 191.235.9.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2730 permit udp 191.235.10.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2740 permit udp 191.235.13.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2750 permit udp 191.235.14.0/24 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2760 permit udp 192.32.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2770 permit udp 198.18.0.0/15 host 10.20.8.129 eq ntp
ipv4 access-list ntp-request 2780 permit udp 13.64.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2790 permit udp 13.104.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2800 permit udp 20.0.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2810 permit udp 20.33.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2820 permit udp 20.34.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2830 permit udp 20.36.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2840 permit udp 20.40.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2850 permit udp 20.48.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2860 permit udp 20.64.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2870 permit udp 20.135.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2880 permit udp 20.136.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2890 permit udp 20.140.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2900 permit udp 20.143.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2910 permit udp 20.150.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2920 permit udp 20.152.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2930 permit udp 20.153.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2940 permit udp 20.157.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2950 permit udp 20.158.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2960 permit udp 20.160.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2970 permit udp 20.184.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2980 permit udp 20.192.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 2990 permit udp 23.96.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3000 permit udp 23.100.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3010 permit udp 23.102.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3020 permit udp 23.103.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3030 permit udp 23.103.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3040 permit udp 40.64.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3050 permit udp 51.10.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3060 permit udp 51.12.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3070 permit udp 51.51.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3080 permit udp 51.53.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3090 permit udp 51.103.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3100 permit udp 51.104.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3110 permit udp 51.107.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3120 permit udp 51.116.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3130 permit udp 51.120.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3140 permit udp 51.124.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3150 permit udp 51.132.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3160 permit udp 51.136.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3170 permit udp 51.138.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3180 permit udp 51.140.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3190 permit udp 51.144.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3200 permit udp 52.96.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3210 permit udp 52.112.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3220 permit udp 52.120.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3230 permit udp 52.125.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3240 permit udp 52.126.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3250 permit udp 52.136.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3260 permit udp 52.146.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3270 permit udp 52.148.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3280 permit udp 52.152.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3290 permit udp 52.160.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3300 permit udp 52.224.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3310 permit udp 64.4.0.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3320 permit udp 64.41.193.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3330 permit udp 65.52.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3340 permit udp 66.119.144.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3350 permit udp 70.37.0.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3360 permit udp 70.37.128.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3370 permit udp 91.190.216.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3380 permit udp 94.245.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3390 permit udp 102.37.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3400 permit udp 102.133.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3410 permit udp 103.25.156.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3420 permit udp 103.36.96.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3430 permit udp 103.255.140.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3440 permit udp 104.40.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3450 permit udp 104.146.0.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3460 permit udp 104.146.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3470 permit udp 104.208.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3480 permit udp 111.221.16.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3490 permit udp 111.221.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3500 permit udp 128.94.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3510 permit udp 131.107.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3520 permit udp 131.253.1.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3530 permit udp 131.253.3.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3540 permit udp 131.253.5.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3550 permit udp 131.253.6.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3560 permit udp 131.253.8.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3570 permit udp 131.253.12.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3580 permit udp 131.253.16.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3590 permit udp 131.253.18.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3600 permit udp 131.253.21.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3610 permit udp 131.253.22.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3620 permit udp 131.253.24.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3630 permit udp 131.253.32.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3640 permit udp 131.253.61.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3650 permit udp 131.253.62.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3660 permit udp 131.253.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3670 permit udp 131.253.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3680 permit udp 132.245.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3690 permit udp 134.170.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3700 permit udp 135.149.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3710 permit udp 137.116.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3720 permit udp 137.135.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3730 permit udp 138.91.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3740 permit udp 138.239.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3750 permit udp 143.64.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3760 permit udp 147.145.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3770 permit udp 147.243.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3780 permit udp 148.7.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3790 permit udp 150.171.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3800 permit udp 155.62.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3810 permit udp 157.54.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3820 permit udp 157.56.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3830 permit udp 157.60.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3840 permit udp 158.158.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3850 permit udp 159.27.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3860 permit udp 163.228.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3870 permit udp 167.105.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3880 permit udp 167.220.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3890 permit udp 168.61.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3900 permit udp 168.62.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3910 permit udp 169.138.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3920 permit udp 170.165.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3930 permit udp 191.232.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3940 permit udp 192.48.225.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3950 permit udp 192.84.160.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3960 permit udp 192.92.196.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3970 permit udp 192.100.102.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3980 permit udp 192.100.103.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 3990 permit udp 192.100.104.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4000 permit udp 192.100.112.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4010 permit udp 192.100.120.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4020 permit udp 192.100.128.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4030 permit udp 192.197.157.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4040 permit udp 193.149.64.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4050 permit udp 193.221.113.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4060 permit udp 194.41.16.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4070 permit udp 194.69.96.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4080 permit udp 195.134.224.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4090 permit udp 198.49.8.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4100 permit udp 198.105.232.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4110 permit udp 198.180.95.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4120 permit udp 198.180.97.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4130 permit udp 198.200.130.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4140 permit udp 198.206.164.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4150 permit udp 199.2.137.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4160 permit udp 199.30.16.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4170 permit udp 199.60.28.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4180 permit udp 199.74.210.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4190 permit udp 199.103.90.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4200 permit udp 199.103.122.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4210 permit udp 199.242.32.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4220 permit udp 199.242.48.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4230 permit udp 202.89.224.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4240 permit udp 204.13.120.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4250 permit udp 204.14.180.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4260 permit udp 204.79.135.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4270 permit udp 204.79.179.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4280 permit udp 204.79.180.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4290 permit udp 204.79.188.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4300 permit udp 204.79.195.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4310 permit udp 204.79.196.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4320 permit udp 204.79.197.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4330 permit udp 204.79.252.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4340 permit udp 204.95.96.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4350 permit udp 204.152.18.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4360 permit udp 204.152.140.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4370 permit udp 204.176.46.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4380 permit udp 204.182.144.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4390 permit udp 204.231.192.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4400 permit udp 204.231.194.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4410 permit udp 204.231.196.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4420 permit udp 204.231.200.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4430 permit udp 204.231.208.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4440 permit udp 204.231.236.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4450 permit udp 204.255.244.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4460 permit udp 205.174.224.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4470 permit udp 206.138.168.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4480 permit udp 206.191.224.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4490 permit udp 207.46.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4500 permit udp 207.68.128.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4510 permit udp 207.82.250.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4520 permit udp 208.68.136.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4530 permit udp 208.76.44.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4540 permit udp 208.84.0.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4550 permit udp 209.1.15.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4560 permit udp 209.185.128.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4570 permit udp 209.240.192.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4580 permit udp 213.199.128.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4590 permit udp 216.32.180.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4600 permit udp 216.32.240.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4610 permit udp 216.33.240.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4620 permit udp 216.34.51.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4630 permit udp 216.220.208.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4640 permit udp 10.0.0.0/8 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4650 permit udp 13.96.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4660 permit udp 20.35.252.0/22 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4670 permit udp 20.128.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4680 permit udp 20.130.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4690 permit udp 20.144.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4700 permit udp 20.176.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4710 permit udp 20.180.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4720 permit udp 21.0.0.0/8 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4730 permit udp 22.0.0.0/8 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4740 permit udp 23.103.0.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4750 permit udp 25.0.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4760 permit udp 25.16.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4770 permit udp 25.24.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4780 permit udp 25.28.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4790 permit udp 25.32.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4800 permit udp 25.64.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4810 permit udp 25.128.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4820 permit udp 25.142.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4830 permit udp 25.144.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4840 permit udp 25.160.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4850 permit udp 25.192.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4860 permit udp 25.224.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4870 permit udp 25.244.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4880 permit udp 25.248.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4890 permit udp 40.66.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4900 permit udp 40.108.32.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4910 permit udp 40.108.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4920 permit udp 40.109.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4930 permit udp 52.132.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4940 permit udp 52.145.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4950 permit udp 100.64.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4960 permit udp 104.146.32.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4970 permit udp 104.146.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4980 permit udp 104.147.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 4990 permit udp 129.75.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5000 permit udp 134.177.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5010 permit udp 138.196.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5020 permit udp 141.251.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5030 permit udp 146.147.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5040 permit udp 172.16.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5050 permit udp 191.232.4.0/26 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5060 permit udp 191.232.6.0/23 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5070 permit udp 191.235.9.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5080 permit udp 191.235.10.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5090 permit udp 191.235.13.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5100 permit udp 191.235.14.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5110 permit udp 192.32.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5120 permit udp 192.100.102.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5130 permit udp 192.100.103.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5140 permit udp 192.168.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5150 permit udp 13.96.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5160 permit udp 21.0.0.0/8 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5170 permit udp 22.0.0.0/8 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5180 permit udp 23.103.0.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5190 permit udp 25.0.0.0/9 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5200 permit udp 25.128.0.0/10 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5210 permit udp 25.192.0.0/11 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5220 permit udp 25.224.0.0/12 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5230 permit udp 25.240.8.0/21 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5240 permit udp 25.240.16.0/20 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5250 permit udp 25.240.32.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5260 permit udp 25.240.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5270 permit udp 25.240.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5280 permit udp 25.241.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5290 permit udp 25.242.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5300 permit udp 25.244.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5310 permit udp 25.248.0.0/13 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5320 permit udp 40.66.128.0/17 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5330 permit udp 40.108.32.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5340 permit udp 40.108.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5350 permit udp 40.109.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5360 permit udp 52.132.0.0/14 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5370 permit udp 104.146.32.0/19 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5380 permit udp 104.146.64.0/18 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5390 permit udp 104.147.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5400 permit udp 129.75.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5410 permit udp 134.177.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5420 permit udp 141.251.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5430 permit udp 191.234.129.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5440 permit udp 191.234.133.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5450 permit udp 191.235.1.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5460 permit udp 191.235.2.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5470 permit udp 191.235.5.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5480 permit udp 191.235.6.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5490 permit udp 191.235.9.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5500 permit udp 191.235.10.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5510 permit udp 191.235.13.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5520 permit udp 191.235.14.0/24 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5530 permit udp 192.32.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5540 permit udp 198.18.0.0/15 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5550 permit udp 30.130.0.0/16 host 10.20.8.130 eq ntp
ipv4 access-list ntp-request 5560 permit udp 30.130.0.0/16 host 10.20.8.129 eq ntp
ipv4 access-list pfx_acl_ldp 10 permit ipv4 10.20.76.0/22 any
ipv4 access-list pfx_acl_ldp 20 permit ipv4 10.20.84.0/22 any
ipv4 access-list pfx_acl_ldp 30 permit ipv4 100.30.151.0/24 any
ipv4 access-list pfx_acl_ldp 40 permit ipv4 10.30.159.0/24 any
ipv4 access-list pfx_acl_ldp 50 permit ipv4 host 104.1.0.0 any
ipv4 access-list pfx_acl_ldp 60 permit ipv4 host 104.2.0.0 any
ipv4 access-list pfx_acl_ldp 70 permit ipv4 host 104.3.0.0 any
ipv4 access-list pfx_acl_ldp 80 permit ipv4 host 104.4.0.0 any
ipv4 access-list pfx_acl_ldp 90 permit ipv4 host 104.5.0.0 any
ipv4 access-list pfx_acl_ldp 100 permit ipv4 host 104.6.0.0 any
ipv4 access-list GNS-VTY-ACCESS 10 remark PERMIT -- GNS VTY ACCESS
ipv4 access-list GNS-VTY-ACCESS 15 permit ipv4 10.0.0.0 0.255.255.255 any
ipv4 access-list GNS-VTY-ACCESS 20 permit ipv4 10.20.0.0/18 any
ipv4 access-list GNS-VTY-ACCESS 30 permit ipv4 10.3.144.0/20 any
ipv4 access-list GNS-VTY-ACCESS 40 permit ipv4 25.0.0.0/8 any
ipv4 access-list GNS-VTY-ACCESS 50 permit tcp any any eq 10000
ipv4 access-list GNS-VTY-ACCESS 51 permit tcp any any eq 10001
ipv4 access-list GNS-VTY-ACCESS 60 permit ipv4 100.0.0.0/8 any
ipv4 access-list GNS-VTY-ACCESS 1000 deny ipv4 any any
ipv4 access-list GNS-VTY-ACCESS 1010 permit ipv4 host 10.3.145.43 any
ipv4 access-list MSG-SNMP-POLLER 10 remark PERMIT -- MSG SNMP POLLERS
ipv4 access-list MSG-SNMP-POLLER 40 permit ipv4 10.0.0.0 0.255.255.255 any
ipv4 access-list block_ntp_azure 10 permit udp host 10.20.8.129 eq ntp any
ipv4 access-list block_ntp_azure 20 permit udp host 10.20.8.130 eq ntp any
ipv4 access-list block_ntp_azure 30 permit udp 10.20.37.176/28 eq ntp any
ipv4 access-list block_ntp_azure 40 permit udp any eq ntp any eq ntp
ipv4 access-list block_ntp_azure 50 deny udp any eq ntp any range 0 1023
ipv4 access-list block_ntp_azure 60 permit ipv4 any any
ipv4 access-list lab-agg-switch-acl 10 permit ipv4 net-group bgp-ls-machines any
ipv4 access-list lab-agg-switch-acl 1000 deny ipv4 any any counter lab-agg-switch-acl-drop
ipv4 access-list converged_scavenger_rwa 10 remark permit_bgp
ipv4 access-list converged_scavenger_rwa 20 permit tcp any eq bgp any
ipv4 access-list converged_scavenger_rwa 30 permit tcp any any eq bgp
ipv4 access-list converged_scavenger_rwa 40 remark classifier-control-cs6
ipv4 access-list converged_scavenger_rwa 50 permit tcp any any eq 10001 dscp cs6 set qos-group 7
ipv4 access-list converged_scavenger_rwa 60 permit tcp any any eq https dscp cs6 set qos-group 7
ipv4 access-list converged_scavenger_rwa 70 permit udp any any eq 10001 dscp cs6 set qos-group 7
ipv4 access-list converged_scavenger_rwa 80 permit udp any any eq 443 dscp cs6 set qos-group 7
ipv4 access-list converged_scavenger_rwa 90 remark traceme
ipv4 access-list converged_scavenger_rwa 100 permit ipv4 net-group GLOBAL-EGRESS-IP-SPACE any dscp 33 set qos-group 8 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 110 remark TRUSTED-DST-VXLAN
ipv4 access-list converged_scavenger_rwa 120 permit udp any any eq 65330 set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 130 remark TRUSTED-SRC-VXLAN
ipv4 access-list converged_scavenger_rwa 140 permit udp any eq 65330 any set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 150 remark classifier-scavenger-cs1
ipv4 access-list converged_scavenger_rwa 160 permit ipv4 any any dscp cs1 set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 170 remark classifier-scavenger-af11
ipv4 access-list converged_scavenger_rwa 180 permit ipv4 any any dscp af11 set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 185 remark ITE-SRC-DST-SCAVENGER
ipv4 access-list converged_scavenger_rwa 186 permit ipv4 net-group ITE-SRC-DST-SCAVENGER-SRC net-group ITE-SRC-DST-SCAVENGER-DST set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 190 remark SCAVENGER-SRC-DDOS
ipv4 access-list converged_scavenger_rwa 200 permit ipv4 net-group SCAVENGER-SRC-DDOS any set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 210 remark SCAVENGER-DST-DDOS
ipv4 access-list converged_scavenger_rwa 220 permit ipv4 any net-group SCAVENGER-DST-DDOS set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 230 remark classifier-brokered-be
ipv4 access-list converged_scavenger_rwa 240 permit ipv4 any any dscp 1 set qos-group 3 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 250 remark classifier-interactive-af21
ipv4 access-list converged_scavenger_rwa 260 permit tcp net-group TEAMS-PREFIX-V4 port-group TEAMS-PREFIX-V4-PORTS-af21 any dscp af21 set qos-group 5 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 270 permit udp net-group TEAMS-PREFIX-V4 port-group TEAMS-PREFIX-V4-PORTS-af21 any dscp af21 set qos-group 5 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 280 remark classifier-interactive-af41
ipv4 access-list converged_scavenger_rwa 290 permit tcp net-group TEAMS-PREFIX-V4 port-group TEAMS-PREFIX-V4-PORTS-af41 any dscp af41 set qos-group 5 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 300 permit udp net-group TEAMS-PREFIX-V4 port-group TEAMS-PREFIX-V4-PORTS-af41 any dscp af41 set qos-group 5 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 310 remark classifier-voice-ef
ipv4 access-list converged_scavenger_rwa 320 permit udp net-group TEAMS-PREFIX-V4 port-group TEAMS-PREFIX-V4-PORTS-ef any dscp ef set qos-group 6 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 330 remark ssh
ipv4 access-list converged_scavenger_rwa 340 permit tcp net-group WAN-Management any eq ssh set qos-group 7 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 350 remark ONEDDOS-CNS-HYPERNET-Public
ipv4 access-list converged_scavenger_rwa 360 permit tcp net-group IPv4ONEDDOS-CNS port-group TCP-L4-list net-group IPv4ONEDDOS-HYPERNET-Public set qos-group 7
ipv4 access-list converged_scavenger_rwa 370 remark ONEDDOS-HYPERNET-Public-CNS
ipv4 access-list converged_scavenger_rwa 380 permit tcp net-group IPv4ONEDDOS-HYPERNET-Public port-group TCP-L4-list net-group IPv4ONEDDOS-CNS set qos-group 7
ipv4 access-list converged_scavenger_rwa 390 remark ONEDDOS-HYPERNET-A10-MGMT
ipv4 access-list converged_scavenger_rwa 400 permit tcp net-group IPv4ONEDDOS-HYPERNET net-group IPv4ONEDDOS-A10-MGMT eq https set qos-group 7
ipv4 access-list converged_scavenger_rwa 410 remark ONEDDOS-A10-Data-In
ipv4 access-list converged_scavenger_rwa 420 permit udp net-group IPv4ONEDDOS-A10-MGMT net-group IPv4ONEDDOS-SFLOW-SFABRIC eq 6343 set qos-group 5
ipv4 access-list converged_scavenger_rwa 430 remark snmpx
ipv4 access-list converged_scavenger_rwa 440 permit udp net-group prefix-snmpx eq snmp any set qos-group 5 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 450 remark ITEpremium
ipv4 access-list converged_scavenger_rwa 460 permit ipv4 net-group ITEpremium any set qos-group 1 nexthop1 vrf ITEpremium
ipv4 access-list converged_scavenger_rwa 470 remark PERMIT-SRC-PORTS-UDP-SCAV
ipv4 access-list converged_scavenger_rwa 480 permit udp any port-group udp-port-scav any set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 490 remark PERMIT-SRC-GLOBAL-UDP-BE
ipv4 access-list converged_scavenger_rwa 500 permit udp any port-group udp-port-be any set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 510 remark PERMIT-DST-PORTS-UDP-SCAV
ipv4 access-list converged_scavenger_rwa 520 permit udp any any port-group udp-port-scav set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 530 remark PERMIT-DST-GLOBAL-UDP-BE
ipv4 access-list converged_scavenger_rwa 540 permit udp any any port-group udp-port-be set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 550 remark PERMIT-MICROSOFT-PUBLIC-UDP-BE
ipv4 access-list converged_scavenger_rwa 560 permit udp any net-group GLOBAL-EGRESS-IP-SPACE set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 570 remark PERMIT-MICROSOFT-PRIVATE-UDP-BE
ipv4 access-list converged_scavenger_rwa 580 permit udp any net-group PRIVATE-V4 set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 590 remark PERMIT-TCP-BE
ipv4 access-list converged_scavenger_rwa 600 permit tcp any any set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 610 remark PERMIT-UDP-SCAV
ipv4 access-list converged_scavenger_rwa 620 permit udp any any set qos-group 2 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list converged_scavenger_rwa 99989 remark default-classifier-best-effort
ipv4 access-list converged_scavenger_rwa 99999 permit ipv4 any any set qos-group 1 nexthop1 vrf tms-bypass-l3vrf
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 30 permit tcp any host 10.5.199.11 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 40 permit tcp any host 10.5.199.13 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 50 permit tcp any 10.5.199.14/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 60 permit tcp any host 10.5.209.75 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 70 permit tcp any 10.5.209.76/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 80 permit tcp any host 10.5.209.79 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 90 permit tcp any host 10.5.209.82 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 100 permit tcp any 10.5.232.66/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 110 permit tcp any 10.17.177.250/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 120 permit tcp any host 10.104.16.39 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 130 permit tcp any host 10.104.16.167 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 140 permit tcp any host 10.104.20.17 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 150 permit tcp any host 10.104.20.145 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 160 permit tcp any host 10.232.203.143 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 170 permit tcp any host 10.232.203.144 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 180 permit tcp any host 25.68.226.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 190 permit tcp any host 25.68.226.140 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 200 permit tcp any host 25.68.230.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 210 permit tcp any host 25.68.230.140 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 220 permit tcp any 25.72.217.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 230 permit tcp any 25.72.220.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 240 permit tcp any 25.73.19.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 250 permit tcp any 25.73.21.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 260 permit tcp any 25.73.90.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 270 permit tcp any 25.73.92.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 280 permit tcp any host 25.73.240.142 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 290 permit tcp any host 25.73.241.206 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 300 permit tcp any host 25.73.242.206 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 310 permit tcp any host 25.73.244.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 320 permit tcp any host 25.74.9.27 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 330 permit tcp any host 25.74.9.28 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 340 permit tcp any 25.74.11.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 350 permit tcp any 25.74.74.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 360 permit tcp any 25.74.76.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 370 permit tcp any host 25.75.72.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 380 permit tcp any host 25.75.72.206 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 390 permit tcp any host 25.75.73.142 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 400 permit tcp any host 25.75.74.78 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 410 permit tcp any 25.76.138.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 420 permit tcp any host 25.76.140.25 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 430 permit tcp any host 25.76.140.26 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 440 permit tcp any host 25.81.65.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 450 permit tcp any host 25.81.67.142 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 460 permit tcp any host 25.81.69.142 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 470 permit tcp any host 25.81.72.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 480 permit tcp any host 25.85.152.22 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 490 permit tcp any host 25.85.152.26 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 500 permit tcp any host 25.85.209.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 510 permit tcp any host 25.85.209.136 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 520 permit tcp any host 25.85.212.7 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 530 permit tcp any host 25.85.212.8 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 540 permit tcp any host 25.85.234.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 550 permit tcp any host 25.85.234.140 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 560 permit tcp any host 25.85.238.133 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 570 permit tcp any host 25.85.238.138 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 580 permit tcp any host 25.86.32.12 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 590 permit tcp any host 25.86.32.18 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 600 permit tcp any host 25.86.34.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 610 permit tcp any host 25.86.34.16 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 620 permit tcp any host 25.87.100.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 630 permit tcp any host 25.87.100.138 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 640 permit tcp any host 25.87.160.7 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 650 permit tcp any host 25.87.160.11 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 660 permit tcp any host 25.87.192.25 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 670 permit tcp any host 25.87.192.27 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 680 permit tcp any host 25.87.224.25 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 690 permit tcp any host 25.87.224.27 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 700 permit tcp any host 25.89.114.137 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 710 permit tcp any host 25.89.114.140 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 720 permit tcp any host 25.90.40.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 730 permit tcp any host 25.90.40.9 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 740 permit tcp any host 25.92.209.137 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 750 permit tcp any host 25.92.209.140 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 760 permit tcp any host 25.92.212.137 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 770 permit tcp any host 25.92.212.142 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 780 permit tcp any host 25.92.224.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 790 permit tcp any host 25.92.224.18 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 800 permit tcp any host 25.93.200.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 810 permit tcp any host 25.93.200.9 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 820 permit tcp any host 25.93.235.139 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 830 permit tcp any host 25.93.235.203 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 840 permit tcp any host 25.93.236.11 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 850 permit tcp any host 25.93.236.75 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 860 permit tcp any host 25.93.236.139 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 870 permit tcp any host 25.93.236.203 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 880 permit tcp any host 25.99.208.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 890 permit tcp any host 25.99.208.18 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 900 permit tcp any 25.122.211.16/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 910 permit tcp any 25.122.215.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 920 permit tcp any 25.125.42.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 930 permit tcp any 25.125.46.144/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 940 permit tcp any host 25.125.72.18 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 950 permit tcp any host 25.148.129.94 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 960 permit tcp any host 25.148.129.222 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 970 permit tcp any host 25.150.6.135 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 980 permit tcp any host 25.150.6.199 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 990 permit tcp any host 25.150.14.9 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1000 permit tcp any host 25.150.14.73 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1010 permit tcp any host 25.150.16.7 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1020 permit tcp any host 25.150.16.71 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1030 permit tcp any 25.150.64.28/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1040 permit tcp any 25.150.64.92/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1050 permit tcp any host 25.150.64.156 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1060 permit tcp any host 25.150.64.220 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1070 permit tcp any host 25.150.136.11 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1080 permit tcp any host 25.150.136.75 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1090 permit tcp any host 25.150.176.17 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1100 permit tcp any host 25.150.176.81 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1110 permit tcp any host 25.150.200.17 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1120 permit tcp any host 25.150.200.81 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1130 permit tcp any host 25.150.232.9 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1140 permit tcp any host 25.150.232.73 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1150 permit tcp any host 25.150.240.9 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1160 permit tcp any host 25.150.240.73 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1170 permit tcp any host 25.159.0.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1180 permit tcp any host 25.159.0.69 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1190 permit tcp any host 25.159.56.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1200 permit tcp any host 25.159.56.69 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1210 permit tcp any host 25.159.80.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1220 permit tcp any host 25.159.80.69 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1230 permit tcp any host 25.159.81.133 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1240 permit tcp any host 25.159.81.197 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1250 permit tcp any host 25.184.112.91 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1260 permit tcp any host 25.184.113.93 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1270 permit tcp any host 25.184.113.219 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1280 permit tcp any host 25.184.114.221 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1290 permit tcp any host 25.184.192.78 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1300 permit tcp any host 25.184.193.78 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1310 permit tcp any host 25.184.194.78 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1320 permit tcp any host 25.184.195.78 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1330 permit tcp any host 25.184.240.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1340 permit tcp any host 25.184.240.206 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1350 permit tcp any host 25.184.242.14 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1360 permit tcp any host 25.184.242.206 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1370 permit tcp any host 25.186.16.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1380 permit tcp any host 25.186.16.69 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1390 permit tcp any host 25.186.24.5 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1400 permit tcp any host 25.186.24.69 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1410 permit tcp any 25.186.57.150/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1420 permit tcp any 25.186.57.152/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1430 permit tcp any 25.186.62.144/30 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1440 permit tcp any 25.186.66.16/30 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1450 permit tcp any host 25.186.68.149 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1460 permit tcp any 25.186.68.150/31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1470 permit tcp any host 25.186.68.152 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1480 permit tcp any host 25.254.64.17 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1490 permit tcp any host 25.254.64.145 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1500 permit tcp any host 25.254.66.20 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1510 permit tcp any host 25.254.66.148 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1520 permit tcp any host 25.254.68.31 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1530 permit tcp any host 25.254.68.37 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1540 permit tcp any host 25.254.68.157 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1550 permit tcp any host 25.254.68.160 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1560 permit tcp any host 25.254.76.141 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1570 permit tcp any host 25.254.77.13 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1580 permit tcp any host 25.254.133.7 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-dst 1590 permit tcp any host 25.254.133.71 eq https
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 40 permit udp any host 13.71.122.103 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 50 permit udp any host 13.74.153.36 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 60 permit udp any host 13.82.147.240 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 70 permit udp any host 13.84.189.46 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 80 permit udp any host 23.96.55.92 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 90 permit udp any host 23.98.146.36 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 100 permit udp any host 40.86.188.39 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 110 permit udp any host 40.117.239.185 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 120 permit udp any host 40.123.41.162 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 130 permit udp any host 40.126.242.195 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 140 permit udp any host 51.140.125.246 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 150 permit udp any host 51.141.54.244 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 160 permit udp any host 52.161.20.215 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 170 permit udp any host 52.162.167.138 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 180 permit udp any host 52.163.240.40 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 190 permit udp any host 52.166.115.41 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 200 permit udp any host 52.173.240.151 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 210 permit udp any host 52.180.179.193 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 220 permit udp any host 52.229.166.182 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 230 permit udp any host 52.231.37.38 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 240 permit udp any host 52.231.206.203 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 250 permit udp any host 52.233.44.98 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 260 permit udp any host 52.235.42.73 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 270 permit udp any host 52.246.189.70 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 280 permit udp any host 52.250.120.103 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 290 permit udp any host 104.41.29.28 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 300 permit udp any host 104.211.190.172 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 310 permit udp any host 104.215.63.59 eq 6343
ipv4 access-list IPv4ONEDDOS-A10-MGMT-src 320 permit udp any host 137.135.46.202 eq 6343
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 20 permit udp any eq 17 any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 30 permit udp any eq 19 any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 40 permit udp any eq sunrpc any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 50 permit udp any eq ntp any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 60 permit udp any eq netbios-ns any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 70 permit udp any eq 389 any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 80 permit udp any eq 1900 any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 90 permit udp any eq 5353 any
ipv4 access-list UNTRUSTED-DDOS-REFLECTION 100 permit udp any eq 11211 any
class-map match-any voice-in match dscp ef 
class-map match-any voice-in match mpls experimental topmost 5 
class-map match-any voice-out match traffic-class 6 
class-map match-any control-in match dscp cs6 cs7 
class-map match-any control-in match mpls experimental topmost 6 
class-map match-any federal-in match dscp 25 
class-map match-any federal-in match mpls experimental topmost 3 
class-map match-any control-out match traffic-class 7 
class-map match-any federal-out match traffic-class 4 
class-map match-any scavenger-in match dscp af11 cs1 
class-map match-any scavenger-in match mpls experimental topmost 1 
class-map match-any CORE-VOICE-IN match dscp ef 
class-map match-any CORE-VOICE-IN match mpls experimental topmost 5 
class-map match-any EDGE-VOICE-IN match dscp ef 
class-map match-any EDGE-VOICE-IN match mpls experimental topmost 5 
class-map match-any scavenger-out match traffic-class 2 
class-map match-any CORE-VOICE-OUT match traffic-class 7 
class-map match-any EDGE-VOICE-OUT match traffic-class 7 
class-map match-any brokered-be-in match dscp 1 
class-map match-any brokered-be-in match mpls experimental topmost 2 
class-map match-any interactive-in match dscp af41 af21 
class-map match-any interactive-in match mpls experimental topmost 4 
class-map match-any CORE-CONTROL-IN match dscp cs6 cs7 
class-map match-any CORE-CONTROL-IN match mpls experimental topmost 6 7 
class-map match-any CORE-FEDERAL-IN match dscp 25 
class-map match-any CORE-FEDERAL-IN match mpls experimental topmost 3 
class-map match-any EDGE-CONTROL-IN match dscp cs6 cs7 
class-map match-any EDGE-CONTROL-IN match mpls experimental topmost 6 
class-map match-any FABRIC-VOICE-IN match dscp ef 
class-map match-any brokered-be-out match traffic-class 3 
class-map match-any fabric-voice-in match qos-group 6 
class-map match-any interactive-out match traffic-class 5 
class-map match-any CORE-CONTROL-OUT match traffic-class 6 
class-map match-any CORE-FEDERAL-OUT match traffic-class 4 
class-map match-any EDGE-CONTROL-OUT match traffic-class 6 
class-map match-any FABRIC-VOICE-OUT match traffic-class 7 
class-map match-any CORE-SCAVENGER-IN match dscp af11 cs1 
class-map match-any CORE-SCAVENGER-IN match mpls experimental topmost 1 
class-map match-any EDGE-SCAVENGER-IN match dscp af11 cs1 
class-map match-any EDGE-SCAVENGER-IN match mpls experimental topmost 1 
class-map match-any FABRIC-CONTROL-IN match dscp cs6 cs7 
class-map match-any FABRIC-CONTROL-IN match access-group ipv4 IPv4ONEDDOS-CNS-src 
class-map match-any FABRIC-CONTROL-IN match access-group ipv4 IPv4ONEDDOS-CNS-dst 
class-map match-any FABRIC-CONTROL-IN match access-group ipv4 IPv4ONEDDOS-A10-MGMT-dst 
class-map match-any FABRIC-CONTROL-IN match access-group ipv4 WAN-Management 
class-map match-any fabric-control-in match qos-group 7 
class-map match-any fabric-default-in match qos-group 1 
class-map match-any CORE-SCAVENGER-OUT match traffic-class 2 
class-map match-any EDGE-SCAVENGER-OUT match traffic-class 4 
class-map match-any FABRIC-CONTROL-OUT match traffic-class 6 
class-map match-any CORE-BROKERED-BE-IN match mpls experimental topmost 2 
class-map match-any CORE-BROKERED-BE-IN match dscp 1 
class-map match-any CORE-INTERACTIVE-IN match dscp af41 af21 
class-map match-any CORE-INTERACTIVE-IN match mpls experimental topmost 4 
class-map match-any EDGE-INTERACTIVE-IN match dscp af41 af21 
class-map match-any EDGE-INTERACTIVE-IN match mpls experimental topmost 4 
class-map match-any FABRIC-SCAVENGER-IN match dscp af11 cs1 
class-map match-any FABRIC-SCAVENGER-IN match access-group ipv4 prefix-windows-update 
class-map match-any FABRIC-SCAVENGER-IN match access-group ipv4 UNTRUSTED-DDOS-REFLECTION 
class-map match-any fabric-scavenger-in match qos-group 2 
class-map match-any CORE-BROKERED-BE-OUT match traffic-class 3 
class-map match-any CORE-INTERACTIVE-OUT match traffic-class 5 
class-map match-any EDGE-INTERACTIVE-OUT match traffic-class 5 
class-map match-any FABRIC-SCAVENGER-OUT match traffic-class 3 
class-map match-any FABRIC-BEST-EFFORT-IN match access-group ipv4 ITEpremium 
class-map match-any FABRIC-BROKERED-BE-IN match dscp 1 
class-map match-any FABRIC-INTERACTIVE-IN match dscp af41 af21 
class-map match-any FABRIC-INTERACTIVE-IN match access-group ipv4 IPv4ONEDDOS-A10-MGMT-src 
class-map match-any FABRIC-INTERACTIVE-IN match access-group ipv4 prefix-snmpx 
class-map match-any fabric-brokered-be-in match qos-group 3 
class-map match-any fabric-interactive-in match qos-group 5 
class-map match-any FABRIC-BROKERED-BE-OUT match traffic-class 4 
class-map match-any FABRIC-INTERACTIVE-OUT match traffic-class 5 
policy-map CORE-QOS-IN class control-in set traffic-class 7
policy-map CORE-QOS-IN class control-in set dscp cs6
policy-map CORE-QOS-IN class control-in set mpls experimental topmost 6
policy-map CORE-QOS-IN class voice-in set traffic-class 6
policy-map CORE-QOS-IN class voice-in set dscp ef
policy-map CORE-QOS-IN class voice-in set mpls experimental topmost 5
policy-map CORE-QOS-IN class interactive-in set traffic-class 5
policy-map CORE-QOS-IN class interactive-in set dscp af41
policy-map CORE-QOS-IN class interactive-in set mpls experimental topmost 4
policy-map CORE-QOS-IN class federal-in set traffic-class 4
policy-map CORE-QOS-IN class federal-in set dscp 25
policy-map CORE-QOS-IN class federal-in set mpls experimental topmost 3
policy-map CORE-QOS-IN class brokered-be-in set traffic-class 3
policy-map CORE-QOS-IN class brokered-be-in set dscp 1
policy-map CORE-QOS-IN class brokered-be-in set mpls experimental topmost 2
policy-map CORE-QOS-IN class scavenger-in set traffic-class 2
policy-map CORE-QOS-IN class scavenger-in set dscp cs1
policy-map CORE-QOS-IN class scavenger-in set mpls experimental topmost 1
policy-map CORE-QOS-IN class class-default set dscp 0
policy-map CORE-QOS-IN class class-default set mpls experimental topmost 0
policy-map CORE-QOS-IN class class-default set traffic-class 0
policy-map EDGE-QOS-IN class control-in set traffic-class 7
policy-map EDGE-QOS-IN class control-in set dscp cs6
policy-map EDGE-QOS-IN class control-in set mpls experimental imposition 6
policy-map EDGE-QOS-IN class voice-in set traffic-class 6
policy-map EDGE-QOS-IN class voice-in set dscp ef
policy-map EDGE-QOS-IN class voice-in set mpls experimental imposition 5
policy-map EDGE-QOS-IN class interactive-in set traffic-class 5
policy-map EDGE-QOS-IN class interactive-in set dscp af41
policy-map EDGE-QOS-IN class interactive-in set mpls experimental imposition 4
policy-map EDGE-QOS-IN class federal-in set traffic-class 4
policy-map EDGE-QOS-IN class federal-in set dscp 25
policy-map EDGE-QOS-IN class federal-in set mpls experimental imposition 3
policy-map EDGE-QOS-IN class brokered-be-in set traffic-class 3
policy-map EDGE-QOS-IN class brokered-be-in set dscp 1
policy-map EDGE-QOS-IN class brokered-be-in set mpls experimental imposition 2
policy-map EDGE-QOS-IN class scavenger-in set traffic-class 2
policy-map EDGE-QOS-IN class scavenger-in set dscp cs1
policy-map EDGE-QOS-IN class scavenger-in set mpls experimental imposition 1
policy-map EDGE-QOS-IN class class-default set dscp 0
policy-map EDGE-QOS-IN class class-default set mpls experimental imposition 0
policy-map EDGE-QOS-IN class class-default set traffic-class 0
policy-map CORE-QOS-OUT class control-out priority level 1 
policy-map CORE-QOS-OUT class control-out shape average percent 5 
policy-map CORE-QOS-OUT class control-out queue-limit 10 ms 
policy-map CORE-QOS-OUT class voice-out priority level 2 
policy-map CORE-QOS-OUT class voice-out shape average percent 10 
policy-map CORE-QOS-OUT class voice-out queue-limit 1 ms 
policy-map CORE-QOS-OUT class interactive-out shape average percent 20 
policy-map CORE-QOS-OUT class interactive-out priority level 3 
policy-map CORE-QOS-OUT class interactive-out queue-limit 1 ms 
policy-map CORE-QOS-OUT class federal-out shape average percent 15 
policy-map CORE-QOS-OUT class federal-out priority level 4 
policy-map CORE-QOS-OUT class federal-out queue-limit 4 ms 
policy-map CORE-QOS-OUT class brokered-be-out bandwidth remaining ratio 6 
policy-map CORE-QOS-OUT class brokered-be-out queue-limit 384 ms 
policy-map CORE-QOS-OUT class scavenger-out bandwidth remaining ratio 1 
policy-map CORE-QOS-OUT class scavenger-out queue-limit 2309 ms 
policy-map CORE-QOS-OUT class class-default bandwidth remaining ratio 30 
policy-map CORE-QOS-OUT class class-default queue-limit 76 ms 
policy-map EDGE-QOS-OUT class EDGE-VOICE-OUT priority level 1 
policy-map EDGE-QOS-OUT class EDGE-VOICE-OUT shape average percent 10 
policy-map EDGE-QOS-OUT class EDGE-VOICE-OUT queue-limit 1 ms 
policy-map EDGE-QOS-OUT class EDGE-CONTROL-OUT priority level 2 
policy-map EDGE-QOS-OUT class EDGE-CONTROL-OUT shape average percent 5 
policy-map EDGE-QOS-OUT class EDGE-CONTROL-OUT queue-limit 10 ms 
policy-map EDGE-QOS-OUT class EDGE-INTERACTIVE-OUT priority level 3 
policy-map EDGE-QOS-OUT class EDGE-INTERACTIVE-OUT shape average percent 20 
policy-map EDGE-QOS-OUT class EDGE-INTERACTIVE-OUT queue-limit 5 ms 
policy-map EDGE-QOS-OUT class EDGE-SCAVENGER-OUT bandwidth remaining ratio 1 
policy-map EDGE-QOS-OUT class EDGE-SCAVENGER-OUT queue-limit 800 ms 
policy-map EDGE-QOS-OUT class class-default bandwidth remaining ratio 63 
policy-map EDGE-QOS-OUT class class-default queue-limit 48 ms 
policy-map FABRIC-QOS-IN class fabric-control-in set traffic-class 7
policy-map FABRIC-QOS-IN class fabric-control-in set dscp cs6
policy-map FABRIC-QOS-IN class fabric-control-in set mpls experimental imposition 6
policy-map FABRIC-QOS-IN class fabric-voice-in set traffic-class 6
policy-map FABRIC-QOS-IN class fabric-voice-in set dscp ef
policy-map FABRIC-QOS-IN class fabric-voice-in set mpls experimental imposition 5
policy-map FABRIC-QOS-IN class fabric-interactive-in set traffic-class 5
policy-map FABRIC-QOS-IN class fabric-interactive-in set dscp af41
policy-map FABRIC-QOS-IN class fabric-interactive-in set mpls experimental imposition 4
policy-map FABRIC-QOS-IN class fabric-brokered-be-in set traffic-class 3
policy-map FABRIC-QOS-IN class fabric-brokered-be-in set dscp 1
policy-map FABRIC-QOS-IN class fabric-brokered-be-in set mpls experimental imposition 2
policy-map FABRIC-QOS-IN class fabric-scavenger-in set traffic-class 2
policy-map FABRIC-QOS-IN class fabric-scavenger-in set dscp cs1
policy-map FABRIC-QOS-IN class fabric-scavenger-in set mpls experimental imposition 1
policy-map FABRIC-QOS-IN class fabric-default-in set traffic-class 0
policy-map FABRIC-QOS-IN class fabric-default-in set dscp 0
policy-map FABRIC-QOS-IN class fabric-default-in set mpls experimental imposition 0
policy-map FABRIC-QOS-IN class class-default set traffic-class 0
policy-map FABRIC-QOS-IN class class-default set dscp 0
policy-map FABRIC-QOS-IN class class-default set mpls experimental imposition 0
policy-map FABRIC-QOS-OUT class FABRIC-VOICE-OUT priority level 1 
policy-map FABRIC-QOS-OUT class FABRIC-VOICE-OUT shape average percent 10 
policy-map FABRIC-QOS-OUT class FABRIC-VOICE-OUT queue-limit 1 ms 
policy-map FABRIC-QOS-OUT class FABRIC-CONTROL-OUT priority level 2 
policy-map FABRIC-QOS-OUT class FABRIC-CONTROL-OUT shape average percent 5 
policy-map FABRIC-QOS-OUT class FABRIC-CONTROL-OUT queue-limit 10 ms 
policy-map FABRIC-QOS-OUT class FABRIC-INTERACTIVE-OUT priority level 3 
policy-map FABRIC-QOS-OUT class FABRIC-INTERACTIVE-OUT shape average percent 20 
policy-map FABRIC-QOS-OUT class FABRIC-INTERACTIVE-OUT queue-limit 5 ms 
policy-map FABRIC-QOS-OUT class FABRIC-SCAVENGER-OUT bandwidth remaining ratio 10 
policy-map FABRIC-QOS-OUT class FABRIC-SCAVENGER-OUT queue-limit 369 ms 
policy-map FABRIC-QOS-OUT class FABRIC-BROKERED-BE-OUT bandwidth remaining ratio 45 
policy-map FABRIC-QOS-OUT class FABRIC-BROKERED-BE-OUT queue-limit 82 ms 
policy-map FABRIC-QOS-OUT class class-default bandwidth remaining ratio 45 
policy-map FABRIC-QOS-OUT class class-default queue-limit 82 ms 
policy-map CORE-QOS-OUT-400G class control-out priority level 1 
policy-map CORE-QOS-OUT-400G class control-out shape average percent 5 
policy-map CORE-QOS-OUT-400G class control-out queue-limit 10 ms 
policy-map CORE-QOS-OUT-400G class voice-out priority level 2 
policy-map CORE-QOS-OUT-400G class voice-out shape average percent 10 
policy-map CORE-QOS-OUT-400G class voice-out queue-limit 1 ms 
policy-map CORE-QOS-OUT-400G class interactive-out queue-limit 1 ms 
policy-map CORE-QOS-OUT-400G class interactive-out shape average percent 20 
policy-map CORE-QOS-OUT-400G class interactive-out priority level 3 
policy-map CORE-QOS-OUT-400G class federal-out shape average percent 15 
policy-map CORE-QOS-OUT-400G class federal-out priority level 4 
policy-map CORE-QOS-OUT-400G class federal-out queue-limit 4 ms 
policy-map CORE-QOS-OUT-400G class brokered-be-out bandwidth remaining ratio 6 
policy-map CORE-QOS-OUT-400G class brokered-be-out queue-limit 96 ms 
policy-map CORE-QOS-OUT-400G class scavenger-out bandwidth remaining ratio 1 
policy-map CORE-QOS-OUT-400G class scavenger-out queue-limit 577 ms 
policy-map CORE-QOS-OUT-400G class class-default bandwidth remaining ratio 30 
policy-map CORE-QOS-OUT-400G class class-default queue-limit 19 ms 
policy-map EDGE-QOS-OUT-400G class EDGE-VOICE-OUT priority level 1 
policy-map EDGE-QOS-OUT-400G class EDGE-VOICE-OUT shape average percent 10 
policy-map EDGE-QOS-OUT-400G class EDGE-VOICE-OUT queue-limit 1 ms 
policy-map EDGE-QOS-OUT-400G class EDGE-CONTROL-OUT priority level 2 
policy-map EDGE-QOS-OUT-400G class EDGE-CONTROL-OUT shape average percent 5 
policy-map EDGE-QOS-OUT-400G class EDGE-CONTROL-OUT queue-limit 10 ms 
policy-map EDGE-QOS-OUT-400G class EDGE-INTERACTIVE-OUT priority level 3 
policy-map EDGE-QOS-OUT-400G class EDGE-INTERACTIVE-OUT shape average percent 20 
policy-map EDGE-QOS-OUT-400G class EDGE-INTERACTIVE-OUT queue-limit 5 ms 
policy-map EDGE-QOS-OUT-400G class EDGE-SCAVENGER-OUT bandwidth remaining ratio 1 
policy-map EDGE-QOS-OUT-400G class EDGE-SCAVENGER-OUT queue-limit 800 ms 
policy-map EDGE-QOS-OUT-400G class class-default bandwidth remaining ratio 63 
policy-map EDGE-QOS-OUT-400G class class-default queue-limit 48 ms 
policy-map FABRIC-QOS-OUT-400G class FABRIC-VOICE-OUT priority level 1 
policy-map FABRIC-QOS-OUT-400G class FABRIC-VOICE-OUT shape average percent 10 
policy-map FABRIC-QOS-OUT-400G class FABRIC-VOICE-OUT queue-limit 1 ms 
policy-map FABRIC-QOS-OUT-400G class FABRIC-CONTROL-OUT priority level 2 
policy-map FABRIC-QOS-OUT-400G class FABRIC-CONTROL-OUT shape average percent 5 
policy-map FABRIC-QOS-OUT-400G class FABRIC-CONTROL-OUT queue-limit 10 ms 
policy-map FABRIC-QOS-OUT-400G class FABRIC-INTERACTIVE-OUT priority level 3 
policy-map FABRIC-QOS-OUT-400G class FABRIC-INTERACTIVE-OUT shape average percent 20 
policy-map FABRIC-QOS-OUT-400G class FABRIC-INTERACTIVE-OUT queue-limit 5 ms 
policy-map FABRIC-QOS-OUT-400G class FABRIC-SCAVENGER-OUT bandwidth remaining ratio 10 
policy-map FABRIC-QOS-OUT-400G class FABRIC-SCAVENGER-OUT queue-limit 92 ms 
policy-map FABRIC-QOS-OUT-400G class FABRIC-BROKERED-BE-OUT bandwidth remaining ratio 45 
policy-map FABRIC-QOS-OUT-400G class FABRIC-BROKERED-BE-OUT queue-limit 20 ms 
policy-map FABRIC-QOS-OUT-400G class class-default bandwidth remaining ratio 45 
policy-map FABRIC-QOS-OUT-400G class class-default queue-limit 20 ms 
flow exporter-map IPFIX_MSAZ 
flow exporter-map IPFIX_MSAZ version ipfix 
flow exporter-map IPFIX_MSAZ version ipfix options interface-table timeout 10
flow exporter-map IPFIX_MSAZ version ipfix options sampler-table timeout 10
flow exporter-map IPFIX_MSAZ version ipfix template timeout 10
flow exporter-map IPFIX_MSAZ version ipfix template data timeout 10
flow exporter-map IPFIX_MSAZ version ipfix template options timeout 10
flow exporter-map IPFIX_MSAZ transport udp 4739
flow exporter-map IPFIX_MSAZ source Loopback99
flow exporter-map IPFIX_MSAZ destination 10.2.1.37 vrf MANAGEMENT
flow monitor-map IPFIX_MSAZ_IPV4 
flow monitor-map IPFIX_MSAZ_IPV4 record ipv4
flow monitor-map IPFIX_MSAZ_IPV4 exporter IPFIX_MSAZ
flow monitor-map IPFIX_MSAZ_IPV4 cache entries 1000000
flow monitor-map IPFIX_MSAZ_IPV4 cache timeout active 60
flow monitor-map IPFIX_MSAZ_IPV4 cache timeout inactive 15
flow monitor-map IPFIX_MSAZ_IPV4 cache timeout rate-limit 10000
flow monitor-map IPFIX_MSAZ_IPV6 
flow monitor-map IPFIX_MSAZ_IPV6 record ipv6
flow monitor-map IPFIX_MSAZ_IPV6 exporter IPFIX_MSAZ
flow monitor-map IPFIX_MSAZ_IPV6 cache entries 1000000
flow monitor-map IPFIX_MSAZ_IPV6 cache timeout active 60
flow monitor-map IPFIX_MSAZ_IPV6 cache timeout inactive 15
flow monitor-map IPFIX_MSAZ_IPV6 cache timeout rate-limit 10000
flow monitor-map IPv4_Monitor_Map 
flow monitor-map IPv4_Monitor_Map record ipv4
flow monitor-map IPv4_Monitor_Map option filtered
flow monitor-map IPv4_Monitor_Map option bgpattr
flow monitor-map IPv4_Monitor_Map option outbundlemember
flow monitor-map IPv4_Monitor_Map cache entries 10000
flow monitor-map IPv4_Monitor_Map cache timeout active 60
flow monitor-map IPv4_Monitor_Map cache timeout inactive 15
flow monitor-map IPv4_Monitor_Map cache timeout update 1234
flow monitor-map IPv6_Monitor_Map 
flow monitor-map IPv6_Monitor_Map record ipv6
flow monitor-map IPv6_Monitor_Map option filtered
flow monitor-map IPv6_Monitor_Map option bgpattr
flow monitor-map IPv6_Monitor_Map option outbundlemember
flow monitor-map IPv6_Monitor_Map cache entries 10000
flow monitor-map IPv6_Monitor_Map cache timeout active 60
flow monitor-map IPv6_Monitor_Map cache timeout inactive 15
flow monitor-map IPv6_Monitor_Map cache timeout update 1234
sampler-map IPFIX_MSAZ_SM 
sampler-map IPFIX_MSAZ_SM random 1 out-of 4096
interface Bundle-Ether1 
interface Bundle-Ether1 service-policy input CORE-QOS-IN
interface Bundle-Ether1 service-policy output CORE-QOS-OUT
interface Bundle-Ether120 
interface Bundle-Ether120 description owr03.str15:PortChannel0120
interface Bundle-Ether120 mtu 9100
interface Bundle-Ether120 ipv4 address 172.20.237.1 255.255.255.254
interface Bundle-Ether120 ipv6 address 2a01:111:e210:0:172:20:237:2/126
interface Bundle-Ether120 load-interval 30
interface Bundle-Ether131 
interface Bundle-Ether131 description owr01.str15:BE131
interface Bundle-Ether131 mtu 9192
interface Bundle-Ether131 service-policy input CORE-QOS-IN
interface Bundle-Ether131 service-policy output CORE-QOS-OUT
interface Bundle-Ether131 ipv4 address 172.20.131.2 255.255.255.254
interface Bundle-Ether131 ipv6 address 2a01:111:e210:0:172:20:131:2/126
interface Bundle-Ether131 lldp 
interface Bundle-Ether131 lldp transmit disable
interface Bundle-Ether131 monitor-session BGPLS ethernet direction rx-only port-level 
interface Bundle-Ether131 monitor-session BGPLS ethernet direction rx-only port-level acl
interface Bundle-Ether131 load-interval 30
interface Bundle-Ether131 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether131 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether131 ipv4 access-group BGPLS ingress
interface Bundle-Ether135 
interface Bundle-Ether135 description owr02.str15:Port-Channel135:100G:DO_NOT_UNSHUT
interface Bundle-Ether135 bandwidth 800000000
interface Bundle-Ether135 mtu 9192
interface Bundle-Ether135 service-policy input CORE-QOS-IN
interface Bundle-Ether135 service-policy output CORE-QOS-OUT
interface Bundle-Ether135 ipv4 address 172.20.135.1 255.255.255.254
interface Bundle-Ether135 ipv6 address 2a01:111:e210:0:172:20:135:2/126
interface Bundle-Ether135 lldp 
interface Bundle-Ether135 lldp transmit disable
interface Bundle-Ether135 shutdown
interface Bundle-Ether135 load-interval 30
interface Bundle-Ether135 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether135 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether140 
interface Bundle-Ether140 description owr02.str15 Port-channel140
interface Bundle-Ether140 bandwidth 800000000
interface Bundle-Ether140 mtu 9192
interface Bundle-Ether140 service-policy input CORE-QOS-IN
interface Bundle-Ether140 service-policy output CORE-QOS-OUT-400G
interface Bundle-Ether140 ipv4 address 172.20.140.0 255.255.255.254
interface Bundle-Ether140 ipv6 address 2a01:111:e210:0:172:20:140:1/126
interface Bundle-Ether140 lldp 
interface Bundle-Ether140 lldp transmit disable
interface Bundle-Ether140 load-interval 30
interface Bundle-Ether140 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether140 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether140.149 
interface Bundle-Ether149 
interface Bundle-Ether149 description ibr02.str05 BE149
interface Bundle-Ether149 mtu 9192
interface Bundle-Ether149 service-policy input CORE-QOS-IN
interface Bundle-Ether149 service-policy output CORE-QOS-OUT
interface Bundle-Ether149 ipv4 address 172.20.149.0 255.255.255.254
interface Bundle-Ether149 ipv6 address 2a01:111:e210:0:172:20:149:1/126
interface Bundle-Ether149 load-interval 30
interface Bundle-Ether149 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether149 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether240 
interface Bundle-Ether246 
interface Bundle-Ether246 description ibr01.str06:BE246
interface Bundle-Ether246 mtu 9192
interface Bundle-Ether246 service-policy input CORE-QOS-IN
interface Bundle-Ether246 service-policy output CORE-QOS-OUT
interface Bundle-Ether246 ipv4 address 172.20.246.0 255.255.255.254
interface Bundle-Ether246 ipv6 address 2a01:111:e210:0:172:20:246:1/126
interface Bundle-Ether246 lldp 
interface Bundle-Ether246 lldp transmit disable
interface Bundle-Ether246 load-interval 30
interface Bundle-Ether246 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether246 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether246 logging events link-status
interface Bundle-Ether247 
interface Bundle-Ether247 description INFRA:IX:ier01.str50::ae247
interface Bundle-Ether247 mtu 9192
interface Bundle-Ether247 service-policy input EDGE-QOS-IN
interface Bundle-Ether247 ipv4 address 172.20.247.1 255.255.255.254
interface Bundle-Ether247 ipv6 address 2a01:111:e210:0:172:20:247:2/126
interface Bundle-Ether247 lldp 
interface Bundle-Ether247 lldp transmit disable
interface Bundle-Ether247 load-interval 30
interface Bundle-Ether247 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether247 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface Bundle-Ether1300 
interface Bundle-Ether1300 description IXIA as RH\rabc\
interface Loopback1 
interface Loopback55 
interface Loopback55 description LDP loopback
interface Loopback55 ipv4 address 10.30.159.130 255.255.255.255
interface Loopback55 ipv6 address 2a01:111:e210:1:10:30:159:130/128
interface Loopback99 
interface Loopback99 description "Loopback99:10.3.159.184"
interface Loopback99 ipv4 address 10.3.159.130 255.255.255.255
interface Loopback99 ipv6 address 2a01:111:e210:1:10:3:159:130/128
interface Loopback100 
interface Loopback100 ipv4 address 10.1.1.1 255.255.255.255
interface Loopback333 
interface Loopback333 description "Test TMS VRF"
interface Loopback333 vrf tms-l3vrf
interface Loopback333 ipv4 address 56.56.56.56 255.255.255.255
interface tunnel-ip0 
interface tunnel-ip0 ipv4 unnumbered Loopback99
interface tunnel-ip0 load-interval 30
interface tunnel-ip0 tunnel mode ipv4 decap
interface tunnel-ip0 tunnel source Loopback99
interface tunnel-ip99 
interface tunnel-ip99 ipv4 unnumbered Loopback99
interface tunnel-ip99 load-interval 30
interface tunnel-ip99 tunnel mode ipv6 decap
interface tunnel-ip99 tunnel source Loopback99
interface tunnel-ip140 
interface tunnel-ip140 load-interval 30
interface MgmtEth0/RP0/CPU0/0 description MGMT:10.3.151.132/24
interface MgmtEth0/RP0/CPU0/0 vrf MANAGEMENT
interface MgmtEth0/RP0/CPU0/0 ipv4 address 10.3.151.132 255.255.255.0
interface MgmtEth0/RP0/CPU0/0 arp learning local
interface MgmtEth0/RP0/CPU0/0 ipv6 address 2a01:111:e210:1:10:3:151:132/64
interface MgmtEth0/RP0/CPU0/0 load-interval 30
interface MgmtEth0/RP1/CPU0/0 description MGMT:10.3.151.131/24
interface MgmtEth0/RP1/CPU0/0 vrf MANAGEMENT
interface MgmtEth0/RP1/CPU0/0 ipv4 address 10.3.151.131 255.255.255.0
interface MgmtEth0/RP1/CPU0/0 arp learning local
interface MgmtEth0/RP1/CPU0/0 ipv6 address 2a01:111:e210:1:10:3:151:131/64
interface MgmtEth0/RP1/CPU0/0 load-interval 30
interface TenGigE0/0/0/35/0 shutdown
interface TenGigE0/0/0/35/1 shutdown
interface TenGigE0/0/0/35/2 ipv4 address 10.3.148.123 255.255.255.0
interface TenGigE0/0/0/35/2 ipv4 access-group lab-agg-switch-acl ingress compress level 2
interface TenGigE0/0/0/35/3 shutdown
controller Optics0/0/0/16 transmit-power -100
controller Optics0/0/0/16 dwdm-carrier 100MHz-grid frequency 1931000
controller Optics0/0/0/17 transmit-power -100
controller Optics0/0/0/17 dwdm-carrier 100MHz-grid frequency 1931000
controller Optics0/0/0/35 breakout 4x10
interface FourHundredGigE0/0/0/0 shutdown
interface HundredGigE0/0/0/1 description owr01.str15 HundredGigE0/0/0/1
interface HundredGigE0/0/0/1 bundle id 131 mode active
interface HundredGigE0/0/0/1 lacp period short
interface HundredGigE0/0/0/1 macsec psk-keychain macsec-int-BE131 fallback-psk-keychain macsec-int-fb-BE131 policy macsec-xpn-256
interface HundredGigE0/0/0/2 description INFRA:IX:ibr01.str06:HundredGigE0/0/0/20:be246:::
interface HundredGigE0/0/0/2 bundle id 246 mode active
interface HundredGigE0/0/0/2 lacp period short
interface HundredGigE0/0/0/2 carrier-delay up 2 down 0
interface HundredGigE0/0/0/2 load-interval 30
interface HundredGigE0/0/0/2 dampening
interface HundredGigE0/0/0/3 description INFRA:IX:ibr01.str06:HundredGigE0/0/0/21:be246:::
interface HundredGigE0/0/0/3 bundle id 246 mode active
interface HundredGigE0/0/0/3 lacp period short
interface HundredGigE0/0/0/3 carrier-delay up 2 down 0
interface HundredGigE0/0/0/3 load-interval 30
interface HundredGigE0/0/0/3 dampening
interface HundredGigE0/0/0/4 description owr02.str15 Et3/9/1
interface HundredGigE0/0/0/4 bundle id 135 mode active
interface HundredGigE0/0/0/4 lacp period short
interface HundredGigE0/0/0/5 description owr02.str15 Et3/10/1
interface HundredGigE0/0/0/5 bundle id 135 mode active
interface HundredGigE0/0/0/5 lacp period short
interface HundredGigE0/0/0/6 description IXIA 7/6
interface HundredGigE0/0/0/6 mtu 9192
interface HundredGigE0/0/0/6 service-policy output FABRIC-QOS-OUT
interface HundredGigE0/0/0/6 ipv4 address 98.1.0.0 255.255.255.254
interface HundredGigE0/0/0/6 ipv6 address 2a98::1/126
interface HundredGigE0/0/0/6 monitor-session rsvp-test ethernet direction rx-only 
interface HundredGigE0/0/0/6 load-interval 30
interface HundredGigE0/0/0/6 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/6 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/7 description owr01.str15 HundredGigE0/0/0/0
interface HundredGigE0/0/0/7 bundle id 131 mode active
interface HundredGigE0/0/0/7 lacp period short
interface HundredGigE0/0/0/7 macsec psk-keychain macsec-int-BE131 fallback-psk-keychain macsec-int-fb-BE131 policy macsec-xpn-256
interface HundredGigE0/0/0/8 description INFRA:IX:IXIA:10.3.145.24:9/5
interface HundredGigE0/0/0/8 ipv4 address 10.10.10.1 255.255.255.0
interface HundredGigE0/0/0/8 lacp period short
interface HundredGigE0/0/0/8 carrier-delay up 2 down 0
interface HundredGigE0/0/0/8 load-interval 30
interface HundredGigE0/0/0/8 dampening
interface HundredGigE0/0/0/9 description INFRA:IX:ier01.str05:et-0/0/61
interface HundredGigE0/0/0/9 bundle id 247 mode active
interface HundredGigE0/0/0/9 lacp period short
interface HundredGigE0/0/0/9 carrier-delay up 2 down 0
interface HundredGigE0/0/0/9 load-interval 30
interface HundredGigE0/0/0/9 dampening
interface FourHundredGigE0/0/0/10 shutdown
interface HundredGigE0/0/0/11 description IXIA.24LC2P5::wan_auto_test::RESERVED
interface HundredGigE0/0/0/11 mtu 9192
interface HundredGigE0/0/0/11 service-policy input FABRIC-QOS-IN
interface HundredGigE0/0/0/11 service-policy output FABRIC-QOS-OUT
interface HundredGigE0/0/0/11 ipv4 address 61.100.11.0 255.255.255.254
interface HundredGigE0/0/0/11 ipv6 address 2a61:100:11::1/126
interface HundredGigE0/0/0/11 load-interval 30
interface HundredGigE0/0/0/11 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/11 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/12 description INFRA:IX:ier01.str50:et-0/0/67
interface HundredGigE0/0/0/12 bundle id 247 mode active
interface HundredGigE0/0/0/12 lacp period short
interface HundredGigE0/0/0/12 carrier-delay up 2 down 0
interface HundredGigE0/0/0/12 load-interval 30
interface HundredGigE0/0/0/12 dampening 1 1000 2000 4 0
interface HundredGigE0/0/0/13 shutdown
interface HundredGigE0/0/0/14 description INFRA:IX:ibr02.str05:HundredGigE0/2/0/12:be149:::
interface HundredGigE0/0/0/14 bundle id 149 mode active
interface HundredGigE0/0/0/14 lacp period short
interface HundredGigE0/0/0/14 carrier-delay up 2 down 0
interface HundredGigE0/0/0/14 load-interval 30
interface HundredGigE0/0/0/14 dampening
interface HundredGigE0/0/0/15 description INFRA:IX:ibr02.str05:HundredGigE0/2/0/13:be149:::
interface HundredGigE0/0/0/15 bundle id 149 mode active
interface HundredGigE0/0/0/15 lacp period short
interface HundredGigE0/0/0/15 carrier-delay up 2 down 0
interface HundredGigE0/0/0/15 load-interval 30
interface HundredGigE0/0/0/15 dampening
interface FourHundredGigE0/0/0/16 description owr02.str15 Ethernet4/13/1
interface FourHundredGigE0/0/0/16 bundle id 140 mode active
interface FourHundredGigE0/0/0/16 macsec psk-keychain macsec-int-BE131 fallback-psk-keychain macsec-int-fb-BE131 policy macsec-xpn-256
interface FourHundredGigE0/0/0/17 description owr02.str15 Ethernet4/14/1
interface FourHundredGigE0/0/0/17 bundle id 140 mode active
interface FourHundredGigE0/0/0/17 macsec psk-keychain macsec-int-BE131 fallback-psk-keychain macsec-int-fb-BE131 policy macsec-xpn-256
interface FourHundredGigE0/0/0/18 shutdown
interface HundredGigE0/0/0/19 description IXIA.24LC6P4:::wan_auto_test::RESERVED
interface HundredGigE0/0/0/19 mtu 9192
interface HundredGigE0/0/0/19 service-policy input FABRIC-QOS-IN
interface HundredGigE0/0/0/19 service-policy output FABRIC-QOS-OUT
interface HundredGigE0/0/0/19 ipv4 address 61.100.0.2 255.255.255.254
interface HundredGigE0/0/0/19 ipv6 address 2a61:100:19::1/126
interface HundredGigE0/0/0/19 load-interval 30
interface HundredGigE0/0/0/19 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/19 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/19 ipv4 access-group converged_scavenger_rwa ingress compress level 2
interface HundredGigE0/0/0/20 description IXIA 10.3.145.24/07/08
interface HundredGigE0/0/0/20 mtu 9192
interface HundredGigE0/0/0/20 service-policy output FABRIC-QOS-OUT
interface HundredGigE0/0/0/20 ipv4 address 75.1.0.0 255.255.255.254
interface HundredGigE0/0/0/20 ipv6 address 2a75::1/126
interface HundredGigE0/0/0/20 monitor-session TEST_ECMP ethernet direction rx-only port-level 
interface HundredGigE0/0/0/20 load-interval 30
interface HundredGigE0/0/0/20 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/20 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/21 description connecting to ovh03.str15 Hu0/2/0
interface HundredGigE0/0/0/21 ipv4 address 172.20.9.1 255.255.255.254
interface HundredGigE0/0/0/22 description INFRA:IX:ovh02.str15::HundredGigE0/2/0::
interface HundredGigE0/0/0/22 ipv4 address 172.20.102.9 255.255.255.254
interface HundredGigE0/0/0/23 description IXIA.21:3/2::wan_auto_test::RESERVED
interface HundredGigE0/0/0/23 mtu 9192
interface HundredGigE0/0/0/23 service-policy input FABRIC-QOS-IN
interface HundredGigE0/0/0/23 service-policy output CORE-QOS-OUT
interface HundredGigE0/0/0/23 ipv4 address 61.100.0.52 255.255.255.254
interface HundredGigE0/0/0/23 ipv6 address 2a61:100:52::1/126
interface HundredGigE0/0/0/23 flow ipv4 monitor IPFIX_MSAZ_IPV4 sampler IPFIX_MSAZ_SM ingress
interface HundredGigE0/0/0/23 flow ipv6 monitor IPFIX_MSAZ_IPV6 sampler IPFIX_MSAZ_SM ingress
interface FourHundredGigE0/0/0/24 shutdown
interface FourHundredGigE0/0/0/25 shutdown
interface FourHundredGigE0/0/0/26 shutdown
interface FourHundredGigE0/0/0/27 shutdown
interface FourHundredGigE0/0/0/28 shutdown
interface FourHundredGigE0/0/0/29 shutdown
interface FourHundredGigE0/0/0/30 shutdown
interface FourHundredGigE0/0/0/31 shutdown
interface FourHundredGigE0/0/0/32 shutdown
interface FourHundredGigE0/0/0/33 shutdown
interface FourHundredGigE0/0/0/34 shutdown
interface PTP0/RP0/CPU0/0 shutdown
interface PTP0/RP1/CPU0/0 shutdown
interface preconfigure TenGigE0/0/0/35 
interface preconfigure HundredGigE0/0/0/0 
interface preconfigure HundredGigE0/0/0/0 bundle id 131 mode active
interface preconfigure FourHundredGigE0/0/0/1 
interface preconfigure FourHundredGigE0/0/0/1 shutdown
interface preconfigure FourHundredGigE0/0/0/2 
interface preconfigure FourHundredGigE0/0/0/2 shutdown
interface preconfigure FourHundredGigE0/0/0/3 
interface preconfigure FourHundredGigE0/0/0/3 shutdown
interface preconfigure FourHundredGigE0/0/0/4 
interface preconfigure FourHundredGigE0/0/0/4 shutdown
interface preconfigure FourHundredGigE0/0/0/5 
interface preconfigure FourHundredGigE0/0/0/5 shutdown
interface preconfigure FourHundredGigE0/0/0/6 
interface preconfigure FourHundredGigE0/0/0/6 shutdown
interface preconfigure FourHundredGigE0/0/0/7 
interface preconfigure FourHundredGigE0/0/0/7 shutdown
interface preconfigure FourHundredGigE0/0/0/8 
interface preconfigure FourHundredGigE0/0/0/8 shutdown
interface preconfigure FourHundredGigE0/0/0/9 
interface preconfigure FourHundredGigE0/0/0/9 shutdown
interface preconfigure HundredGigE0/0/0/10 description IXIA LC1P1
interface preconfigure HundredGigE0/0/0/10 
interface preconfigure HundredGigE0/0/0/10 mtu 9192
interface preconfigure HundredGigE0/0/0/10 ipv4 address 172.20.50.1 255.255.255.252
interface preconfigure HundredGigE0/0/0/10 ipv6 address 2a01:111:e210:0:172:20:50:2/126
interface preconfigure HundredGigE0/0/0/10 lldp 
interface preconfigure FourHundredGigE0/0/0/12 
interface preconfigure FourHundredGigE0/0/0/12 shutdown
interface preconfigure FourHundredGigE0/0/0/13 
interface preconfigure FourHundredGigE0/0/0/13 shutdown
interface preconfigure FourHundredGigE0/0/0/14 
interface preconfigure FourHundredGigE0/0/0/14 shutdown
interface preconfigure FourHundredGigE0/0/0/15 
interface preconfigure FourHundredGigE0/0/0/15 shutdown
interface preconfigure HundredGigE0/0/0/18 
interface preconfigure HundredGigE0/0/0/18 shutdown
interface preconfigure FourHundredGigE0/0/0/19 
interface preconfigure FourHundredGigE0/0/0/19 shutdown
interface preconfigure FourHundredGigE0/0/0/20 
interface preconfigure FourHundredGigE0/0/0/20 shutdown
interface preconfigure FourHundredGigE0/0/0/21 
interface preconfigure FourHundredGigE0/0/0/21 shutdown
interface preconfigure FourHundredGigE0/0/0/22 
interface preconfigure FourHundredGigE0/0/0/22 shutdown
interface preconfigure FourHundredGigE0/0/0/23 
interface preconfigure FourHundredGigE0/0/0/23 shutdown
interface preconfigure HundredGigE0/0/0/26 
interface preconfigure HundredGigE0/0/0/26 shutdown
interface preconfigure HundredGigE0/0/0/33 
interface preconfigure HundredGigE0/0/0/33 shutdown
interface preconfigure HundredGigE0/0/0/34 description TEST123
interface preconfigure HundredGigE0/0/0/34 
interface preconfigure FortyGigE0/0/0/35 
interface preconfigure FortyGigE0/0/0/35 shutdown
interface preconfigure HundredGigE0/0/0/35 description IXIA as RH
interface preconfigure HundredGigE0/0/0/35 
interface preconfigure HundredGigE0/0/0/35 bundle id 1300 mode active
interface preconfigure HundredGigE0/0/0/35 ipv4 address 55.1.0.0 255.255.255.254
interface preconfigure HundredGigE0/0/0/35 ipv6 address 2a55::1/126
interface preconfigure HundredGigE0/0/0/35 ipv4 access-group lab-agg-switch-acl ingress compress level 2
interface preconfigure HundredGigE0/2/0/12 
interface preconfigure HundredGigE0/2/0/12 bundle id 133 mode active
extcommunity-set rt COMM_RT_TMS_GEO
  8075:3000207
end-set
!
extcommunity-set rt COMM_RT_TMS_IRR
  8075:3000318
end-set
!
extcommunity-set rt COMM_RT_TMS_SITE
  8075:3014197
end-set
!
extcommunity-set rt COMM_RT_TMS_GLOBAL
  8075:3000101
end-set
!
extcommunity-set rt COMM_RT_ITE_PREMIUM_IRR
  8075:3032016
end-set
!
extcommunity-set rt COMM_RT_ITE_PREMIUM_GLOBAL
  8075:3000300
end-set
!
extcommunity-set rt COMM_RT_ITE_PREMIUM_CONTINENT
  8075:3031007
end-set
!
prefix-set BOGON-V4
  0.0.0.0/8,
  10.0.0.0/8,
  127.0.0.0/8,
  169.254.0.0/16,
  172.16.0.0/12,
  192.0.0.0/24,
  192.0.2.0/24,
  192.168.0.0/16,
  198.18.0.0/15,
  198.51.100.0/24,
  203.0.113.0/24,
  224.0.0.0/3
end-set
!
prefix-set BOGON-V6
  ::/128,
  ::/8,
  ::/96,
  ::1/128,
  ::ffff:0.0.0.0/96,
  100::/64,
  100::/8,
  1000::/4,
  200::/7,
  2001:10::/28,
  2001:db8::/32,
  2002::/24,
  2002:7f00::/24,
  2002:a00::/24,
  2002:a9fe::/32,
  2002:ac10::/28,
  2002:c0a8::/32,
  2002:e000::/20,
  2002:f000::/24,
  3ffe::/16,
  400::/6,
  4000::/3,
  5f00::/8,
  6000::/3,
  800::/5,
  8000::/3,
  a000::/3,
  c000::/3,
  e000::/4,
  f000::/5,
  f800::/6,
  fc00::/7,
  fe00::/9,
  fe80::/10,
  fec0::/10,
  ff00::/8
end-set
!
prefix-set BYOIP-V3
end-set
!
prefix-set BYOIP-V4
  7.28.1.0/24,
  10.0.4.0/24,
  10.20.12.0/24,
  10.20.14.0/24,
  3.28.1.0/24,
  5.28.1.0/24,
  6.10.1.0/24,
  10.11.11.0/24,
  131.253.1.0/24,
  1.2.5.0/24,
  10.10.1.0/30,
  1.2.9.0/24,
  1.29.1.0/24,
  2.28.1.0/24,
  4.29.1.0/24,
  24.29.1.0/24,
  1.1.1.0/24,
  104.193.184.0/22
end-set
!
prefix-set BYOIP-V6
  2404:f800::/128,
  2602:fd5e:4::/48
end-set
!
prefix-set WPS-EDGE
  157.55.112.64/27
end-set
!
prefix-set WPS-PTNR
  157.56.144.64/26
end-set
!
prefix-set ssh-list
  10.20.0.0/18,
  10.20.192.0/18,
  10.41.192.0/18,
  10.64.0.0/18,
  168.62.208.162/32,
  168.62.209.95/32,
  25.66.128.0/17,
  40.90.144.235/32,
  40.90.146.191/32,
  40.90.147.119/32,
  40.90.155.26/32,
  70.37.160.97/32,
  70.37.161.124/32
end-set
!
prefix-set ITEpremium
  13.107.64.0/23,
  23.96.92.95/32,
  52.112.0.0/14,
  52.112.65.75/32,
  52.112.65.80/32,
  52.112.65.81/32
end-set
!
prefix-set PERMIT-DNS
  103.9.8.0/22,
  104.44.106.128/27,
  104.44.106.32/27,
  104.44.106.64/27,
  104.44.193.224/27,
  104.44.221.32/27,
  104.44.221.96/27,
  104.44.222.160/27,
  104.44.223.0/26,
  111.221.121.0/27,
  13.106.32.32/27,
  134.170.216.32/27,
  134.170.217.128/27,
  134.170.65.0/28,
  139.217.0.0/16,
  139.219.0.0/16,
  157.56.156.0/27,
  157.56.157.32/27,
  157.56.158.0/27,
  157.56.159.0/27,
  157.56.204.32/27,
  157.56.205.0/27,
  157.56.74.160/27,
  157.56.96.0/28,
  193.221.113.53/32,
  204.79.195.0/26,
  204.79.252.0/27,
  207.46.0.32/27,
  207.46.116.0/26,
  207.46.200.32/28,
  207.46.48.192/27,
  207.46.66.64/27,
  207.68.168.16/28,
  208.68.136.32/27,
  208.76.45.53/32,
  208.76.46.0/26,
  208.84.0.53/32,
  208.84.2.53/32,
  213.199.177.64/27,
  23.103.131.0/24,
  40.125.128.0/17,
  40.126.64.0/18,
  40.72.0.0/15,
  42.159.0.0/16,
  51.4.71.32/27,
  51.5.71.0/27,
  52.130.0.0/15,
  64.4.15.80/28,
  64.4.5.0/26,
  65.54.121.0/26,
  65.54.238.64/27,
  65.54.70.0/26,
  65.55.117.0/26,
  65.55.178.0/26,
  65.55.238.0/26,
  65.55.33.0/27,
  65.55.37.32/28,
  65.55.5.128/27,
  65.55.81.0/28,
  70.37.154.0/27,
  94.245.112.32/28,
  94.245.64.0/28,
  94.245.77.0/28
end-set
!
prefix-set PRIVATE-V4
  10.0.0.0/8,
  100.64.0.0/10,
  104.146.0.0/19,
  104.146.32.0/19,
  104.146.64.0/18,
  104.147.0.0/16,
  129.75.0.0/16,
  13.96.0.0/13,
  134.177.0.0/16,
  138.196.0.0/16,
  141.251.0.0/16,
  146.147.0.0/16,
  172.16.0.0/12,
  191.232.4.0/26,
  191.232.6.0/23,
  191.235.10.0/24,
  191.235.13.0/24,
  191.235.14.0/24,
  191.235.9.0/24,
  192.100.102.0/24,
  192.100.103.0/24,
  192.168.0.0/16,
  192.32.0.0/16,
  198.18.0.0/15,
  20.128.0.0/16,
  20.130.0.0/16,
  20.144.0.0/14,
  20.176.0.0/14,
  20.180.0.0/14,
  20.35.252.0/22,
  21.0.0.0/8,
  22.0.0.0/8,
  23.103.0.0/18,
  25.0.0.0/12,
  25.128.0.0/14,
  25.142.0.0/15,
  25.144.0.0/12,
  25.160.0.0/11,
  25.192.0.0/11,
  25.224.0.0/12,
  25.244.0.0/14,
  25.248.0.0/13,
  25.28.0.0/14,
  25.33.80.0/20,
  25.41.3.0/25,
  25.64.0.0/10,
  40.108.0.0/19,
  40.108.32.0/19,
  40.108.64.0/18,
  40.109.0.0/16,
  40.66.128.0/17,
  52.132.0.0/14,
  52.145.0.0/16,
  100.88.4.0/22,
  30.130.0.0/16
end-set
!
prefix-set tools-list
  10.20.0.0/18,
  10.41.192.0/18
end-set
!
prefix-set IDENTITY-AS
  13.75.88.52/32,
  13.75.90.19/32,
  13.75.90.35/32,
  13.75.90.183/32,
  13.75.91.110/32,
  13.75.92.74/32,
  13.75.93.69/32,
  13.75.94.1/32,
  13.75.94.4/32,
  13.75.94.23/32,
  13.75.94.181/32,
  13.75.95.13/32,
  13.75.113.72/32,
  13.75.114.100/32,
  13.75.121.215/32,
  13.75.125.48/32,
  13.76.97.152/32,
  13.76.100.50/32,
  13.76.208.173/32,
  13.76.247.164/32,
  13.94.24.95/32,
  13.94.27.46/32,
  13.94.33.9/32,
  13.94.46.216/32,
  20.184.1.207/32,
  20.184.1.254/32,
  20.184.3.89/32,
  20.184.3.90/32,
  20.184.3.92/32,
  20.184.3.146/32,
  20.184.4.6/32,
  20.184.4.9/32,
  23.102.236.110/32,
  23.102.237.94/32,
  23.102.238.238/32,
  40.83.121.235/32,
  40.83.122.207/32,
  40.83.122.220/32,
  40.83.124.112/32,
  40.83.124.246/32,
  40.83.126.117/32,
  40.83.127.243/32,
  52.163.92.240/32,
  52.163.94.204/32,
  52.163.118.59/32,
  52.163.123.2/32,
  52.163.211.177/32,
  52.163.215.212/32,
  52.163.219.241/32,
  52.163.226.140/32,
  52.163.229.167/32,
  52.163.241.114/32,
  52.175.23.211/32,
  52.175.25.101/32,
  52.175.27.41/32,
  52.175.28.140/32,
  52.175.31.247/32,
  52.175.33.200/32,
  52.175.39.194/32,
  52.184.26.159/32,
  52.187.37.10/32,
  52.187.67.242/32,
  52.187.72.121/32,
  52.187.78.162/32,
  52.187.122.245/32,
  52.187.124.202/32,
  52.187.128.140/32,
  52.187.134.232/32,
  52.187.164.172/32,
  52.229.170.137/32,
  52.229.170.149/32,
  52.229.171.47/32,
  52.230.65.100/32,
  52.230.124.125/32,
  207.46.233.6/32,
  207.46.236.4/32,
  207.46.236.31/32,
  207.46.236.143/32,
  207.46.237.88/32,
  207.46.237.158/32,
  207.46.237.194/32,
  207.46.237.213/32
end-set
!
prefix-set IDENTITY-EU
  13.94.235.65/32,
  51.136.15.98/32,
  51.136.30.139/32,
  51.137.49.119/32,
  51.137.99.118/32,
  51.144.162.25/32,
  51.144.230.43/32,
  52.138.148.88/32,
  52.138.221.86/32,
  52.169.1.240/32,
  52.169.84.94/32,
  52.169.85.142/32,
  52.178.184.238/32,
  52.178.188.120/32,
  52.178.196.187/32,
  52.232.76.88/32,
  104.45.17.212/32
end-set
!
prefix-set bing-fd-vip
  10.12.103.100/32,
  10.12.103.110/32,
  10.12.103.162/32,
  10.12.103.198/32,
  10.12.103.205/32,
  10.12.103.234/32,
  10.12.103.235/32,
  10.12.103.236/32,
  10.12.103.238/32,
  10.12.103.42/32,
  10.12.103.47/32,
  10.12.103.56/32,
  10.12.103.96/32,
  10.12.56.178/32,
  10.12.56.224/32,
  10.12.56.225/32,
  10.173.152.121/32,
  10.173.152.123/32,
  10.173.152.124/32,
  10.173.152.125/32,
  10.173.152.127/32,
  10.173.152.141/32,
  10.173.152.162/32,
  10.173.152.163/32,
  10.173.152.164/32,
  10.173.152.165/32,
  10.173.152.52/32,
  10.173.152.53/32,
  10.173.154.101/32,
  10.173.154.90/32,
  10.173.155.15/32,
  10.173.155.16/32,
  10.173.155.26/32,
  10.173.155.41/32,
  10.173.155.5/32,
  10.173.156.116/32,
  10.173.156.122/32,
  10.173.156.166/32,
  10.173.156.169/32,
  10.173.157.116/32,
  10.173.157.197/32,
  10.173.157.198/32,
  10.173.157.207/32,
  10.173.157.223/32,
  10.173.157.242/32,
  10.173.157.243/32,
  10.173.157.249/32,
  10.173.157.254/32,
  10.173.157.35/32,
  10.173.157.45/32,
  10.173.157.46/32,
  10.210.32.37/32,
  10.24.205.14/32,
  10.24.205.15/32,
  10.24.205.27/32,
  10.24.205.64/32,
  10.24.205.65/32,
  10.29.171.124/32,
  10.29.89.14/32,
  10.29.89.41/32,
  10.29.89.55/32,
  10.29.89.57/32,
  10.46.252.11/32,
  10.46.252.12/32,
  10.46.253.5/32,
  10.48.160.43/32,
  10.54.142.224/32,
  10.55.209.139/32,
  10.55.209.140/32,
  10.55.209.141/32,
  10.55.209.142/32,
  10.55.209.143/32,
  10.55.209.144/32,
  10.55.209.145/32,
  10.55.209.146/32,
  10.55.209.147/32,
  10.55.209.148/32,
  10.55.209.149/32,
  10.55.209.150/32,
  10.55.209.151/32,
  10.55.209.152/32,
  10.55.209.153/32,
  10.55.209.154/32,
  10.55.209.155/32,
  10.55.209.158/32,
  10.6.215.19/32,
  10.6.215.21/32,
  10.6.215.27/32,
  10.6.215.54/32,
  10.6.215.57/32,
  10.8.66.8/32,
  10.8.67.44/32,
  10.8.67.6/32,
  10.8.74.6/32,
  10.8.74.80/32,
  10.8.74.81/32,
  10.8.75.13/32,
  10.8.75.74/32,
  10.8.75.84/32,
  10.8.75.85/32,
  111.221.29.3/32,
  111.221.30.11/32,
  111.221.30.12/32,
  111.221.30.13/32,
  111.221.30.15/32,
  111.221.30.18/32,
  111.221.30.29/32,
  111.221.30.34/32,
  111.221.30.4/32,
  111.221.30.40/32,
  111.221.30.41/32,
  111.221.30.42/32,
  111.221.30.43/32,
  111.221.30.44/32,
  111.221.30.45/32,
  111.221.30.50/32,
  111.221.30.8/32,
  131.253.12.168/32,
  131.253.12.177/32,
  131.253.12.183/32,
  131.253.12.186/32,
  131.253.12.246/32,
  131.253.12.51/32,
  131.253.12.52/32,
  131.253.12.55/32,
  131.253.13.1/32,
  131.253.13.117/32,
  131.253.13.134/32,
  131.253.13.140/32,
  131.253.13.162/32,
  131.253.13.163/32,
  131.253.13.165/32,
  131.253.13.19/32,
  131.253.13.2/32,
  131.253.13.200/32,
  131.253.13.208/32,
  131.253.13.21/32,
  131.253.13.226/32,
  131.253.13.229/32,
  131.253.13.238/32,
  131.253.13.239/32,
  131.253.13.244/32,
  131.253.13.4/32,
  131.253.13.48/32,
  131.253.13.5/32,
  131.253.13.52/32,
  131.253.13.6/32,
  131.253.13.8/32,
  131.253.14.138/32,
  131.253.14.210/32,
  131.253.15.16/32,
  131.253.15.35/32,
  131.253.21.10/32,
  131.253.21.20/32,
  131.253.32.12/32,
  131.253.32.20/32,
  131.253.32.28/32,
  131.253.32.36/32,
  131.253.32.4/32,
  131.253.32.44/32,
  131.253.32.52/32,
  131.253.32.60/32,
  131.253.32.68/32,
  131.253.32.76/32,
  131.253.33.202/32,
  131.253.34.1/32,
  131.253.40.1/32,
  131.253.40.37/32,
  134.170.220.157/32,
  134.170.220.30/32,
  134.170.220.43/32,
  134.170.221.113/32,
  134.170.221.14/32,
  134.170.221.149/32,
  134.170.221.150/32,
  134.170.221.17/32,
  134.170.221.18/32,
  134.170.221.19/32,
  134.170.221.29/32,
  134.170.221.59/32,
  134.170.221.60/32,
  134.170.221.61/32,
  134.170.221.62/32,
  134.170.221.63/32,
  134.170.221.67/32,
  134.170.222.23/32,
  134.170.222.3/32,
  134.170.222.55/32,
  134.170.222.56/32,
  134.170.222.91/32,
  134.170.223.106/32,
  134.170.223.141/32,
  134.170.223.46/32,
  134.170.223.48/32,
  134.170.223.73/32,
  157.55.37.50/32,
  157.55.55.104/32,
  157.55.55.108/32,
  157.55.55.109/32,
  157.55.55.115/32,
  157.55.55.126/32,
  157.55.55.127/32,
  157.55.55.132/32,
  157.55.55.141/32,
  157.55.55.145/32,
  157.55.55.160/32,
  191.234.6.100/32,
  191.234.6.121/32,
  191.234.6.200/32,
  202.89.233.70/32,
  204.79.197.10/32,
  204.79.197.20/32,
  204.79.197.200/32,
  204.79.197.201/32,
  207.46.194.1/32,
  207.68.174.102/32,
  207.68.174.11/32,
  207.68.174.130/32,
  207.68.174.140/32,
  207.68.174.141/32,
  207.68.174.148/32,
  207.68.174.163/32,
  207.68.174.169/32,
  207.68.174.170/32,
  207.68.174.171/32,
  207.68.174.174/32,
  207.68.174.179/32,
  207.68.174.180/32,
  207.68.174.227/32,
  207.68.174.39/32,
  207.68.174.4/32,
  207.68.174.49/32,
  207.68.174.81/32,
  207.68.174.84/32,
  207.68.174.9/32,
  207.68.174.91/32,
  207.68.174.93/32,
  207.68.174.97/32,
  207.68.174.99/32,
  213.199.169.7/32,
  65.55.105.104/32,
  65.55.105.11/32,
  65.55.105.123/32,
  65.55.105.20/32,
  65.55.105.224/32,
  65.55.105.226/32,
  65.55.105.227/32,
  65.55.105.229/32,
  65.55.105.247/32,
  65.55.105.254/32,
  65.55.105.41/32,
  65.55.105.54/32,
  65.55.105.64/32,
  65.55.106.106/32,
  65.55.106.139/32,
  65.55.106.179/32,
  65.55.106.18/32,
  65.55.106.218/32,
  65.55.106.219/32,
  65.55.106.220/32,
  65.55.106.58/32,
  65.55.107.102/32,
  65.55.107.111/32,
  65.55.107.5/32,
  65.55.107.95/32,
  65.55.250.10/32,
  65.55.250.15/32,
  65.55.250.6/32,
  65.55.250.7/32,
  65.55.250.8/32,
  65.55.4.14/32,
  65.55.4.20/32,
  65.55.60.167/32,
  65.55.60.168/32,
  65.55.60.169/32,
  65.55.60.170/32,
  65.55.60.190/32
end-set
!
prefix-set bmp-station
  10.52.180.177/32
end-set
!
prefix-set ER-LOOPBACKS
  10.0.111.67/32,
  10.0.111.70/32,
  10.24.132.0/22,
  10.63.156.0/22,
  10.63.158.160/27,
  104.44.217.250/32,
  104.44.217.251/32,
  104.44.217.252/32,
  104.44.217.253/32,
  104.44.217.254/32,
  104.44.217.255/32,
  104.45.32.0/27,
  104.45.32.32/27,
  13.105.15.0/25,
  13.106.22.5/32,
  20.184.160.0/27,
  20.184.160.32/27,
  20.189.208.16/30,
  20.189.80.0/27,
  20.190.220.0/27,
  20.190.220.32/27,
  20.37.144.0/27,
  20.37.200.64/32,
  20.37.200.65/32,
  20.39.56.0/27,
  20.39.56.176/28,
  20.39.56.192/28,
  20.39.56.240/30,
  20.39.56.244/30,
  20.39.56.32/27,
  20.39.56.64/27,
  20.42.160.0/28,
  20.42.195.0/30,
  20.42.232.16/29,
  20.44.112.0/30,
  20.44.144.0/29,
  23.97.80.32/27,
  25.149.140.191/32,
  25.156.194.178/32,
  25.77.239.13/32,
  25.81.133.148/32,
  40.119.140.80/28,
  40.119.16.80/30,
  40.119.216.0/27,
  40.119.216.32/27,
  40.119.216.64/27,
  40.125.88.0/27,
  40.125.88.32/27,
  40.125.88.80/30,
  40.74.192.0/27,
  40.74.192.32/27,
  40.80.64.16/30,
  40.89.24.0/27,
  51.104.104.0/27,
  51.104.104.144/28,
  51.104.104.160/30,
  51.104.104.32/27,
  51.105.0.0/27,
  51.105.0.96/30,
  51.107.160.16/30,
  51.107.64.32/30,
  51.136.64.0/29,
  52.126.168.16/30,
  52.142.176.0/27,
  52.162.16.64/30,
  52.172.72.16/30,
  52.228.88.0/27,
  52.228.88.32/27
end-set
!
prefix-set adcenter-vip
  10.2.161.23/32,
  10.28.37.166/32,
  111.221.21.42/32,
  157.55.40.29/32,
  207.46.202.100/32,
  207.46.202.109/32,
  207.46.202.114/32,
  207.46.202.118/32,
  207.46.202.125/32,
  207.46.202.126/32,
  207.46.202.50/32,
  207.46.202.77/32,
  207.46.202.78/32,
  207.46.202.97/32,
  64.4.22.45/32,
  65.52.107.201/32,
  65.52.107.205/32,
  65.54.165.121/32,
  65.54.165.124/32,
  65.54.165.16/32,
  65.54.165.25/32,
  65.54.165.43/32,
  65.54.165.73/32,
  65.54.165.77/32,
  65.54.165.78/32,
  65.54.165.96/32,
  65.54.248.170/32,
  65.54.248.181/32,
  65.54.248.182/32,
  65.54.249.180/32,
  65.54.249.181/32,
  65.55.129.212/32,
  65.55.130.11/32,
  65.55.130.14/32,
  65.55.130.20/32,
  65.55.130.32/32,
  65.55.130.34/32,
  65.55.130.36/32,
  65.55.157.87/32,
  10.2.161.23/32,
  10.28.37.166/32,
  111.221.21.42/32,
  157.55.40.29/32,
  207.46.202.100/32,
  207.46.202.109/32,
  207.46.202.114/32,
  207.46.202.118/32,
  207.46.202.125/32,
  207.46.202.126/32,
  207.46.202.50/32,
  207.46.202.77/32,
  207.46.202.78/32,
  207.46.202.97/32,
  64.4.22.45/32,
  65.52.107.201/32,
  65.52.107.205/32,
  65.54.165.121/32,
  65.54.165.124/32,
  65.54.165.16/32,
  65.54.165.25/32,
  65.54.165.43/32,
  65.54.165.73/32,
  65.54.165.77/32,
  65.54.165.78/32,
  65.54.165.96/32,
  65.54.248.170/32,
  65.54.248.181/32,
  65.54.248.182/32,
  65.54.249.180/32,
  65.54.249.181/32,
  65.55.129.212/32,
  65.55.130.11/32,
  65.55.130.14/32,
  65.55.130.20/32,
  65.55.130.32/32,
  65.55.130.34/32,
  65.55.130.36/32,
  65.55.157.87/32
end-set
!
prefix-set prefix-snmpx
  10.20.6.32/27,
  10.20.6.64/27,
  10.20.6.192/27,
  10.20.17.160/27,
  10.20.17.224/27
end-set
!
prefix-set EDGE-AZURE-V4
  102.133.0.0/16,
  102.37.0.0/16,
  104.208.0.0/14,
  104.214.0.0/15,
  104.40.0.0/14,
  104.44.128.0/18,
  104.45.0.0/16,
  104.46.0.0/16,
  104.47.128.0/17,
  108.140.0.0/14,
  111.221.80.0/20,
  111.221.96.0/20,
  128.203.0.0/16,
  128.24.0.0/16,
  128.251.0.0/16,
  128.85.0.0/16,
  13.64.0.0/11,
  130.107.0.0/16,
  130.131.0.0/16,
  130.213.0.0/16,
  130.33.0.0/16,
  131.145.0.0/16,
  131.163.0.0/16,
  131.189.0.0/16,
  132.164.0.0/16,
  132.196.0.0/16,
  132.220.0.0/16,
  134.112.0.0/16,
  134.138.0.0/16,
  134.149.0.0/16,
  134.170.192.0/21,
  134.33.0.0/16,
  135.116.0.0/16,
  135.119.0.0/16,
  135.13.0.0/16,
  135.130.0.0/16,
  135.149.0.0/16,
  135.171.0.0/16,
  135.18.0.0/16,
  135.220.0.0/16,
  135.222.0.0/16,
  135.224.0.0/15,
  135.232.0.0/14,
  135.236.0.0/15,
  137.116.0.0/15,
  137.135.0.0/16,
  138.91.0.0/16,
  145.132.0.0/15,
  145.190.0.0/15,
  157.55.136.0/21,
  157.55.160.0/19,
  157.55.192.0/19,
  157.55.248.0/21,
  157.55.60.224/27,
  157.55.64.0/19,
  157.55.8.128/27,
  157.55.8.64/26,
  157.56.160.0/21,
  157.56.176.0/21,
  157.56.24.160/27,
  157.56.24.192/27,
  157.56.28.0/22,
  157.56.8.0/21,
  158.158.0.0/16,
  158.23.0.0/16,
  167.105.0.0/16,
  168.61.0.0/16,
  168.62.0.0/15,
  172.128.0.0/11,
  172.160.0.0/11,
  172.192.0.0/13,
  172.200.0.0/13,
  172.208.0.0/13,
  191.232.16.0/20,
  191.232.16.0/21,
  191.232.160.0/19,
  191.232.192.0/18,
  191.232.32.0/19,
  191.232.64.0/20,
  191.233.0.0/16,
  191.234.128.0/17,
  191.234.138.0/23,
  191.234.16.0/20,
  191.234.160.0/19,
  191.234.192.0/18,
  191.234.2.0/23,
  191.234.32.0/19,
  191.235.128.0/17,
  191.235.32.0/19,
  191.235.64.0/18,
  191.236.0.0/14,
  193.149.64.0/19,
  198.180.97.0/24,
  20.0.0.0/11,
  20.136.0.0/17,
  20.140.0.0/15,
  20.150.0.0/15,
  20.153.0.0/16,
  20.157.0.0/16,
  20.158.0.0/15,
  20.160.0.0/12,
  20.184.0.0/13,
  20.192.0.0/10,
  20.33.0.0/16,
  20.36.0.0/14,
  20.39.32.0/19,
  20.40.0.0/13,
  20.47.0.0/17,
  20.48.0.0/12,
  20.64.0.0/10,
  207.46.128.0/19,
  207.46.193.192/28,
  207.46.198.128/25,
  207.46.200.176/28,
  207.46.200.96/27,
  207.46.205.0/24,
  207.46.224.0/20,
  207.46.63.128/25,
  207.46.87.0/24,
  207.46.89.16/28,
  207.46.95.32/27,
  213.199.128.0/20,
  213.199.180.32/28,
  213.199.180.96/27,
  213.199.183.0/24,
  23.100.0.0/15,
  23.102.0.0/16,
  23.96.0.0/14,
  4.144.0.0/12,
  4.160.0.0/12,
  4.176.0.0/12,
  4.192.0.0/12,
  4.208.0.0/12,
  4.224.0.0/12,
  4.240.0.0/12,
  40.112.0.0/12,
  40.64.0.0/15,
  40.66.32.0/19,
  40.67.0.0/16,
  40.68.0.0/14,
  40.72.0.0/13,
  40.80.0.0/13,
  40.88.0.0/15,
  40.90.160.0/19,
  40.90.192.0/18,
  40.91.0.0/16,
  48.192.0.0/12,
  48.208.0.0/13,
  48.216.0.0/14,
  48.220.0.0/15,
  48.222.0.0/15,
  50.85.0.0/16,
  51.103.0.0/16,
  51.104.0.0/15,
  51.107.0.0/16,
  51.11.0.0/16,
  51.116.0.0/16,
  51.12.0.0/15,
  51.120.0.0/16,
  51.124.0.0/16,
  51.132.0.0/16,
  51.136.0.0/15,
  51.138.0.0/16,
  51.140.0.0/14,
  51.144.0.0/15,
  51.18.0.0/16,
  51.4.0.0/15,
  51.53.0.0/16,
  51.54.0.0/15,
  51.56.0.0/14,
  51.8.0.0/16,
  52.106.0.0/16,
  52.122.0.0/16,
  52.126.0.0/15,
  52.136.0.0/13,
  52.146.0.0/15,
  52.148.0.0/14,
  52.152.0.0/13,
  52.160.0.0/11,
  52.224.0.0/11,
  57.150.0.0/15,
  57.152.0.0/14,
  57.156.0.0/14,
  57.160.0.0/12,
  62.10.0.0/15,
  64.236.0.0/16,
  65.52.0.0/19,
  65.52.106.128/25,
  65.52.106.16/28,
  65.52.106.64/26,
  65.52.112.0/20,
  65.52.128.0/17,
  65.52.32.0/21,
  65.52.48.0/20,
  65.52.64.0/20,
  68.154.0.0/15,
  68.210.0.0/15,
  68.218.0.0/15,
  68.220.0.0/15,
  70.152.0.0/15,
  70.156.0.0/15,
  70.37.0.0/17,
  70.37.160.0/21,
  72.144.0.0/14,
  72.152.0.0/14,
  74.144.0.0/12,
  74.160.0.0/14,
  74.176.0.0/14,
  74.224.0.0/14,
  74.234.0.0/15,
  74.240.0.0/14,
  74.248.0.0/15,
  74.7.0.0/16,
  85.210.0.0/15,
  9.141.0.0/16,
  9.160.0.0/16,
  9.163.0.0/16,
  9.169.0.0/16,
  9.205.0.0/16,
  9.223.0.0/16,
  9.234.0.0/15,
  94.245.104.0/21,
  94.245.118.0/25,
  94.245.120.128/27,
  94.245.122.0/24,
  94.245.123.144/28,
  94.245.88.0/21,
  98.64.0.0/14,
  98.70.0.0/15
end-set
!
prefix-set EDGE-AZURE-V6
  2603:1020:200::/46,
  2603:1061:1310::/44,
  2603:1062:c::/48,
  2a01:111:f100::/47
end-set
!
prefix-set ipv6-ssh-list
  2001:506:28::/52,
  2001:506:28:6000::/52
end-set
!
prefix-set overlap-blocks
  10.244.0.0/25,
  10.244.0.128/26,
  131.253.61.64/29,
  131.253.61.80/29,
  131.253.61.96/29,
  65.55.80.8/30
end-set
!
prefix-set IPv4ONEDDOS-CNS
  13.68.31.37/32,
  40.118.251.245/32
end-set
!
prefix-set deny_static_bgp
end-set
!
prefix-set ipv6-tools-list
  2001:506:28::/52,
  2001:506:28:6000::/52
end-set
!
prefix-set ANYCAST-IP-SPACE
  10.20.37.176/28,
  10.64.5.5/32,
  10.64.6.6/32,
  10.64.6.7/32,
  13.107.0.0/16,
  13.107.1.0/24,
  13.107.10.0/23,
  13.107.160.0/23,
  13.107.188.0/23,
  13.107.2.0/24,
  13.107.24.0/23,
  13.107.240.0/23,
  13.107.44.0/23,
  13.107.58.0/23,
  131.253.12.0/22,
  191.234.4.0/24,
  191.234.5.0/24,
  191.234.6.0/24,
  191.234.64.0/24,
  191.234.7.0/24,
  193.221.113.0/24,
  204.79.195.0/24,
  204.79.252.0/24,
  207.46.98.0/24,
  207.68.174.0/24,
  208.76.45.0/24,
  208.76.46.0/24,
  208.84.0.0/24,
  208.84.2.0/24,
  40.90.4.0/23,
  64.4.48.0/23,
  65.55.117.0/24,
  65.55.44.0/24,
  65.55.60.0/24,
  70.37.135.0/24
end-set
!
prefix-set PRIVATE-IP-SPACE
  10.0.0.0/8,
  100.64.0.0/10,
  172.16.0.0/12,
  192.168.0.0/16
end-set
!
prefix-set bing-edge-anycast
  131.253.21.1/32,
  131.253.21.2/32,
  204.79.197.1/32,
  204.79.197.2/32
end-set
!
prefix-set permit_static_bgp
end-set
!
prefix-set provisioning-list
  10.8.184.0/25
end-set
!
prefix-set EXCLUDED-Loopbacks
end-set
!
prefix-set MSFT-WHITE-LIST-V4
  103.25.156.0/22,
  103.255.140.0/22,
  103.36.96.0/22,
  111.221.28.0/24,
  131.107.0.0/16,
  157.54.0.0/16,
  157.57.0.0/16,
  157.59.0.0/16,
  157.60.0.0/16,
  167.220.0.0/16,
  191.234.96.0/19,
  194.69.96.0/19,
  198.105.232.0/22,
  199.242.48.0/22,
  202.89.232.0/21,
  204.182.144.0/24,
  204.255.244.0/23,
  40.125.128.0/17,
  40.126.64.0/18,
  40.72.0.0/15,
  65.53.0.0/16,
  94.245.64.0/18
end-set
!
prefix-set MSFT-WHITE-LIST-V6
  2001:4898:8000::/33,
  2404:f801:8000::/33,
  2a01:110:8000::/33,
  2a01:111:f003::/48,
  2a01:111:f006::/48
end-set
!
prefix-set deny_connected_bgp
end-set
!
prefix-set AZURE-IP-REUSE-SPACE
  10.107.0.0/16,
  10.110.0.0/16,
  10.116.0.0/16,
  10.120.0.0/14,
  10.124.128.0/17,
  10.124.64.0/18,
  10.125.0.0/16,
  10.126.0.0/15,
  10.128.0.0/13,
  10.136.0.0/15,
  10.138.0.0/18,
  10.138.128.0/17,
  10.139.0.0/16,
  10.144.0.0/16,
  10.145.0.0/20,
  10.145.128.0/17,
  10.145.16.0/20,
  10.145.32.0/19,
  10.145.64.0/18,
  10.147.192.0/18,
  10.150.0.0/15,
  10.156.0.0/14,
  10.161.64.0/18,
  10.162.0.0/15,
  10.165.0.0/16,
  10.166.64.0/18,
  10.167.0.0/16,
  10.168.128.0/18,
  10.168.16.0/20,
  10.168.192.0/19,
  10.168.240.0/20,
  10.168.32.0/19,
  10.168.64.0/18,
  10.169.0.0/16,
  10.170.0.0/16,
  10.171.128.0/17,
  10.171.16.0/20,
  10.171.32.0/19,
  10.171.80.0/20,
  10.171.96.0/19,
  10.172.128.0/17,
  10.172.64.0/18,
  10.176.0.0/14,
  10.185.0.0/18,
  10.185.128.0/17,
  10.188.0.0/14,
  10.192.0.0/13,
  10.200.0.0/16,
  10.209.0.0/16,
  10.212.0.0/15,
  10.214.0.0/16,
  10.216.0.0/16,
  10.218.0.0/18,
  10.218.128.0/17,
  10.219.0.0/16,
  10.220.0.0/16,
  10.224.0.0/14,
  10.228.0.0/15,
  10.231.0.0/16,
  10.240.0.0/16,
  10.246.0.0/15,
  10.248.128.0/17,
  10.249.0.0/16,
  10.250.0.0/16,
  10.252.0.0/15,
  10.30.0.0/15,
  10.32.0.0/14,
  10.36.0.0/16,
  10.37.192.0/18,
  10.38.0.0/15,
  10.50.0.0/15,
  10.57.0.0/16,
  10.66.0.0/15,
  10.68.0.0/16,
  10.69.0.0/16,
  10.70.0.0/15,
  10.72.0.0/16,
  10.80.0.0/16,
  10.81.0.0/16,
  10.82.0.0/16,
  10.83.0.0/16,
  10.84.0.0/16,
  10.85.0.0/16,
  10.86.0.0/16,
  10.87.0.0/16,
  10.88.0.0/16,
  10.89.0.0/16,
  10.90.0.0/16,
  10.91.0.0/16,
  10.92.0.0/16,
  10.93.0.0/16,
  10.94.0.0/16,
  10.95.0.0/16,
  100.104.0.0/13,
  100.112.0.0/13,
  100.120.0.0/16,
  100.72.0.0/15,
  100.74.0.0/15,
  100.76.0.0/16,
  100.77.128.0/17,
  100.78.0.0/16,
  100.79.0.0/16,
  100.92.0.0/17
end-set
!
prefix-set CUST-OOB-PREFIX-LIST
  10.1.106.0/29,
  10.2.19.128/25,
  10.2.168.248/29,
  10.5.0.0/25,
  10.13.108.0/26,
  10.13.109.128/25,
  10.13.111.0/27,
  10.18.160.0/20,
  10.18.176.0/20,
  10.18.192.0/20,
  10.18.208.0/20,
  10.20.0.0/18,
  10.20.112.0/21,
  10.20.144.0/22,
  10.20.152.0/21,
  10.20.160.0/19,
  10.20.166.160/30,
  10.20.166.164/30,
  10.20.174.72/30,
  10.20.240.0/25,
  10.41.32.0/25,
  10.41.32.128/29,
  10.41.192.0/18,
  10.48.37.136/32,
  10.49.48.0/20,
  10.49.128.0/20,
  10.61.24.64/26,
  10.61.24.128/25,
  10.61.26.64/28,
  10.61.26.80/28,
  10.61.26.96/29,
  10.61.26.104/29,
  10.61.26.114/31,
  10.61.26.116/31,
  10.61.26.128/25,
  10.61.26.192/26,
  10.61.27.0/25,
  10.61.27.128/25,
  10.61.87.0/24,
  10.61.88.0/23,
  10.61.90.0/23,
  10.61.93.0/24,
  10.61.94.0/25,
  10.61.94.128/25,
  10.62.64.102/32,
  10.62.64.103/32,
  10.62.64.104/29,
  10.64.64.0/19,
  10.103.144.0/20,
  10.103.160.0/20,
  10.103.192.0/20,
  10.117.32.0/22,
  10.235.135.128/29,
  10.235.214.0/24,
  10.244.35.0/24,
  25.66.30.0/25,
  25.66.30.128/29,
  25.67.38.0/24,
  25.67.225.0/25,
  25.68.198.160/27,
  25.68.198.224/27,
  25.68.221.16/28,
  25.68.221.64/27,
  25.68.221.96/27,
  25.68.222.0/24,
  25.68.224.0/22,
  25.68.228.0/22,
  25.68.233.0/25,
  25.68.234.0/23,
  25.68.248.0/21,
  25.71.64.64/26,
  25.71.65.128/26,
  25.71.64.128/25,
  25.71.68.0/24,
  25.71.70.0/23,
  25.71.72.0/21,
  25.71.81.128/25,
  25.71.197.0/25,
  25.71.204.0/25,
  25.72.206.0/24,
  25.72.207.0/25,
  25.72.216.0/21,
  25.72.232.0/21,
  25.73.7.216/29,
  25.73.14.0/24,
  25.73.15.128/25,
  25.73.16.0/21,
  25.73.30.0/25,
  25.73.32.0/21,
  25.73.40.0/21,
  25.73.80.0/24,
  25.73.81.0/25,
  25.73.88.0/21,
  25.73.96.0/21,
  25.73.192.0/18,
  25.74.1.0/24,
  25.74.8.0/21,
  25.74.20.0/24,
  25.74.21.0/25,
  25.74.24.0/21,
  25.74.40.0/21,
  25.74.56.0/21,
  25.74.68.176/29,
  25.74.69.0/24,
  25.74.72.0/21,
  25.74.90.128/25,
  25.74.91.128/25,
  25.74.96.0/21,
  25.74.141.0/24,
  25.74.186.128/25,
  25.74.250.0/24,
  25.75.72.0/21,
  25.75.80.0/24,
  25.75.128.0/28,
  25.75.130.0/24,
  25.75.131.0/24,
  25.76.42.0/25,
  25.76.132.0/24,
  25.76.133.128/25,
  25.76.136.0/21,
  25.78.154.128/25,
  25.78.155.0/24,
  25.78.160.0/21,
  25.78.168.0/21,
  25.78.184.0/21,
  25.80.64.0/24,
  25.80.139.0/24,
  25.80.140.0/25,
  25.80.144.0/21,
  25.80.156.128/25,
  25.80.192.0/21,
  25.80.216.0/21,
  25.81.0.0/24,
  25.81.64.0/21,
  25.81.72.0/24,
  25.81.73.24/29,
  25.81.88.0/21,
  25.81.186.0/25,
  25.82.216.128/25,
  25.82.240.0/21,
  25.83.45.0/24,
  25.83.46.0/25,
  25.83.96.0/21,
  25.83.144.128/25,
  25.83.148.0/23,
  25.84.80.0/21,
  25.85.90.0/25,
  25.85.96.0/21,
  25.85.201.0/24,
  25.85.202.128/25,
  25.85.203.0/25,
  25.85.208.0/21,
  25.85.216.0/21,
  25.85.240.0/25,
  25.85.240.144/29,
  25.86.32.0/21,
  25.86.40.0/24,
  25.86.42.128/25,
  25.86.43.128/25,
  25.86.48.0/21,
  25.86.56.0/21,
  25.86.134.128/25,
  25.86.160.0/21,
  25.87.22.0/25,
  25.87.22.128/25,
  25.87.40.0/21,
  25.87.48.0/23,
  25.87.56.0/21,
  25.87.129.0/25,
  25.87.136.0/21,
  25.87.160.0/21,
  25.87.168.0/24,
  25.87.172.0/24,
  25.87.176.0/21,
  25.87.192.0/21,
  25.87.200.0/24,
  25.87.201.224/29,
  25.87.204.128/25,
  25.87.205.128/25,
  25.87.208.0/21,
  25.87.224.0/21,
  25.87.232.0/24,
  25.87.233.224/29,
  25.87.236.128/25,
  25.87.237.128/25,
  25.87.240.0/21,
  25.88.128.0/21,
  25.89.0.0/21,
  25.89.9.0/25,
  25.89.12.0/22,
  25.89.16.0/22,
  25.89.32.0/25,
  25.89.32.128/29,
  25.89.48.0/25,
  25.89.48.128/29,
  25.89.64.0/25,
  25.89.64.128/29,
  25.89.80.0/25,
  25.89.80.128/29,
  25.89.112.0/21,
  25.89.192.0/21,
  25.89.216.0/23,
  25.89.224.0/21,
  25.89.218.0/25,
  25.90.33.0/24,
  25.90.35.0/25,
  25.90.40.0/21,
  25.90.48.0/21,
  25.90.128.0/21,
  25.90.138.0/25,
  25.91.0.0/21,
  25.91.46.0/29,
  25.91.46.128/25,
  25.92.64.0/21,
  25.92.72.0/21,
  25.93.193.0/24,
  25.93.194.0/23,
  25.93.196.0/25,
  25.93.200.0/21,
  25.93.208.0/21,
  25.93.224.0/20,
  25.93.240.0/23,
  25.96.128.0/21,
  25.104.80.0/25,
  25.122.192.0/23,
  25.122.194.128/25,
  25.122.208.0/20,
  25.125.13.0/24,
  25.125.33.0/24,
  25.125.36.0/25,
  25.125.36.128/25,
  25.125.37.0/25,
  25.125.40.0/21,
  25.125.48.0/24,
  25.125.56.0/24,
  25.125.65.0/25,
  25.125.68.0/25,
  25.125.72.128/25,
  25.125.80.0/24,
  25.148.32.0/22,
  25.148.36.0/22,
  25.148.49.0/25,
  25.148.128.0/17,
  25.149.0.0/16,
  25.156.128.0/17,
  25.157.10.0/25,
  25.158.10.0/25,
  25.184.0.0/17,
  25.184.128.0/17,
  25.184.240.0/20,
  25.185.0.0/17,
  25.186.56.0/21,
  25.186.64.0/21,
  25.186.80.128/25,
  25.186.84.0/22,
  25.186.136.0/21,
  25.186.144.0/21,
  25.187.128.0/22,
  25.187.132.0/22,
  25.187.136.0/22,
  25.187.140.0/22,
  104.44.208.144/28,
  191.232.2.0/29,
  207.46.32.126/32,
  207.46.32.150/32,
  207.46.32.124/32,
  207.46.32.125/32,
  208.70.86.154/32,
  191.232.6.0/27,
  191.232.6.32/27,
  191.232.6.64/27,
  191.232.6.96/27,
  191.232.6.128/27,
  191.232.6.160/27,
  191.232.6.192/27,
  191.232.6.224/27,
  191.232.7.0/27,
  191.232.7.32/27,
  191.232.7.64/27,
  191.232.7.96/27,
  191.232.7.128/27,
  191.232.7.160/27,
  191.232.7.192/27,
  191.232.7.224/27,
  191.232.4.0/27,
  191.232.4.32/27,
  198.18.0.0/15
end-set
!
prefix-set IPv4ONEDDOS-A10-MGMT
  10.104.16.167/32,
  10.104.16.39/32,
  10.104.20.145/32,
  10.104.20.17/32,
  10.17.177.250/31,
  10.232.203.143/32,
  10.232.203.144/32,
  10.5.199.11/32,
  10.5.199.13/32,
  10.5.199.14/31,
  10.5.209.75/32,
  10.5.209.76/31,
  10.5.209.79/32,
  10.5.209.82/32,
  10.5.232.66/31,
  25.122.211.16/31,
  25.122.215.144/31,
  25.125.42.144/31,
  25.125.46.144/31,
  25.125.72.18/32,
  25.148.129.222/32,
  25.148.129.94/32,
  25.150.136.11/32,
  25.150.136.75/32,
  25.150.14.73/32,
  25.150.14.9/32,
  25.150.16.7/32,
  25.150.16.71/32,
  25.150.176.17/32,
  25.150.176.81/32,
  25.150.200.17/32,
  25.150.200.81/32,
  25.150.232.73/32,
  25.150.232.9/32,
  25.150.240.73/32,
  25.150.240.9/32,
  25.150.6.135/32,
  25.150.6.199/32,
  25.150.64.156/32,
  25.150.64.220/32,
  25.150.64.28/31,
  25.150.64.92/31,
  25.159.0.5/32,
  25.159.0.69/32,
  25.159.56.5/32,
  25.159.56.69/32,
  25.159.80.5/32,
  25.159.80.69/32,
  25.159.81.133/32,
  25.159.81.197/32,
  25.184.112.91/32,
  25.184.113.219/32,
  25.184.113.93/32,
  25.184.114.221/32,
  25.184.192.78/32,
  25.184.193.78/32,
  25.184.194.78/32,
  25.184.195.78/32,
  25.184.240.14/32,
  25.184.240.206/32,
  25.184.242.14/32,
  25.184.242.206/32,
  25.186.16.5/32,
  25.186.16.69/32,
  25.186.24.5/32,
  25.186.24.69/32,
  25.186.57.150/31,
  25.186.57.152/31,
  25.186.62.144/30,
  25.186.66.16/30,
  25.186.68.149/32,
  25.186.68.150/31,
  25.186.68.152/32,
  25.254.133.7/32,
  25.254.133.71/32,
  25.254.64.145/32,
  25.254.64.17/32,
  25.254.66.148/32,
  25.254.66.20/32,
  25.254.68.157/32,
  25.254.68.160/32,
  25.254.68.31/32,
  25.254.68.37/32,
  25.254.76.141/32,
  25.254.77.13/32,
  25.68.226.135/32,
  25.68.226.140/32,
  25.68.230.135/32,
  25.68.230.140/32,
  25.72.217.16/31,
  25.72.220.16/31,
  25.73.19.16/31,
  25.73.21.144/31,
  25.73.240.142/32,
  25.73.241.206/32,
  25.73.242.206/32,
  25.73.244.14/32,
  25.73.90.16/31,
  25.73.92.144/31,
  25.74.11.144/31,
  25.74.74.144/31,
  25.74.76.16/31,
  25.74.9.27/32,
  25.74.9.28/32,
  25.75.72.14/32,
  25.75.72.206/32,
  25.75.73.142/32,
  25.75.74.78/32,
  25.76.138.144/31,
  25.76.140.25/32,
  25.76.140.26/32,
  25.81.65.14/32,
  25.81.67.142/32,
  25.81.69.142/32,
  25.81.72.14/32,
  25.85.152.22/32,
  25.85.152.26/32,
  25.85.209.135/32,
  25.85.209.136/32,
  25.85.212.7/32,
  25.85.212.8/32,
  25.85.234.135/32,
  25.85.234.140/32,
  25.85.238.133/32,
  25.85.238.138/32,
  25.86.32.12/32,
  25.86.32.18/32,
  25.86.34.14/32,
  25.86.34.16/32,
  25.87.100.135/32,
  25.87.100.138/32,
  25.87.160.11/32,
  25.87.160.7/32,
  25.87.192.25/32,
  25.87.192.27/32,
  25.87.224.25/32,
  25.87.224.27/32,
  25.89.114.137/32,
  25.89.114.140/32,
  25.90.40.5/32,
  25.90.40.9/32,
  25.92.209.137/32,
  25.92.209.140/32,
  25.92.212.137/32,
  25.92.212.142/32,
  25.92.224.14/32,
  25.92.224.18/32,
  25.93.200.5/32,
  25.93.200.9/32,
  25.93.235.139/32,
  25.93.235.203/32,
  25.93.236.11/32,
  25.93.236.139/32,
  25.93.236.203/32,
  25.93.236.75/32,
  25.99.208.14/32,
  25.99.208.18/32
end-set
!
prefix-set IPv4ONEDDOS-HYPERNET
  10.1.140.128/28,
  10.1.152.16/28,
  10.1.67.224/28,
  10.14.19.128/28,
  10.17.104.80/28,
  10.17.84.0/28,
  10.2.185.64/28,
  10.201.136.128/28,
  10.207.146.0/28,
  10.211.236.128/28,
  10.24.140.0/27,
  10.25.169.16/28,
  10.25.233.32/28,
  10.26.207.0/28,
  10.26.238.0/28,
  10.26.240.192/28,
  10.26.72.64/28,
  10.40.132.240/28,
  10.40.190.128/28,
  10.40.236.176/28,
  10.5.36.0/28,
  10.63.13.32/28,
  100.127.25.48/28,
  100.127.29.48/28,
  100.127.33.48/28,
  100.127.37.48/28,
  100.127.52.224/28,
  100.127.55.160/28,
  100.127.56.96/28,
  100.127.58.16/28,
  100.127.60.64/28
end-set
!
prefix-set IPV6-ANYCAST-IP-SPACE
end-set
!
prefix-set prefix-windows-update
  13.107.12.54/32,
  13.107.246.11/32,
  13.107.253.10/32,
  13.107.253.254/32,
  13.107.4.50/32,
  13.107.4.54/32,
  131.253.33.50/32,
  40.77.226.181/32,
  40.77.226.72/32,
  40.77.228.30/32,
  40.77.232.59/32
end-set
!
prefix-set GLOBAL-EGRESS-IP-SPACE
  102.133.0.0/16,
  102.37.0.0/16,
  103.25.156.0/22,
  103.255.140.0/22,
  103.36.96.0/22,
  104.146.0.0/19,
  104.146.128.0/17,
  104.208.0.0/13,
  104.40.0.0/13,
  108.140.0.0/14,
  111.221.16.0/20,
  111.221.64.0/18,
  128.94.0.0/16,
  13.104.0.0/14,
  13.64.0.0/11,
  131.107.0.0/16,
  131.253.1.0/24,
  131.253.12.0/22,
  131.253.128.0/17,
  131.253.16.0/23,
  131.253.18.0/24,
  131.253.21.0/24,
  131.253.22.0/23,
  131.253.24.0/21,
  131.253.3.0/24,
  131.253.32.0/20,
  131.253.5.0/24,
  131.253.6.0/24,
  131.253.61.0/24,
  131.253.62.0/23,
  131.253.64.0/18,
  131.253.8.0/24,
  132.245.0.0/16,
  134.170.0.0/16,
  135.149.0.0/16,
  137.116.0.0/15,
  137.135.0.0/16,
  138.239.0.0/16,
  138.91.0.0/16,
  143.64.0.0/16,
  147.145.0.0/16,
  147.243.0.0/16,
  148.7.0.0/16,
  150.171.0.0/16,
  155.62.0.0/16,
  157.54.0.0/15,
  157.56.0.0/14,
  157.60.0.0/16,
  158.158.0.0/16,
  167.105.0.0/16,
  167.220.0.0/16,
  168.61.0.0/16,
  168.62.0.0/15,
  169.138.0.0/16,
  170.165.0.0/16,
  191.232.0.0/13,
  192.100.102.0/24,
  192.100.103.0/24,
  192.100.104.0/21,
  192.100.112.0/21,
  192.100.120.0/21,
  192.100.128.0/22,
  192.197.157.0/24,
  192.48.225.0/24,
  192.84.160.0/23,
  192.92.196.0/24,
  193.149.64.0/19,
  193.221.113.0/24,
  194.41.16.0/20,
  194.69.96.0/19,
  195.134.224.0/19,
  198.105.232.0/22,
  198.180.95.0/24,
  198.180.97.0/24,
  198.200.130.0/24,
  198.206.164.0/24,
  198.49.8.0/24,
  199.103.122.0/24,
  199.103.90.0/23,
  199.2.137.0/24,
  199.242.32.0/20,
  199.242.48.0/21,
  199.30.16.0/20,
  199.60.28.0/24,
  199.74.210.0/24,
  20.0.0.0/11,
  20.135.0.0/16,
  20.136.0.0/16,
  20.140.0.0/15,
  20.143.0.0/16,
  20.150.0.0/15,
  20.152.0.0/16,
  20.153.0.0/16,
  20.157.0.0/16,
  20.158.0.0/15,
  20.160.0.0/12,
  20.184.0.0/13,
  20.192.0.0/10,
  20.33.0.0/16,
  20.34.0.0/15,
  20.36.0.0/14,
  20.40.0.0/13,
  20.48.0.0/12,
  20.64.0.0/10,
  202.89.224.0/20,
  204.13.120.0/21,
  204.14.180.0/22,
  204.152.140.0/23,
  204.176.46.0/24,
  204.182.144.0/24,
  204.231.192.0/24,
  204.231.194.0/23,
  204.231.196.0/22,
  204.231.200.0/21,
  204.231.208.0/20,
  204.231.236.0/24,
  204.255.244.0/23,
  204.79.135.0/24,
  204.79.179.0/24,
  204.79.180.0/23,
  204.79.188.0/24,
  204.79.195.0/24,
  204.79.196.0/23,
  204.79.197.0/24,
  204.79.252.0/24,
  204.95.96.0/20,
  205.174.224.0/20,
  206.138.168.0/21,
  206.191.224.0/19,
  207.46.0.0/16,
  207.68.128.0/18,
  208.68.136.0/21,
  208.76.44.0/22,
  208.84.0.0/21,
  209.1.15.0/24,
  209.185.128.0/22,
  209.240.192.0/19,
  213.199.128.0/18,
  216.220.208.0/20,
  216.32.180.0/22,
  216.32.240.0/22,
  216.33.240.0/22,
  216.34.51.0/24,
  23.100.0.0/15,
  23.102.0.0/16,
  23.103.128.0/17,
  23.103.64.0/18,
  23.96.0.0/14,
  4.128.0.0/12,
  4.144.0.0/12,
  4.160.0.0/12,
  4.176.0.0/12,
  4.192.0.0/12,
  4.208.0.0/12,
  4.224.0.0/12,
  4.240.0.0/12,
  40.64.0.0/10,
  51.10.0.0/15,
  51.103.0.0/16,
  51.104.0.0/15,
  51.107.0.0/16,
  51.116.0.0/16,
  51.12.0.0/15,
  51.120.0.0/16,
  51.124.0.0/16,
  51.132.0.0/16,
  51.136.0.0/15,
  51.138.0.0/16,
  51.140.0.0/14,
  51.144.0.0/15,
  51.51.0.0/16,
  51.53.0.0/16,
  52.112.0.0/14,
  52.120.0.0/14,
  52.125.0.0/16,
  52.126.0.0/15,
  52.136.0.0/13,
  52.146.0.0/15,
  52.148.0.0/14,
  52.152.0.0/13,
  52.160.0.0/11,
  52.224.0.0/11,
  52.96.0.0/12,
  64.4.0.0/18,
  64.41.193.0/24,
  65.52.0.0/14,
  66.119.144.0/20,
  68.154.0.0/15,
  68.18.0.0/15,
  68.210.0.0/15,
  68.218.0.0/15,
  68.220.0.0/15,
  70.152.0.0/15,
  70.156.0.0/15,
  70.37.0.0/17,
  70.37.128.0/18,
  72.144.0.0/14,
  72.152.0.0/14,
  74.160.0.0/14,
  74.176.0.0/14,
  74.224.0.0/14,
  74.234.0.0/15,
  74.240.0.0/14,
  74.248.0.0/15,
  91.190.216.0/21,
  94.245.64.0/18,
  98.64.0.0/14,
  98.70.0.0/15,
  30.130.0.0/16
end-set
!
prefix-set ipv6_permit_static_bgp
end-set
!
prefix-set FABRIC-AGGREGATE-ROUTES
  10.4.0.0/16,
  25.106.234.0/24,
  155.155.155.0/24
end-set
!
prefix-set IPV4-EXCLUDED-Loopbacks
  10.17.90.133,
  10.30.159.130
end-set
!
prefix-set IPV6-EXCLUDED-Loopbacks
end-set
!
prefix-set TRANSITEDGE_LOOPBACK-V4
  10.78.19.0/25 ge 25,
  10.78.20.0/23 ge 23
end-set
!
prefix-set TRANSITEDGE_LOOPBACK-V6
end-set
!
prefix-set TRANSITEDGE_PREFIXES-V4
  10.20.6.16/32 ge 32,
  10.52.180.177/32 ge 32,
  10.52.180.179/32 ge 32,
  20.37.192.0/19 ge 19,
  20.39.32.0/19 ge 19,
  20.47.0.0/17 ge 17,
  20.157.0.0/16 ge 16,
  52.136.128.0/18 ge 18,
  52.140.248.0/23 ge 23,
  52.155.128.0/17 ge 17,
  52.240.128.0/17 ge 17,
  52.246.0.0/17 ge 17,
  145.190.0.0/16 ge 16
end-set
!
prefix-set TRANSITEDGE_PREFIXES-V6
  ::/0 le 128
end-set
!
prefix-set IPV6-GLOBAL-EGRESS-SPACE
  2001:4898::/32,
  2001:489a:2000::/35,
  2001:489a:4000::/35,
  2001:df0:7::/48,
  2001:df0:d7::/48,
  2001:df0:d8::/48,
  2001:df0:d9::/48,
  2404:f800::/32,
  2404:f801::/32,
  2603:1000::/25,
  2620:0:30::/45,
  2620:1ec::/36,
  2801:80:1d0::/48,
  2a01:110::/32,
  2a01:111::/32
end-set
!
prefix-set IPv4ONEDDOS-A10-Loopback
  40.66.64.0/24
end-set
!
prefix-set MICROSOFT-PRIVATE-ROUTES
  104.146.0.0/19,
  104.146.32.0/19,
  104.146.64.0/18,
  104.147.0.0/16,
  129.75.0.0/16,
  13.96.0.0/13,
  134.177.0.0/16,
  138.196.0.0/16,
  141.251.0.0/16,
  146.147.0.0/16,
  191.232.4.0/26,
  191.232.6.0/23,
  191.235.10.0/24,
  191.235.13.0/24,
  191.235.14.0/24,
  191.235.9.0/24,
  192.100.102.0/24,
  192.100.103.0/24,
  192.32.0.0/16,
  198.18.0.0/15,
  20.128.0.0/16,
  20.130.0.0/16,
  20.144.0.0/14,
  20.176.0.0/14,
  20.180.0.0/14,
  20.35.252.0/22,
  21.0.0.0/8,
  22.0.0.0/8,
  23.103.0.0/18,
  25.0.0.0/12,
  25.128.0.0/14,
  25.142.0.0/15,
  25.144.0.0/12,
  25.160.0.0/11,
  25.192.0.0/11,
  25.224.0.0/12,
  25.244.0.0/14,
  25.248.0.0/13,
  25.28.0.0/14,
  25.33.80.0/20,
  25.41.3.0/25,
  25.64.0.0/10,
  40.108.0.0/19,
  40.108.32.0/19,
  40.108.64.0/18,
  40.109.0.0/16,
  40.66.128.0/17,
  52.132.0.0/14,
  52.145.0.0/16,
  100.88.4.0/22,
  30.130.0.0/16,
  61.100.2.0/24
end-set
!
prefix-set permit_static_bgp_anchor
end-set
!
prefix-set IPv4ONEDDOS-SFLOW-SFABRIC
  104.211.190.172/32,
  104.215.63.59/32,
  104.41.29.28/32,
  13.71.122.103/32,
  13.74.153.36/32,
  13.82.147.240/32,
  13.84.189.46/32,
  137.135.46.202/32,
  23.96.55.92/32,
  23.98.146.36/32,
  40.117.239.185/32,
  40.123.41.162/32,
  40.126.242.195/32,
  40.86.188.39/32,
  51.140.125.246/32,
  51.141.54.244/32,
  52.161.20.215/32,
  52.162.167.138/32,
  52.163.240.40/32,
  52.166.115.41/32,
  52.173.240.151/32,
  52.180.179.193/32,
  52.229.166.182/32,
  52.231.206.203/32,
  52.231.37.38/32,
  52.233.44.98/32,
  52.235.42.73/32,
  52.246.189.70/32,
  52.250.120.103/32
end-set
!
prefix-set CUST-PREFIX-DACIS-INTERNAL
  10.2.146.0/25,
  10.2.146.128/25,
  10.3.129.0/25,
  10.10.0.0/16,
  10.20.76.0/22,
  10.20.88.0/22,
  10.63.110.0/23,
  10.63.112.0/22,
  10.74.12.0/24,
  40.69.224.0/19,
  40.87.240.0/20,
  40.90.1.128/25,
  40.127.112.0/20,
  104.44.5.128/25,
  104.44.107.128/25,
  104.44.217.128/25,
  104.47.192.0/21,
  104.209.96.0/19,
  104.210.224.0/19,
  167.220.0.0/23,
  167.220.2.0/24,
  207.46.32.52/32,
  207.46.32.146/32,
  207.46.32.172/32,
  207.46.160.0/25,
  207.46.160.128/26
end-set
!
prefix-set ipv6-prefix-windows-update
  2620:1ec:29::10/128,
  2620:1ec:29::254/128,
  2620:1ec:5::54/128,
  2620:1ec:bdf::11/128,
  2a01:111:2003::50/128,
  2a01:111:2003::54/128,
  2a01:111:202c::50/128
end-set
!
prefix-set IPv4ONEDDOS-HYPERNET-Public
  104.211.164.180/32,
  104.211.228.226/32,
  104.211.96.167/32,
  104.40.157.173/32,
  104.41.45.88/32,
  13.66.20.221/32,
  13.71.184.224/32,
  13.73.3.24/32,
  13.75.93.117/32,
  13.76.44.85/32,
  157.55.164.101/32,
  191.234.163.235/32,
  191.237.45.219/32,
  40.112.184.146/32,
  40.114.51.208/32,
  40.122.70.219/32,
  40.126.235.232/32,
  40.127.71.63/32,
  40.74.134.37/32,
  40.86.220.202/32,
  40.87.156.3/32,
  40.89.135.114/32,
  51.140.25.83/32,
  51.141.116.39/32,
  52.161.13.91/32,
  52.161.17.84/32,
  52.167.6.141/32,
  52.180.176.248/32,
  52.183.10.153/32,
  52.231.152.167/32,
  52.231.67.113/32
end-set
!
prefix-set IPV6-FABRIC-AGGREGATE-ROUTES
  2a01:111:4004::/56
end-set
!
prefix-set IPV6-ANYCAST-IP-SPACE-LP-HIGH
  2620:0:30::/45,
  2620:0:30::/64,
  2620:0:30::53/128,
  2620:0:32::/64,
  2620:0:32::53/128,
  2620:0:34::/64,
  2620:0:34::53/128,
  2620:0:37::/64,
  2620:0:37::53/128,
  2620:1ec::/36
end-set
!
prefix-set IPV6-MICROSOFT-PRIVATE-ROUTES
  2001:489a::/35,
  2001:506:28::/48,
  2603:1080::/25,
  2a01:111::/36,
  2a01:111:e000::/36,
  3013:11::/64
end-set
!
prefix-set ipv6_permit_static_bgp_anchor
end-set
!
prefix-set IPV6-CUST-PREFIX-DACIS-INTERNAL
  2603:10e1:101::/48
end-set
!
prefix-set permit_connected_bgp_exceptions
  10.12.97.128/26,
  10.20.81.64/26,
  207.46.33.32/28,
  66.119.150.0/26,
  66.119.150.64/26
end-set
!
prefix-set IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
  2404:f800::/32,
  2a01:110::/32,
  2a01:111::/32,
  2001:4898::/32,
  2620:0:30::/45,
  2001:df0:7::/48,
  2801:80:1d0::/48,
  2404:f801::/32,
  2001:df0:d7::/48,
  2603:1000::/25,
  2620:1ec::/36,
  2001:489a:2000::/35,
  2001:489a:4000::/35,
  2001:df0:d8::/48,
  2001:df0:d9::/48
end-set
!
as-path-set LOCAL
  ios-regex '^$'
end-set
!
as-path-set NICK1
  passes-through '198678'
end-set
!
as-path-set AS8068
  ios-regex '^8068$'
end-set
!
as-path-set AS8072
  ios-regex '^8072$'
end-set
!
as-path-set AS12076
  passes-through '12076'
end-set
!
as-path-set AS64915
  ios-regex '^64915_'
end-set
!
as-path-set as-path-50
  ##check, not used
  ios-regex '^()|3598.*|6469+|23468+|20046+|8070+|40066+|8071.*|^8068+|8069+|8075+|8073+|6584+|198015+|198097+|62540'
end-set
!
as-path-set as-path-75
  length ge 75
end-set
!
as-path-set FROM-AS8074
  neighbor-is '8074'
end-set
!
as-path-set FROM-AS8075
  neighbor-is '8075'
end-set
!
as-path-set as-path-160
  ios-regex '(^$|^3598|^5761|^6469|^8068$|^8068 20046.*|^6584 .*|^8070|^8071$|^8072$|^8073 .*|^8074|^12076 .*|^8068 12076 .*|^20046|^23468|^40066|^198097$|^198015$|.* 64512-65535 .*)'
end-set
!
as-path-set as-path-12076
  ios-regex '^12076$|^12076 65515$'
end-set
!
as-path-set ASPATH-PRIVATE
  passes-through '[64512..65534]',
  passes-through '[4200000000..4294967294]'
end-set
!
as-path-set ASPATH-RESERVED
end-set
!
as-path-set CONTAINS-AS8075
  passes-through '8075'
end-set
!
as-path-set ASPATH-MICROSOFT
  ios-regex '^$',
  ios-regex '^(3598_)+',
  ios-regex '^(5761_)+',
  ios-regex '^(6584_)+',
  ios-regex '^(8068_)+',
  ios-regex '^(8069_)+',
  ios-regex '^(8070_)+',
  ios-regex '^(8075_)+',
  ios-regex '^(8812_)+',
  ios-regex '^(23468_)+',
  ios-regex '^(62540_)+'
end-set
!
as-path-set ASPATH-DOCUMENTATION
  passes-through '[64496..64511]',
  passes-through '[65536..65551]'
end-set
!
community-set all
end-set
!
community-set ANCHOR
  8075:34000,
  8075:30000,
  8075:30100,
  8075:41050
end-set
!
community-set COMM_ALL
  ios-regex '8075:*'
end-set
!
community-set COMM_NOPEER
  65535:65284
end-set
!
community-set COMM_PTNR_ER
  12076:12076
end-set
!
community-set no-advertise
  no-advertise
end-set
!
community-set COMM_CUST_ALL
  ios-regex '8075:[0-9][0-9][0-9][0-9]'
end-set
!
community-set COMM_NON_CUST
  ios-regex '8075:[1-9]$',
  ios-regex '8075:[1-9][0-9]$',
  ios-regex '8075:[1-9][0-9][0-9][0-9]$',
  ios-regex '8075:[1][0][0-3,5-9][0-9][0-9]$',
  ios-regex '8075:[1][0][4][0][2-9]$',
  ios-regex '8075:[1][0][4][1-9][0-9]$',
  ios-regex '8075:[2-5][0-9][0-9][0-9][0-9]$',
  ios-regex '8075:[6][0-4][0-9][0-9][0-9]$',
  ios-regex '8075:[6][5][0-4][0-9][0-9]$',
  ios-regex '8075:[6][5][5][0-2][0-9]$',
  ios-regex '8075:[6][5][5][3][0-5]$',
  ios-regex '8075:[1][1-9][0-9][0-9][0-9]$'
end-set
!
community-set COMM_OVERLOAD
  65535:0
end-set
!
community-set COMM_NO_EXPORT
  no-export
end-set
!
community-set DCFX_LEAK_COMM
  8075:10400
end-set
!
community-set LEAK_SPECIFICS
  8075:10000,
  8075:34000,
  8075:41240
end-set
!
community-set COMM_ROUTE_RTBH
  8075:666
end-set
!
community-set COMM_CUST_DEPREF
  8075:390
end-set
!
community-set COMM_LOCALREGION
  8075:53002
end-set
!
community-set COMM_CUST_LEAK_AR
  8075:210
end-set
!
community-set COMM_CUST_PARTNER
  8075:341
end-set
!
community-set COMM_FUNC_LEAK_AR
  8075:10100
end-set
!
community-set COMM_NO_ADVERTISE
  no-advertise
end-set
!
community-set COMM_ROUTE_PUBLIC
  ios-regex '8075:1[1-3]'
end-set
!
community-set COMM_CUST_LEAK_CIS
  8075:213
end-set
!
community-set COMM_CUST_LEAK_XCG
  8075:214
end-set
!
community-set COMM_FUNC_LEAK_CIS
  8075:10600
end-set
!
community-set COMM_FUNC_LEAK_XCG
  8075:10700
end-set
!
community-set COMM_ROUTE_PARTNER
  8075:41
end-set
!
community-set COMM_ROUTE_PRIVATE
  ios-regex '8075:2[1-3]'
end-set
!
community-set COMM_CUST_LEAK_SRCH
  8075:212
end-set
!
community-set COMM_CUST_LEAK_XCGD
  8075:215
end-set
!
community-set COMM_CUST_NO_ACCEPT
  8075:391
end-set
!
community-set COMM_CUST_NO_EXPORT
  8075:940
end-set
!
community-set COMM_FUNC_ITE_BYOIP
  8075:700
end-set
!
community-set COMM_FUNC_LEAK_MSIT
  8075:10300
end-set
!
community-set COMM_FUNC_LEAK_SRCH
  8075:10500
end-set
!
community-set COMM_FUNC_LEAK_XCGD
  8075:10751
end-set
!
community-set COMM_ROUTE_DDOS_IRR
  8075:668
end-set
!
community-set COMM_ROUTE_FREEPEER
  ios-regex '8075:3[3-5]'
end-set
!
community-set COMM_ROUTE_PAIDPEER
  ios-regex '8075:3[1-2]'
end-set
!
community-set COMM_ROUTE_PEER_ALL
  ios-regex '8075:3[0-9]'
end-set
!
community-set SUBREGIONAL-ROUTING
  ios-regex '8075:51[0-9][0-9][0-9]'
end-set
!
community-set SWAN_LEAK_COMMUNITY
  8074:10401
end-set
!
community-set COMM_FUNC_DONTADV_AF
  8075:50001
end-set
!
community-set COMM_FUNC_DONTADV_AN
  8075:50004
end-set
!
community-set COMM_FUNC_DONTADV_AS
  8075:50003
end-set
!
community-set COMM_FUNC_DONTADV_EU
  8075:50005
end-set
!
community-set COMM_FUNC_DONTADV_NA
  8075:50007
end-set
!
community-set COMM_FUNC_DONTADV_OC
  8075:50002
end-set
!
community-set COMM_FUNC_DONTADV_SA
  8075:50006
end-set
!
community-set COMM_FUNC_LEAK_DACIS
  8075:10450
end-set
!
community-set COMM_FUNC_NOPEERS_AF
  8075:52001
end-set
!
community-set COMM_FUNC_NOPEERS_AN
  8075:52004
end-set
!
community-set COMM_FUNC_NOPEERS_AS
  8075:52003
end-set
!
community-set COMM_FUNC_NOPEERS_EU
  8075:52005
end-set
!
community-set COMM_FUNC_NOPEERS_NA
  8075:52007
end-set
!
community-set COMM_FUNC_NOPEERS_OC
  8075:52002
end-set
!
community-set COMM_FUNC_NOPEERS_SA
  8075:52006
end-set
!
community-set COMM_ORIGIN_LOCATION
  8075:3512,
  8075:4124,
  8075:2840,
  8075:1007
end-set
!
community-set COMM_ROUTE_DDOS_SITE
  8075:669
end-set
!
community-set GLOBAL-SEND-TO-PEERS
  8075:30000
end-set
!
community-set COMM_CUST_DONTADV_ALL
  8075:900
end-set
!
community-set COMM_CUST_LEAK_FABRIC
  8075:211
end-set
!
community-set COMM_CUST_NOPEERS_ALL
  8075:920
end-set
!
community-set COMM_FUNC_DONTADV_ALL
  8075:50000
end-set
!
community-set COMM_FUNC_LEAK_FABRIC
  8075:10400
end-set
!
community-set COMM_FUNC_NOPEERS_ALL
  8075:52000
end-set
!
community-set COMM_FUNC_PREMIUM_IRR
  8075:660,
  8075:4124
end-set
!
community-set COMM_ROUTE_PUBLIC_ALL
  ios-regex '8075:1[0-9]'
end-set
!
community-set COMM_CUST_NO_ADVERTISE
  8075:950
end-set
!
community-set COMM_FUNC_FABRIC_BYOIP
  8075:701
end-set
!
community-set COMM_FUNC_LEAK_FABRIC2
  8075:10401
end-set
!
community-set COMM_FUNC_LEAK_THEEDGE
  8075:10753
end-set
!
community-set COMM_ORIGIN_CONDUIT_UC
  8075:9002
end-set
!
community-set COMM_ROUTE_PARTNER_ALL
  ios-regex '8075:4[0-9]'
end-set
!
community-set COMM_ROUTE_PRIVATE_ALL
  ios-regex '8075:2[0-9]'
end-set
!
community-set GLOBAL-NO-ADV-TO-PEERS
  8075:10000
end-set
!
community-set ANYCAST-OUT-COMMUNITIES
  8075:13
end-set
!
community-set COMM_CUST_PUBLIC_ANCHOR
  8075:112
end-set
!
community-set COMM_ORIGIN_PARTNER_SIP
  8075:8003
end-set
!
community-set COMM_ORIGIN_PARTNER_WPS
  8075:8004
end-set
!
community-set COMM_ORIGIN_PROPERTY_AR
  8075:9200
end-set
!
community-set COMM_ORIGIN_PROPERTY_ER
  8075:9113
end-set
!
community-set DENY-MSN-COMMUNITIES-IN
  ios-regex '806[8-9]:*',
  ios-regex '807[0-5]:*'
end-set
!
community-set COMM_CUST_PRIVATE_ANCHOR
  8075:122
end-set
!
community-set COMM_CUST_PUBLIC_ANYCAST
  8075:113
end-set
!
community-set COMM_FUNC_LEAK_XCGD-MGMT
  8075:10752
end-set
!
community-set COMM_FUNC_PREMIUM_GLOBAL
  8075:640,
  8075:4124
end-set
!
community-set COMM_ORIGIN_PARTNER_TSYS
  8075:8005
end-set
!
community-set COMM_ORIGIN_PARTNER_YHOO
  8075:8002
end-set
!
community-set COMM_ORIGIN_PROPERTY_CIS
  8075:9104
end-set
!
community-set COMM_ORIGIN_PROPERTY_OOB
  8075:9117
end-set
!
community-set COMM_ORIGIN_PROPERTY_WDG
  8075:9112
end-set
!
community-set COMM_ORIGIN_PROPERTY_XCG
  8075:9105
end-set
!
community-set COMM_ROUTE_PUBLIC_ANCHOR
  ios-regex '8075:1[1-2]'
end-set
!
community-set GLOBAL-SEND-TO-CUSTOMERS
  8075:34000
end-set
!
community-set SUBREGIONAL-MYSUBREGIONS
  8075:51000,
  8075:51512
end-set
!
community-set 8075-FREEPUBLIC-COMMUNITY
  8075:24100,
  8075:34000,
  8075:38100,
  8075:40610
end-set
!
community-set COMM_CUST_PRIVATE_ANYCAST
  8075:123
end-set
!
community-set COMM_CUST_SUBREGIONAL_CIS
  8075:420
end-set
!
community-set COMM_DEFAULT_ROUTE_ANCHOR
  8075:99
end-set
!
community-set COMM_ORIGIN_PROPERTY_DCFX
  8075:9109
end-set
!
community-set COMM_ORIGIN_PROPERTY_EPMS
  8075:9119
end-set
!
community-set COMM_ORIGIN_PROPERTY_IDFX
  8075:9001
end-set
!
community-set COMM_ORIGIN_PROPERTY_MGFX
  8075:9120
end-set
!
community-set COMM_ORIGIN_PROPERTY_SRCH
  8075:9103
end-set
!
community-set COMM_ORIGIN_PROPERTY_XCGD
  8075:9106
end-set
!
community-set COMM_ROUTE_PAIDPEER_ONNET
  8075:31
end-set
!
community-set COMM_ROUTE_PRIVATE_ANCHOR
  ios-regex '8075:2[1-2]'
end-set
!
community-set COMM_ROUTE_PUBLIC_ANYCAST
  8075:13
end-set
!
community-set COMM_ORIGIN_PROPERTY_IPSLA
  8075:9116
end-set
!
community-set COMM_ORIGIN_PROPERTY_SKYPE
  8075:9108
end-set
!
community-set COMM_ROUTE_FREEPEER_PUBLIC
  8075:34
end-set
!
community-set COMM_ROUTE_PAIDPEER_OFFNET
  8075:32
end-set
!
community-set COMM_ROUTE_PRIVATE_ANYCAST
  8075:23
end-set
!
community-set COMM_FUNC_PREMIUM_CONTINENT
  8075:650,
  8075:4124
end-set
!
community-set COMM_ORIGIN_PROPERTY_FABRIC
  8075:9111
end-set
!
community-set COMM_ROUTE_FREEPEER_PRIVATE
  8075:33
end-set
!
community-set COMM_ROUTE_PARTNER_SPECIFIC
  8075:42
end-set
!
community-set COMM_ORIGIN_PROPERTY_GNSCORE
  8075:9000
end-set
!
community-set COMM_ORIGIN_PROPERTY_THEEDGE
  8075:9110
end-set
!
community-set AZURE-SUBREGIONAL-LOCALREGION
  8075:51512
end-set
!
community-set COMM_CUST_SUBREGIONAL_THEEDGE
  8075:421
end-set
!
community-set COMM_ORIGIN_PARTNER_GALLACAKE
  8075:8001
end-set
!
community-set COMM_ORIGIN_PROPERTY_MSIT_EBL
  8075:9101
end-set
!
community-set COMM_ORIGIN_PROPERTY_MSIT_LAB
  8075:9102
end-set
!
community-set COMM_ORIGIN_PROPERTY_XBOX_LSG
  8075:9107
end-set
!
community-set COMM_ROUTE_PUBLIC_ANCHOR_CORE
  8075:11
end-set
!
community-set COMM_ROUTE_PUBLIC_ANCHOR_CUST
  8075:12
end-set
!
community-set GLOBAL-EXT-CUSTOMER-COMMUNITY
  8075:34000,
  8075:60000,
  8075:38100,
  8075:41240
end-set
!
community-set COMM_ORIGIN_PROPERTY_CLOUD_DNS
  8075:9115
end-set
!
community-set COMM_ORIGIN_PROPERTY_MSIT_CORP
  8075:9114
end-set
!
community-set COMM_ROUTE_PRIVATE_ANCHOR_CORE
  8075:21
end-set
!
community-set COMM_ROUTE_PRIVATE_ANCHOR_CUST
  8075:22
end-set
!
community-set COMM_FUNC_ITE_EGRESS_CONGESTION
  8075:710
end-set
!
community-set COMM_ROUTE_FREEPEER_ROUTESERVER
  8075:35
end-set
!
community-set COMM_ROUTE_PUBLIC_SPECIFIC_CORE
  8075:15
end-set
!
community-set COMM_ROUTE_PUBLIC_SPECIFIC_CUST
  8075:16
end-set
!
community-set COMM_ROUTE_PRIVATE_SPECIFIC_CORE
  8075:25
end-set
!
community-set COMM_ROUTE_PRIVATE_SPECIFIC_CUST
  8075:26
end-set
!
community-set COMM_ORIGIN_PROPERTY_MSIT_INTERNET
  8075:9100
end-set
!
community-set COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE
  8075:14
end-set
!
community-set COMM_ROUTE_PUBLIC_SPECIFIC_ANYCAST
  8075:17
end-set
!
community-set COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE
  8075:24
end-set
!
community-set COMM_ROUTE_PRIVATE_SPECIFIC_ANYCAST
  8075:27
end-set
!
community-set AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY
  8075:420
end-set
!
large-community-set TAG_100_LARGE_COMM
  100:100:100
end-set
!
large-community-set TAG_200_LARGE_COMM
  200:200:200
end-set
!
large-community-set COLOR_20_LARGE_COMM
  20:20:20
end-set
!
large-community-set COLOR_30_LARGE_COMM
  30:30:30
end-set
!
large-community-set TAG_8074_LARGE_COMM
  8074:8074:8074
end-set
!
large-community-set TAG_9111_LARGE_COMM
  9111:9111:9111
end-set
!
large-community-set TAG_9119_LARGE_COMM
  9119:9119:9119
end-set
!
large-community-set TAG_AGGREGATE_ROUTE_LARGE_COMM
  9999:1111:9999
end-set
!
large-community-set TAG_REDIST_CONNECTED_LARGE_COMM
  1234:4321:1234
end-set
!
large-community-set TAG_STATIC_REDIST_ROUTE_LARGE_COMM
  4444:1111:4444
end-set
!
route-policy DENY-ALL
  drop
end-policy
!
route-policy PASS-ALL
  pass
end-policy
!
route-policy ADD_PATH2
  set community ADD_PATH2
end-policy
!
route-policy DENY-SWAN
  if (as-path in FROM-AS8074) then
    drop
  endif
  if (large-community matches-any TAG_8074_LARGE_COMM) then
    drop
  endif
  pass
end-policy
!
route-policy SWAN-LEAK
  if (community matches-any SWAN_LEAK_COMMUNITY) then
    set large-community TAG_8074_LARGE_COMM additive
    set local-preference 450
    done
  endif
  pass
end-policy
!
route-policy TMS-EXPORT
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) then
    set local-preference 10
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) then
    set extcommunity rt COMM_RT_TMS_GLOBAL
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (community matches-any COMM_FUNC_DONTADV_ALL) then
    set extcommunity rt COMM_RT_TMS_GEO additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (community matches-any COMM_ROUTE_DDOS_IRR) then
    set extcommunity rt COMM_RT_TMS_IRR additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (community matches-any COMM_ROUTE_DDOS_SITE) then
    set extcommunity rt COMM_RT_TMS_SITE additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  apply CLEAR-ALL-LARGE-COMM
  set extcommunity rt COMM_RT_TMS_GLOBAL
end-policy
!
route-policy TMS-IMPORT
  if (extcommunity rt matches-any COMM_RT_TMS_GLOBAL) or (extcommunity rt matches-any COMM_RT_TMS_GEO) or (extcommunity rt matches-any COMM_RT_TMS_IRR) or (extcommunity rt matches-any COMM_RT_TMS_SITE) then
    done
  else
    drop
  endif
end-policy
!
route-policy CUST-OOB-IN
  if (destination or-longer CUST-OOB-PREFIX-LIST) then
    pass
  elseif community matches-any COMM_ORIGIN_PROPERTY_EPMS then
    drop
  elseif community matches-any COMM_ORIGIN_PROPERTY_OOB then
    pass
  elseif community matches-any COMM_ORIGIN_PROPERTY_MGFX then
    pass
  endif
  pass
end-policy
!
route-policy DDOS-GEO-IN
  if (community matches-any COMM_FUNC_DONTADV_ALL) then
    set extcommunity rt COMM_RT_TMS_GEO additive
    done
  endif
  if (community matches-any COMM_ROUTE_DDOS_IRR) then
    set extcommunity rt COMM_RT_TMS_IRR additive
    done
  endif
  if (community matches-any COMM_ROUTE_DDOS_SITE) then
    set extcommunity rt COMM_RT_TMS_SITE additive
    done
  endif
  set extcommunity rt COMM_RT_TMS_GLOBAL additive
  done
end-policy
!
route-policy ITE-IBGP-V4
  #term PERMIT-ITE-BYOIP
  if (community matches-any COMM_FUNC_ITE_BYOIP and destination or-longer BYOIP-V4) then
    pass
    #term PERMIT-FABRIC-BYOIP
  elseif (as-path in ASPATH-PRIVATE and community matches-any COMM_FUNC_FABRIC_BYOIP and destination or-longer BYOIP-V4) then
    set local-preference 375
    pass
  else
    pass
  endif
end-policy
!
route-policy ITE-IBGP-V6
  #term PERMIT-ITE-BYOIP
  if (community matches-any COMM_FUNC_ITE_BYOIP and destination or-longer BYOIP-V6) then
    pass
    #term PERMIT-FABRIC-BYOIP
  elseif (as-path in ASPATH-PRIVATE and community matches-any COMM_FUNC_FABRIC_BYOIP and destination or-longer BYOIP-V6) then
    set local-preference 375
    pass
  else
    pass
  endif
end-policy
!
route-policy RWA-SWAN-IN
  apply DENY-FROM-SWAN
  apply SWAN-LEAK
  apply FABRIC-PREFIXES-FROM-SWAN
end-policy
!
route-policy BGP-OVERLOAD
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  var globalVar1 0
end-policy
!
route-policy DENY-TO-SWAN
  if destination in (0.0.0.0/0) then
    drop
  endif
  if (destination or-longer AZURE-IP-REUSE-SPACE) then
    drop
  endif
  if (community matches-any AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY) or (community matches-any AZURE-SUBREGIONAL-LOCALREGION) then
    drop
  endif
  if (community matches-any COMM_FUNC_LEAK_FABRIC) then
    drop
  endif
  if (as-path in AS8072) then
    drop
  endif
  if (as-path in CONTAINS-AS8075) then
    drop
  endif
  pass
end-policy
!
route-policy FROM-AS64915
  if as-path in AS64915 and large-community matches-any TAG_9111_LARGE_COMM then
    done
  endif
  drop
end-policy
!
route-policy RWA-SWAN-OUT
  apply DENY-TO-SWAN
  apply FABRIC-PREFIXES-TO-SWAN
end-policy
!
route-policy STATIC-TO-BGP
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination in deny_static_bgp) then
    drop
  endif
  apply BGP-OVERLOAD
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_100_LARGE_COMM) and (globalVar1 eq 10293) and (destination in permit_static_bgp_anchor) then
    set local-preference 10
    set community ANCHOR additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_100_LARGE_COMM) and (destination in permit_static_bgp_anchor) then
    set local-preference 400
    set community ANCHOR additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (0.0.0.0/0 le 32)) and (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (destination in permit_static_bgp) then
    set local-preference 400
  endif
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_200_LARGE_COMM) and (globalVar1 eq 10293) and (destination in permit_static_bgp) then
    set local-preference 10
    set community LEAK_SPECIFICS additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_200_LARGE_COMM) and (destination in permit_static_bgp) then
    set community LEAK_SPECIFICS additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (globalVar1 eq 10293) and (destination in permit_static_bgp) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (0.0.0.0/0 le 32)) and ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination in permit_static_bgp) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) then
    drop
  endif
  pass
end-policy
!
route-policy CUST-DACIS-OUT
  apply BGP-OVERLOAD
  if (community matches-any COMM_FUNC_LEAK_DACIS) and (globalVar1 eq 10293) then
    set community COMM_OVERLOAD additive
    prepend as-path 8075 3
    done
  endif
  if (community matches-any COMM_FUNC_LEAK_DACIS) then
    done
  endif
  pass
end-policy
!
route-policy CUST-FABRIC-IN
  set community COMM_ORIGIN_PROPERTY_FABRIC additive
  if (as-path in AS12076) and (destination or-longer ER-LOOPBACKS) then
    pass
  elseif (as-path in AS12076) then
    drop
  else
    pass
  endif
end-policy
!
route-policy DACIS-PARTNERS
  if (community matches-any COMM_PTNR_ER) then
    set local-preference 350
    set community COMM_ORIGIN_LOCATION additive
    set community COMM_ROUTE_PARTNER additive
    set community COMM_ORIGIN_PROPERTY_ER additive
    done
  endif
  if (destination or-longer CUST-PREFIX-DACIS-INTERNAL) then
    set local-preference 400
    set community COMM_ORIGIN_PROPERTY_ER additive
    done
  endif
  drop
end-policy
!
route-policy DENY-FROM-SWAN
  if destination in (0.0.0.0/0) then
    drop
  endif
  if (destination or-longer AZURE-IP-REUSE-SPACE) then
    drop
  endif
  if (community matches-any AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY) or (community matches-any AZURE-SUBREGIONAL-LOCALREGION) then
    drop
  endif
  if (community matches-any COMM_FUNC_LEAK_FABRIC) then
    drop
  endif
  if (as-path in AS8072) then
    drop
  endif
  if (as-path in CONTAINS-AS8075) then
    drop
  endif
  pass
end-policy
!
route-policy EXPORT-TO-ISIS
  if (tag is 200) and (destination in (10.64.0.0/16, 10.41.192.0/18, 10.64.0.0/18, 25.64.0.0/10, 100.126.0.0/16, 100.127.64.0/18, 10.53.0.0/17, 100.88.4.0/22)) then
    set tag 2000
    pass
  endif
end-policy
!
route-policy GLOBAL-CUST-IN
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) and (destination in (10.0.0.0/8, 100.64.0.0/10, 172.16.0.0/12, 192.168.0.0/16)) then
    set local-preference 10
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    done
  endif
  if (globalVar1 eq 0) and (destination in (10.0.0.0/8, 100.64.0.0/10, 172.16.0.0/12, 192.168.0.0/16)) then
    set local-preference 400
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    done
  endif
  if (as-path in as-path-75) then
    drop
  endif
  if (globalVar1 eq 10293) and ((destination or-longer GLOBAL-EGRESS-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES)) then
    set local-preference 10
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    done
  endif
  if (globalVar1 eq 0) and ((destination or-longer GLOBAL-EGRESS-IP-SPACE) or (destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES)) then
    set local-preference 400
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    done
  endif
  drop
end-policy
!
route-policy STD-PARTNER-IN
  if (as-path in ASPATH-DOCUMENTATION) or (as-path in ASPATH-RESERVED) or (as-path in as-path-75) or (as-path in LOCAL) then
    drop
  endif
  delete community in DENY-MSN-COMMUNITIES-IN
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (as-path in as-path-12076) and ((destination or-longer GLOBAL-EGRESS-IP-SPACE) or (destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES)) then
    pass
  else
    if destination in (0.0.0.0/0) or (destination or-longer BOGON-V4) then
      drop
    endif
    if (destination or-longer GLOBAL-EGRESS-IP-SPACE) or (destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES) then
      drop
    endif
    pass
  endif
end-policy
!
route-policy TMS-EXPORT-NEW
  apply SET-OVERLOAD-LOCAL-PREF
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) then
    set extcommunity rt COMM_RT_TMS_GLOBAL
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (extcommunity rt matches-any COMM_RT_TMS_GLOBAL) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (extcommunity rt matches-any COMM_RT_TMS_GEO) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if origin is igp or origin is egp or origin is incomplete then
    apply CLEAR-ALL-LARGE-COMM
    set extcommunity rt COMM_RT_TMS_GLOBAL
    done
  endif
  drop
end-policy
!
route-policy BGP-MONITOR-OUT
  apply CONN-TO-BGP-RWA
  apply STATIC-TO-BGP-RWA
end-policy
!
route-policy CONN-TO-BGP-RWA
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (globalVar1 eq 10293) and (destination in (10.20.8.129/32, 10.20.8.130/32)) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in (10.20.8.129/32, 10.20.8.130/32)) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in AZURE-IP-REUSE-SPACE) then
    drop
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (globalVar1 eq 10293) and (destination in (0.0.0.0/0 ge 30) and destination in (0.0.0.0/0 le 31)) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in (0.0.0.0/0 ge 30) and destination in (0.0.0.0/0 le 31)) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (globalVar1 eq 10293) and (destination in permit_connected_bgp_exceptions) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in permit_connected_bgp_exceptions) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) then
    drop
  endif
  pass
end-policy
!
route-policy CUST-EBGP-AR-IN
  set community COMM_ORIGIN_PROPERTY_AR additive
end-policy
!
route-policy CUST-DEFAULT-OUT
  apply BGP-OVERLOAD
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (globalVar1 eq 10293) and (destination in (0.0.0.0/0)) then
    set community COMM_OVERLOAD additive
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (destination in (0.0.0.0/0)) then
    prepend as-path 8075
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy IPV6-RWA-SWAN-IN
  apply IPV6-DENY-FROM-SWAN
  apply SWAN-LEAK
  apply FABRIC-PREFIXES-FROM-SWAN
end-policy
!
route-policy IRR-MESH-IPV4-IN
  apply SUBREGIONAL-ROUTING
  apply NEXTHOP-REWRITE-IPV4
end-policy
!
route-policy IRR-MESH-IPV6-IN
  apply SUBREGIONAL-ROUTING
  apply NEXTHOP-REWRITE-IPV6
  pass
end-policy
!
route-policy STD-CUST-EBGP-IN
  if (as-path in as-path-75) then
    drop
  endif
  set local-preference 400
  if (community matches-any COMM_CUST_DEPREF) then
    set local-preference 390
  endif
  if (community matches-any COMM_OVERLOAD) then
    set local-preference 10
  endif
  delete community in COMM_NON_CUST
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (destination or-longer ANYCAST-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_ANYCAST additive
  endif
  if (destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    pass
  elseif (destination or-longer GLOBAL-EGRESS-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    pass
  else
    drop
  endif
end-policy
!
route-policy GLOBAL-EBGP-AR-IN
  apply STD-CUST-EBGP-IN
  apply CUST-EBGP-AR-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-DENY-TO-SWAN
  if destination in (::/0) then
    drop
  endif
  if (community matches-any COMM_FUNC_LEAK_FABRIC) then
    drop
  endif
  if (as-path in AS8072) then
    drop
  endif
  if (as-path in CONTAINS-AS8075) then
    drop
  endif
  if (destination in (::/0 ge 65)) then
    drop
  endif
  pass
end-policy
!
route-policy IPV6-RWA-SWAN-OUT
  apply IPV6-DENY-TO-SWAN
  apply IPV6-FABRIC-PREFIXES-TO-SWAN
end-policy
!
route-policy IRR-MESH-IPV4-OUT
  apply DENY-SWAN
  apply SET-NEXT-HOP-SELF
  apply STATIC-TO-BGP-RWA
  apply CONN-TO-BGP-RWA
  apply ITE-IBGP-V4
  apply SET-OVERLOAD-LOCAL-PREF
end-policy
!
route-policy IRR-MESH-IPV6-OUT
  apply DENY-SWAN
  apply IPV6-SET-NEXT-HOP-SELF
  apply IPV6-TO-BGP-NATIVE-RWA
  apply ITE-IBGP-V6
  apply SET-OVERLOAD-LOCAL-PREF
end-policy
!
route-policy ITEPREMIUM-EXPORT
  apply SET-OVERLOAD-LOCAL-PREF
  if (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_GLOBAL) or (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_CONTINENT) or (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_IRR) then
    done
  else
    drop
  endif
end-policy
!
route-policy ITEPREMIUM-IMPORT
  if (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_GLOBAL) or (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_CONTINENT) or (extcommunity rt matches-any COMM_RT_ITE_PREMIUM_IRR) then
    done
  else
    drop
  endif
end-policy
!
route-policy SET-NEXT-HOP-SELF
  if ((path-type is ebgp) or (path-type is ibgp)) and (large-community matches-any COLOR_30_LARGE_COMM) then
    set next-hop self
    set local-preference -1
  elseif (path-type is ebgp) then
    set next-hop self
  else
    pass
  endif
end-policy
!
route-policy STATIC-TO-BGP-RWA
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination in deny_static_bgp) then
    drop
  endif
  apply BGP-OVERLOAD
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_100_LARGE_COMM) and (globalVar1 eq 10293) and (destination in permit_static_bgp_anchor) then
    set local-preference 10
    set community ANCHOR additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_100_LARGE_COMM) and (destination in permit_static_bgp_anchor) then
    set local-preference 400
    set community ANCHOR additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (destination in permit_static_bgp) then
    set local-preference 400
  endif
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_200_LARGE_COMM) and (globalVar1 eq 10293) and (destination in permit_static_bgp) then
    set local-preference 10
    set community LEAK_SPECIFICS additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_200_LARGE_COMM) and (destination in permit_static_bgp) then
    set community LEAK_SPECIFICS additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (globalVar1 eq 10293) and (destination in permit_static_bgp) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination in permit_static_bgp) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (globalVar1 eq 10293) and ((destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES)) then
    set local-preference 10
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    set community COMM_ORIGIN_LOCATION additive
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    set community COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and ((destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES)) then
    set local-preference 400
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    set community COMM_ORIGIN_LOCATION additive
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    set community COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (globalVar1 eq 10293) and (destination or-longer GLOBAL-EGRESS-IP-SPACE) then
    set local-preference 10
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    set community COMM_ORIGIN_LOCATION additive
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    set community COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (destination or-longer GLOBAL-EGRESS-IP-SPACE) then
    set local-preference 400
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    set community COMM_ORIGIN_LOCATION additive
    set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    set community COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) and (globalVar1 eq 10293) and (aggregate-contributor) then
    set local-preference 10
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) and (aggregate-contributor) then
    set local-preference 400
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) and (globalVar1 eq 10293) then
    set local-preference 10
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) then
    set local-preference 400
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) then
    drop
  endif
  pass
end-policy
!
route-policy TO_TRANSITEDGE_V4
  if destination or-longer TRANSITEDGE_PREFIXES-V4 then
    pass
  endif
end-policy
!
route-policy TO_TRANSITEDGE_V6
  if destination or-longer TRANSITEDGE_PREFIXES-V6 then
    pass
  endif
end-policy
!
route-policy CUST-FABRIC-IN-RWA
  set local-preference 500
  set large-community TAG_9111_LARGE_COMM additive
  set community COMM_LOCALREGION additive
  if (as-path in AS12076) and (destination or-longer ER-LOOPBACKS) then
    pass
  else
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    if (as-path in AS12076) then
      drop
    endif
  endif
end-policy
!
route-policy GLOBAL-EBGP-AR-OUT
  apply ADVERTISE-OOB-SPECIFICS
  apply GLOBAL-CUST-DEFAULT-OUT
end-policy
!
route-policy ixia-ebgp-64602-in
  apply CUST-FABRIC-RNG-BGP-GROUP-RWA-IN
  set local-preference 400
  set extcommunity rt COMM_RT_TMS_GLOBAL
end-policy
!
route-policy CUST-DEFAULT-OUT-FL
  apply BGP-OVERLOAD
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (globalVar1 eq 10293) and (destination in (0.0.0.0/0)) then
    set community COMM_OVERLOAD additive
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (destination in (0.0.0.0/0)) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy CUST-FABRIC-IN-TEST
  set community COMM_ORIGIN_PROPERTY_FABRIC additive
  if (as-path in AS12076) and (destination or-longer ER-LOOPBACKS) then
    pass
    if (as-path in AS12076) then
      drop
    else
      pass
    endif
  endif
end-policy
!
route-policy FROM_TRANSITEDGE_V4
  if destination or-longer TRANSITEDGE_LOOPBACK-V4 then
    set community COMM_FUNC_DONTADV_ALL additive
    pass
  endif
end-policy
!
route-policy FROM_TRANSITEDGE_V6
  if destination or-longer TRANSITEDGE_LOOPBACK-V6 then
    set community COMM_FUNC_DONTADV_ALL additive
    pass
  endif
end-policy
!
route-policy IER-CLIENTS-IPV4-IN
  apply SUBREGIONAL-ROUTING
end-policy
!
route-policy IER-CLIENTS-IPV6-IN
  apply SUBREGIONAL-ROUTING
end-policy
!
route-policy IPV6-DACIS-PARTNERS
  if (community matches-any COMM_PTNR_ER) then
    set local-preference 350
    set community COMM_ORIGIN_LOCATION additive
    set community COMM_ROUTE_PARTNER additive
    set community COMM_ORIGIN_PROPERTY_ER additive
    done
  endif
  if (destination or-longer IPV6-CUST-PREFIX-DACIS-INTERNAL) then
    set local-preference 400
    set community COMM_ORIGIN_PROPERTY_ER additive
    done
  endif
  drop
end-policy
!
route-policy IPV6-DENY-FROM-SWAN
  if destination in (::/0) then
    drop
  endif
  if (community matches-any COMM_FUNC_LEAK_FABRIC) then
    drop
  endif
  if (as-path in AS8072) then
    drop
  endif
  if (as-path in CONTAINS-AS8075) then
    drop
  endif
  if (destination in (::/0 ge 65)) then
    drop
  endif
  pass
end-policy
!
route-policy IPV6-STD-PARTNER-IN
  if (as-path in ASPATH-DOCUMENTATION) or (as-path in ASPATH-RESERVED) or (as-path in as-path-75) or (as-path in LOCAL) then
    drop
  endif
  delete community in DENY-MSN-COMMUNITIES-IN
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (as-path in as-path-12076) and ((destination or-longer IPV6-GLOBAL-EGRESS-SPACE) or (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES)) then
    pass
  else
    if destination in (::/0) or (destination or-longer BOGON-V6) then
      drop
    endif
    if (destination or-longer IPV6-GLOBAL-EGRESS-SPACE) or (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
      drop
    endif
    pass
  endif
end-policy
!
route-policy ITE-IBGP-CONDUIT-IN
  apply ITE-IBGP-CONDUIT-IN-CORE
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy SUBREGIONAL-ROUTING
  if (community matches-any SUBREGIONAL-MYSUBREGIONS) then
    pass
  else
    if (destination or-longer AZURE-IP-REUSE-SPACE) then
      drop
    endif
    if (community matches-any SUBREGIONAL-ROUTING) then
      drop
    endif
    pass
  endif
end-policy
!
route-policy CLEAR-ALL-LARGE-COMM
  delete large-community all
end-policy
!
route-policy IER-CLIENTS-IPV4-OUT
  apply SET-NEXT-HOP-SELF
  apply STATIC-TO-BGP-RWA
  apply CONN-TO-BGP-RWA
  apply ITE-IBGP-V4
  apply SET-OVERLOAD-LOCAL-PREF
end-policy
!
route-policy IER-CLIENTS-IPV6-OUT
  apply IPV6-SET-NEXT-HOP-SELF
  apply IPV6-TO-BGP-NATIVE-RWA
  apply ITE-IBGP-V6
  apply SET-OVERLOAD-LOCAL-PREF
end-policy
!
route-policy IPV6-BGP-MONITOR-OUT
  apply IPV6-TO-BGP-NATIVE-RWA
end-policy
!
route-policy NEXTHOP-REWRITE-IPV4
  if (community matches-any COMM_ROUTE_PUBLIC_ANCHOR_CORE) or (community matches-any COMM_ROUTE_PRIVATE_ANCHOR_CORE) or (community matches-any COMM_DEFAULT_ROUTE_ANCHOR) then
    set next-hop 207.46.32.255
  elseif (community matches-any COMM_ROUTE_RTBH) then
    set next-hop 192.0.2.66
  else
    pass
  endif
end-policy
!
route-policy NEXTHOP-REWRITE-IPV6
  if (community matches-any COMM_ROUTE_PUBLIC_ANCHOR_CORE) or (community matches-any COMM_ROUTE_PRIVATE_ANCHOR_CORE) or (community matches-any COMM_DEFAULT_ROUTE_ANCHOR) then
    set next-hop 2001:506:28:9000:ffff:ffff:ffff:ffff
  elseif (community matches-any COMM_ROUTE_RTBH) then
    set next-hop 100::6666:6666:6666:6666
  else
    pass
  endif
end-policy
!
route-policy CUST-OOB-BGP-GROUP-IN
  apply CUST-OOB-IN
  apply GLOBAL-CUST-IN
end-policy
!
route-policy IPV6-STD-CUST-EBGP-IN
  if (as-path in as-path-75) then
    drop
  endif
  set local-preference 400
  if (community matches-any COMM_CUST_DEPREF) then
    set local-preference 390
  endif
  if (community matches-any COMM_OVERLOAD) then
    set local-preference 10
  endif
  delete community in COMM_NON_CUST
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (destination or-longer IPV6-ANYCAST-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_ANYCAST additive
  endif
  if (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
    pass
  elseif (destination or-longer IPV6-GLOBAL-EGRESS-SPACE) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    pass
  else
    drop
  endif
end-policy
!
route-policy TRANSITEDGE_V4_EXPORT
  apply SET-OVERLOAD-LOCAL-PREF
  apply TO_TRANSITEDGE_V4
end-policy
!
route-policy TRANSITEDGE_V4_IMPORT
  apply SET-OVERLOAD-LOCAL-PREF
  apply FROM_TRANSITEDGE_V4
end-policy
!
route-policy TRANSITEDGE_V6_EXPORT
  apply SET-OVERLOAD-LOCAL-PREF
  apply DENY-ALL
end-policy
!
route-policy TRANSITEDGE_V6_IMPORT
  apply SET-OVERLOAD-LOCAL-PREF
  apply DENY-ALL
end-policy
!
route-policy CUST-MGFX-BGP-GROUP-IN
  apply STD-CUST-EBGP-IN
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply CUST-FABRIC-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-GLOBAL-EBGP-AR-IN
  apply IPV6-STD-CUST-EBGP-IN
  apply CUST-EBGP-AR-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-SEND-DEFAULT-ONLY
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) and (destination in (::/0)) then
    set med 65000
    set next-hop self
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (::/0)) then
    set next-hop self
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy IPV6-SET-NEXT-HOP-SELF
  if ((path-type is ebgp) or (path-type is ibgp)) and (large-community matches-any COLOR_20_LARGE_COMM) then
    set next-hop self
  elseif ((path-type is ebgp) or (path-type is ibgp)) and (large-community matches-any COLOR_30_LARGE_COMM) then
    set local-preference -1
    set next-hop self
  elseif (path-type is ebgp) then
    set next-hop self
  elseif ((path-type is ebgp) or (path-type is ibgp)) and (community matches-any COMM_ORIGIN_PROPERTY_AR) then
    set next-hop self
  else
    pass
  endif
end-policy
!
route-policy IPV6-TO-BGP-NATIVE-RWA
  if ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_100_LARGE_COMM) and (destination in ipv6_permit_static_bgp_anchor) then
    set local-preference 400
    set community ANCHOR additive
  elseif ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (large-community matches-any TAG_200_LARGE_COMM) and (destination in ipv6_permit_static_bgp) then
    set local-preference 400
    set community LEAK_SPECIFICS additive
  else
    if ((large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
      set community COMM_ROUTE_PRIVATE_SPECIFIC_CORE additive
    endif
    if ((large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination or-longer IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS) then
      set community COMM_ROUTE_PUBLIC_SPECIFIC_CORE additive
    endif
    if (large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in (2000::/3 ge 126)) and (destination in (2000::/3 le 127)) then
      set local-preference 400
    elseif ((large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM) or (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM)) and (destination in ipv6_permit_static_bgp) then
      set local-preference 400
      set next-hop self
    elseif (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
      set local-preference 400
      set community COMM_ORIGIN_PROPERTY_FABRIC
      set community COMM_ORIGIN_LOCATION additive
      set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
      set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
      set community COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE additive
    elseif (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (destination or-longer IPV6-GLOBAL-EGRESS-SPACE) then
      set local-preference 400
      set community COMM_ORIGIN_PROPERTY_FABRIC
      set community COMM_ORIGIN_LOCATION additive
      set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
      set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
      set community COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE additive
    elseif (large-community matches-any TAG_9111_LARGE_COMM) and (aggregate-contributor) then
      set local-preference 400
      set community AZURE-SUBREGIONAL-LOCALREGION additive
    elseif (large-community matches-any TAG_9111_LARGE_COMM) then
      set local-preference 400
    elseif ((path-type is ebgp) or (path-type is ibgp)) then
      pass
    else
      drop
    endif
  endif
end-policy
!
route-policy SET-NEXT-HOP-SELF-TEST
  if ((path-type is ebgp) or (path-type is ibgp)) then
    set next-hop self
  else
    pass
  endif
end-policy
!
route-policy ADVERTISE-OOB-SPECIFICS
  apply BGP-OVERLOAD
  if ((path-type is ebgp) or (path-type is ibgp)) and (globalVar1 eq 10293) and (destination or-longer (10.20.160.0/19)) then
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if ((path-type is ebgp) or (path-type is ibgp)) and (destination or-longer (10.20.160.0/19)) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  pass
end-policy
!
route-policy CUST-DACIS-BGP-GROUP-IN
  apply STD-PARTNER-IN
  apply DACIS-PARTNERS
end-policy
!
route-policy FABRIC-AGGREGATE-POLICY
  if large-community matches-any TAG_9111_LARGE_COMM then
    delete community in COMM_NO_EXPORT
    delete community in no-advertise
    delete community all
    delete large-community all
    set community COMM_LOCALREGION additive
    set large-community TAG_9119_LARGE_COMM
    set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
    set local-preference 500
    set aggregate-contributor
  endif
end-policy
!
route-policy FABRIC-PREFIXES-TO-SWAN
  apply BGP-OVERLOAD
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (globalVar1 eq 10293) then
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) then
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (aggregate-contributor) and (globalVar1 eq 10293) then
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (aggregate-contributor) then
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) and (globalVar1 eq 10293) then
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy FILTER-ANCHOR-ACCEPT-V4
  apply PERMIT-DEFAULT-PHANTOM-V4
  if (as-path in ASPATH-MICROSOFT) and (community matches-any GLOBAL-SEND-TO-PEERS) and (destination or-longer GLOBAL-EGRESS-IP-SPACE) then
    pass
  else
    drop
  endif
end-policy
!
route-policy FILTER-ANCHOR-ACCEPT-V6
  apply PERMIT-DEFAULT-PHANTOM-V6
  if (as-path in ASPATH-MICROSOFT) and (community matches-any GLOBAL-SEND-TO-PEERS) and (destination or-longer IPV6-GLOBAL-EGRESS-SPACE) then
    pass
  else
    drop
  endif
end-policy
!
route-policy GLOBAL-CUST-DEFAULT-OUT
  apply BGP-OVERLOAD
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (globalVar1 eq 10293) and (destination in (0.0.0.0/0)) then
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (((path-type is ebgp) or (path-type is ibgp)) or (large-community matches-any TAG_STATIC_REDIST_ROUTE_LARGE_COMM)) and (destination in (0.0.0.0/0)) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy IPV6-GLOBAL-EBGP-AR-OUT
  apply IPV6-SEND-DEFAULT-ONLY
end-policy
!
route-policy ITE-IBGP-CONDUIT-IN-RWA
  if (community matches-any COMM_FUNC_ITE_EGRESS_CONGESTION) then
    set local-preference 325
    set community COMM_NO_ADVERTISE additive
    pass
  endif
end-policy
!
route-policy PASS-ALL-LOCAL-PREF-400
  set local-preference 400
  pass
end-policy
!
route-policy SET-OVERLOAD-LOCAL-PREF
  #! DO NOT SET/CHANGE this policy!! Value is set/change/controlled by apply-template!!
  apply CLEAR-ALL-LARGE-COMM
  pass
end-policy
!
route-policy CUST-DACIS-BGP-GROUP-OUT
  apply CUST-DACIS-OUT
  apply GLOBAL-CUST-DEFAULT-OUT
end-policy
!
route-policy IPV6-CUST-MGFX-BGP-GROUP
end-policy
!
route-policy ITE-IBGP-CONDUIT-IN-CORE
  if (as-path in as-path-75) then
    drop
  endif
  if (community matches-any COMM_FUNC_ITE_EGRESS_CONGESTION) then
    set local-preference 325
    set community COMM_NO_ADVERTISE additive
    done
  endif
  drop
end-policy
!
route-policy TRANSLATE-CUSTOMER-COMMS
  if (community matches-any COMM_CUST_NO_ACCEPT) then
    drop
  endif
  if (community matches-any COMM_CUST_PUBLIC_ANCHOR) then
    delete community in COMM_CUST_PUBLIC_ANCHOR
    delete community in COMM_ROUTE_PUBLIC_SPECIFIC_CUST
    set community COMM_ROUTE_PUBLIC_ANCHOR_CUST additive
    set community GLOBAL-SEND-TO-PEERS additive
  endif
  if (community matches-any COMM_CUST_PUBLIC_ANYCAST) then
    delete community in COMM_CUST_PUBLIC_ANYCAST
    delete community in COMM_ROUTE_PUBLIC_SPECIFIC_CUST
    set community COMM_ROUTE_PUBLIC_ANCHOR_CUST additive
    set community COMM_ROUTE_PUBLIC_ANYCAST additive
    set community GLOBAL-SEND-TO-PEERS additive
  endif
  if (community matches-any COMM_CUST_PRIVATE_ANCHOR) then
    delete community in COMM_CUST_PRIVATE_ANCHOR
    delete community in COMM_ROUTE_PRIVATE_SPECIFIC_CUST
    set community COMM_ROUTE_PRIVATE_ANCHOR_CUST additive
    set community GLOBAL-NO-ADV-TO-PEERS additive
    set community GLOBAL-SEND-TO-CUSTOMERS additive
  endif
  if (community matches-any COMM_CUST_DONTADV_ALL) then
    delete community in COMM_CUST_DONTADV_ALL
    set community COMM_FUNC_DONTADV_ALL additive
  endif
  if (community matches-any COMM_CUST_NOPEERS_ALL) or (community matches-any COMM_NOPEER) then
    delete community in COMM_CUST_NOPEERS_ALL
    set community GLOBAL-NO-ADV-TO-PEERS additive
    set community COMM_FUNC_NOPEERS_ALL additive
  endif
  if (community matches-any COMM_CUST_NO_EXPORT) then
    delete community in COMM_CUST_NO_EXPORT
    set community COMM_NO_EXPORT additive
  endif
  if (community matches-any COMM_CUST_NO_ADVERTISE) then
    delete community in COMM_CUST_NO_ADVERTISE
    set community COMM_NO_ADVERTISE additive
  endif
  if (community matches-any COMM_CUST_LEAK_AR) then
    delete community in COMM_CUST_LEAK_AR
    set community COMM_FUNC_LEAK_AR additive
  endif
  if (community matches-any COMM_CUST_LEAK_FABRIC) then
    delete community in COMM_CUST_LEAK_FABRIC
    set community COMM_FUNC_LEAK_FABRIC additive
  endif
  if (community matches-any COMM_CUST_LEAK_SRCH) then
    delete community in COMM_CUST_LEAK_SRCH
    set community COMM_FUNC_LEAK_SRCH additive
  endif
  if (community matches-any COMM_CUST_LEAK_CIS) then
    delete community in COMM_CUST_LEAK_CIS
    set community COMM_FUNC_LEAK_CIS additive
  endif
  if (community matches-any COMM_CUST_LEAK_XCG) then
    delete community in COMM_CUST_LEAK_XCG
    set community COMM_FUNC_LEAK_XCG additive
  endif
  if (community matches-any COMM_CUST_LEAK_XCGD) then
    delete community in COMM_CUST_LEAK_XCGD
    set community COMM_FUNC_LEAK_XCGD additive
  endif
  if (destination in (0.0.0.0/0 le 32)) and (community matches-any COMM_ROUTE_RTBH) then
    set community COMM_NO_EXPORT additive
    set next-hop 192.0.2.66
  endif
  if (destination in (::/0 le 128)) and (community matches-any COMM_ROUTE_RTBH) then
    set community COMM_NO_EXPORT additive
    set next-hop 100::6666:6666:6666:6666
  endif
  if (community matches-any COMM_CUST_DEPREF) then
    set local-preference 390
  endif
  pass
end-policy
!
route-policy FABRIC-PREFIXES-FROM-SWAN
  set large-community TAG_8074_LARGE_COMM additive
  set local-preference 450
  done
end-policy
!
route-policy PERMIT-DEFAULT-PHANTOM-V4
  if destination in (0.0.0.0/0) then
    done
  endif
  if destination in (207.46.33.255/32) then
    done
  endif
  pass
end-policy
!
route-policy PERMIT-DEFAULT-PHANTOM-V6
  if destination in (::/0) then
    done
  endif
  if destination in (2001:506:28:9000:ffff:ffff:ffff:eeee/128) then
    done
  endif
  pass
end-policy
!
route-policy AZURE-IP-REUSE-SUBREGIONAL
  if (destination or-longer AZURE-IP-REUSE-SPACE) then
    delete community in AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY
    set community AZURE-SUBREGIONAL-LOCALREGION additive
  elseif (community matches-any AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY) then
    delete community in AZURE-SUBREGIONAL-CUSTOMER-COMMUNITY
    set community AZURE-SUBREGIONAL-LOCALREGION additive
  else
    pass
  endif
end-policy
!
route-policy EXPORT-LOOPBACK0-TO-FABRIC
  if ((large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in (10.3.159.130/32))) then
    apply CLEAR-ALL-LARGE-COMM
    done
  else
    pass
  endif
end-policy
!
route-policy IER-CLIENTS-IPV4-ANCHOR-OUT
  apply SET-OVERLOAD-LOCAL-PREF
  apply FILTER-ANCHOR-ACCEPT-V4
end-policy
!
route-policy IER-CLIENTS-IPV6-ANCHOR-OUT
  apply SET-OVERLOAD-LOCAL-PREF
  apply FILTER-ANCHOR-ACCEPT-V6
end-policy
!
route-policy IPV6-CUST-MGFX-BGP-GROUP-IN
  apply IPV6-STD-CUST-EBGP-IN
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply CUST-FABRIC-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy STD-CUST-EBGP-IN-FABRIC-RWA
  if (as-path in as-path-75) then
    drop
  endif
  set local-preference 500
  if (community matches-any COMM_CUST_DEPREF) then
    set local-preference 390
  endif
  if (community matches-any COMM_OVERLOAD) then
    set local-preference 10
  endif
  delete community in COMM_NON_CUST
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (destination or-longer ANYCAST-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_ANYCAST additive
  endif
  if (destination or-longer PRIVATE-IP-SPACE) or (destination or-longer MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
  elseif (destination or-longer GLOBAL-EGRESS-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
  elseif (destination or-longer BYOIP-V4) then
    set local-preference 425
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    set community COMM_FUNC_FABRIC_BYOIP additive
  else
    drop
  endif
end-policy
!
route-policy CUST-FABRIC-RNG-BGP-GROUP-IN
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply STD-CUST-EBGP-IN
  apply CUST-FABRIC-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-AGGREGATE-ROUTE-TAG-100
  set large-community TAG_100_LARGE_COMM additive
  set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
end-policy
!
route-policy IPV6-AGGREGATE-ROUTE-TAG-200
  set large-community TAG_200_LARGE_COMM additive
  set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
end-policy
!
route-policy IPV6-CUST-DACIS-BGP-GROUP-IN
  apply IPV6-STD-PARTNER-IN
  apply IPV6-DACIS-PARTNERS
end-policy
!
route-policy IPV6-FABRIC-AGGREGATE-POLICY
  if large-community matches-any TAG_9111_LARGE_COMM then
    delete community in COMM_NO_EXPORT
    delete community in no-advertise
    delete community all
    delete large-community all
    set large-community TAG_9119_LARGE_COMM
    set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
    set local-preference 500
    set community COMM_ORIGIN_PROPERTY_FABRIC
  endif
end-policy
!
route-policy IPV6-FABRIC-PREFIXES-TO-SWAN
  apply BGP-OVERLOAD
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) and (globalVar1 eq 10293) then
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_AGGREGATE_ROUTE_LARGE_COMM) and (large-community matches-any TAG_9119_LARGE_COMM) then
    set community COMM_ORIGIN_PROPERTY_FABRIC additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (aggregate-contributor) and (globalVar1 eq 10293) then
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (aggregate-contributor) then
    set community AZURE-SUBREGIONAL-LOCALREGION additive
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) and (globalVar1 eq 10293) then
    prepend as-path 4221600001 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (large-community matches-any TAG_9111_LARGE_COMM) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy IPV6-GLOBAL-CUST-DEFAULT-OUT
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) and (destination in (::/0)) then
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (::/0)) then
    prepend as-path 8075
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy CUST-FABRIC-RNG-BGP-GROUP-OUT
  apply SET-NEXT-HOP-SELF
  apply CUST-FABRIC-RNG-LEAK-COMM-OUT
  apply CUST-DEFAULT-OUT-FL
end-policy
!
route-policy CUST-FABRIC-RNG-LEAK-COMM-OUT
  apply BGP-OVERLOAD
  if (community matches-any COMM_FUNC_LEAK_FABRIC) and (globalVar1 eq 10293) then
    set community COMM_OVERLOAD additive
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (community matches-any COMM_FUNC_LEAK_FABRIC) then
    prepend as-path 8075
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  pass
end-policy
!
route-policy IPV4-AGGREGATE-ROUTE-TAG-9119
  if large-community matches-any TAG_9111_LARGE_COMM then
    delete community in COMM_NO_EXPORT
    delete community in no-advertise
    delete community all
    delete large-community all
    set large-community TAG_9119_LARGE_COMM
    set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
    set local-preference 500
    set community COMM_ORIGIN_PROPERTY_FABRIC
  endif
end-policy
!
route-policy IPV6-AGGREGATE-ROUTE-TAG-9119
  set large-community TAG_9119_LARGE_COMM additive
  set large-community TAG_AGGREGATE_ROUTE_LARGE_COMM additive
end-policy
!
route-policy IPV6-CUST-DACIS-BGP-GROUP-OUT
  apply CUST-DACIS-OUT
  apply IPV6-GLOBAL-CUST-DEFAULT-OUT-EXR
end-policy
!
route-policy CUST-FABRIC-SWAN-LEAK-COMM-OUT
  apply BGP-OVERLOAD
  if (community matches-any SWAN_LEAK_COMMUNITY) and (globalVar1 eq 10293) then
    set community COMM_OVERLOAD additive
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (community matches-any SWAN_LEAK_COMMUNITY) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  pass
end-policy
!
route-policy IPV6-EXPORT-LOOPBACK0-TO-FABRIC
  if ((large-community matches-any TAG_REDIST_CONNECTED_LARGE_COMM) and (destination in (2a01:111:2000::1:f000:10d/128))) then
    apply CLEAR-ALL-LARGE-COMM
    done
  else
    pass
  endif
end-policy
!
route-policy IPV6-GLOBAL-CUST-DEFAULT-OUT-FL
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) and (destination in (::/0)) then
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (::/0)) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy REDISTRIBUTE-V4-CONN-TO-BGP-RWA
  if (destination in (10.20.8.129/32, 10.20.8.130/32, 10.3.159.130/32)) then
    set local-preference 400
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
    done
  endif
  if (destination in IPV4-EXCLUDED-Loopbacks) then
    drop
  endif
  if (destination or-longer AZURE-IP-REUSE-SPACE) then
    drop
  endif
  if (destination in (0.0.0.0/0 ge 30) and destination in (0.0.0.0/0 le 31)) then
    set local-preference 400
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
    done
  endif
  if (destination in permit_connected_bgp_exceptions) then
    set local-preference 400
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
    done
  endif
  drop
end-policy
!
route-policy REDISTRIBUTE-V6-CONN-TO-BGP-RWA
  if (destination in IPV6-EXCLUDED-Loopbacks) then
    drop
  endif
  if (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CORE additive
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
  endif
  if (destination or-longer IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CORE additive
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
  endif
  if ((destination in (2000::/3 ge 126)) and (destination in (2000::/3 le 127))) then
    set local-preference 400
    set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
  endif
  drop
end-policy
!
route-policy CUST-FABRIC-RNG-BGP-GROUP-RWA-IN
  apply STD-CUST-EBGP-IN-FABRIC-RWA
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply CUST-FABRIC-IN-RWA
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-GLOBAL-CUST-DEFAULT-OUT-EXR
  apply BGP-OVERLOAD
  if (globalVar1 eq 10293) and (destination in (::/0)) then
    prepend as-path 8075 3
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  if (destination in (::/0)) then
    apply CLEAR-ALL-LARGE-COMM
    done
  endif
  drop
end-policy
!
route-policy IPV6-STD-CUST-EBGP-IN-FABRIC-RWA
  if (as-path in as-path-75) then
    drop
  endif
  set local-preference 500
  if (community matches-any COMM_CUST_DEPREF) then
    set local-preference 390
  endif
  if (community matches-any COMM_OVERLOAD) then
    set local-preference 10
  endif
  delete community in COMM_NON_CUST
  set community COMM_ORIGIN_LOCATION additive
  set community GLOBAL-EXT-CUSTOMER-COMMUNITY additive
  if (destination or-longer IPV6-ANYCAST-IP-SPACE) then
    set community COMM_ROUTE_PUBLIC_ANYCAST additive
  endif
  if (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CUST additive
  elseif (destination or-longer IPV6-GLOBAL-EGRESS-SPACE) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
  elseif (destination or-longer BYOIP-V6) then
    set local-preference 425
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CUST additive
    set community COMM_FUNC_FABRIC_BYOIP additive
  else
    drop
  endif
end-policy
!
route-policy CUST-FABRIC-RNG-BGP-GROUP-RWA-OUT
  apply SET-NEXT-HOP-SELF
  apply CUST-FABRIC-RNG-LEAK-COMM-OUT
  apply CUST-FABRIC-SWAN-LEAK-COMM-OUT
  apply EXPORT-LOOPBACK0-TO-FABRIC
  apply CUST-DEFAULT-OUT
end-policy
!
route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-IN
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply IPV6-STD-CUST-EBGP-IN
  apply CUST-FABRIC-IN
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy REDISTRIBUTE-V4-STATIC-TO-BGP-RWA
  if (destination in deny_static_bgp) then
    drop
  endif
  if (tag is 100) and (destination in permit_static_bgp_anchor) then
    set local-preference 10
    set community ANCHOR additive
    set large-community TAG_100_LARGE_COMM additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
    done
  endif
  if (destination in permit_static_bgp) then
    set local-preference 400
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
  endif
  if (tag is 200) and (destination in permit_static_bgp) then
    set community LEAK_SPECIFICS additive
    set large-community TAG_200_LARGE_COMM additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
    done
  endif
  if (destination in permit_static_bgp) then
    set local-preference 400
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
    done
  endif
  drop
end-policy
!
route-policy REDISTRIBUTE-V6-STATIC-TO-BGP-RWA
  if (tag is 100) and (destination in ipv6_permit_static_bgp_anchor) then
    set local-preference 400
    set community ANCHOR additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
    done
  endif
  if (tag is 200) and (destination in ipv6_permit_static_bgp) then
    set local-preference 400
    set community LEAK_SPECIFICS additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
    done
  endif
  if (destination or-longer IPV6-MICROSOFT-PRIVATE-ROUTES) then
    set community COMM_ROUTE_PRIVATE_SPECIFIC_CORE additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
  endif
  if (destination or-longer IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS) then
    set community COMM_ROUTE_PUBLIC_SPECIFIC_CORE additive
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
  endif
  if (destination in ipv6_permit_static_bgp) then
    set local-preference 400
    set large-community TAG_STATIC_REDIST_ROUTE_LARGE_COMM additive
  endif
  drop
end-policy
!
route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-OUT
  apply IPV6-SET-NEXT-HOP-SELF
  apply CUST-FABRIC-RNG-LEAK-COMM-OUT
  apply IPV6-GLOBAL-CUST-DEFAULT-OUT-FL
end-policy
!
route-policy REDISTRIBUTE-CONN-TO-BGP-TMS-EXPORT
  set large-community TAG_REDIST_CONNECTED_LARGE_COMM additive
end-policy
!
route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA-IN
  apply IPV6-STD-CUST-EBGP-IN-FABRIC-RWA
  apply AZURE-IP-REUSE-SUBREGIONAL
  apply CUST-FABRIC-IN-RWA
  apply TRANSLATE-CUSTOMER-COMMS
end-policy
!
route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA-OUT
  apply IPV6-SET-NEXT-HOP-SELF
  apply CUST-FABRIC-RNG-LEAK-COMM-OUT
  apply CUST-FABRIC-SWAN-LEAK-COMM-OUT
  apply IPV6-EXPORT-LOOPBACK0-TO-FABRIC
  apply IPV6-GLOBAL-CUST-DEFAULT-OUT
end-policy
!
router static address-family ipv4 unicast 10.41.192.0/18 Null0 tag 200
router static address-family ipv4 unicast 10.45.242.0/23 10.3.148.1
router static address-family ipv4 unicast 10.53.0.0/17 Null0 tag 200
router static address-family ipv4 unicast 10.63.252.199/32 192.168.0.3
router static address-family ipv4 unicast 10.64.0.0/18 Null0 tag 200
router static address-family ipv4 unicast 25.64.0.0/10 Null0 tag 200
router static address-family ipv4 unicast 100.88.4.0/22 Null0 tag 200
router static address-family ipv4 unicast 100.126.0.0/16 Null0 tag 200
router static address-family ipv4 unicast 100.127.64.0/18 Null0 tag 200
router static address-family ipv4 unicast 192.0.2.0/24 Null0
router static address-family ipv4 unicast 207.46.32.255/32 Null0
router static address-family ipv6 unicast 100::/64 Null0
router static address-family ipv6 unicast 2001:506:28:9000:ffff:ffff:ffff:ffff/128 Null0
router static vrf MGMT 
router static vrf tms-l3vrf 
router static vrf tms-l3vrf address-family ipv4 unicast 0.0.0.0/0 vrf default
router static vrf tms-l3vrf address-family ipv6 unicast ::/0 vrf default
router static vrf ITEpremium 
router static vrf ITEpremium address-family ipv4 unicast 0.0.0.0/0 vrf default
router static vrf ITEpremium address-family ipv6 unicast ::/0 vrf default
router static vrf MANAGEMENT 
router static vrf MANAGEMENT address-family ipv4 unicast 0.0.0.0/0 10.3.151.1
router static vrf tms-bypass-l3vrf 
router static vrf tms-bypass-l3vrf address-family ipv4 unicast 0.0.0.0/0 vrf tms-l3vrf
router static vrf tms-bypass-l3vrf address-family ipv6 unicast ::/0 vrf tms-l3vrf
router isis 1 
router isis 1 is-type level-2-only
router isis 1 net 49.0001.0100.0315.9130.00
router isis 1 nsr
router isis 1 distribute link-state level 2 throttle 5
router isis 1 nsf ietf
router isis 1 log adjacency changes
router isis 1 lsp-gen-interval initial-wait 0 secondary-wait 200 maximum-wait 2000 level 2
router isis 1 log pdu drops
router isis 1 lsp-refresh-interval 65000
router isis 1 max-lsp-lifetime 65535
router isis 1 lsp-password $PASS$ ISIS level 2
router isis 1 address-family ipv4 unicast 
router isis 1 address-family ipv4 unicast metric-style wide
router isis 1 address-family ipv4 unicast metric 650000
router isis 1 address-family ipv4 unicast advertise passive-only
router isis 1 address-family ipv4 unicast mpls traffic-eng level-2-only
router isis 1 address-family ipv4 unicast mpls traffic-eng router-id Loopback99
router isis 1 address-family ipv4 unicast spf-interval initial-wait 50 secondary-wait 100 maximum-wait 2000 level 2
router isis 1 address-family ipv4 unicast maximum-paths 16
router isis 1 address-family ipv4 unicast redistribute static level-2 route-policy EXPORT-TO-ISIS
router isis 1 address-family ipv4 unicast segment-routing mpls sr-prefer
router isis 1 address-family ipv6 unicast 
router isis 1 address-family ipv6 unicast metric-style wide
router isis 1 address-family ipv6 unicast metric 650000
router isis 1 address-family ipv6 unicast advertise passive-only
router isis 1 address-family ipv6 unicast single-topology
router isis 1 address-family ipv6 unicast segment-routing mpls
router isis 1 interface Bundle-Ether1 
router isis 1 interface Bundle-Ether4 
router isis 1 interface Bundle-Ether131 
router isis 1 interface Bundle-Ether131 circuit-type level-2-only
router isis 1 interface Bundle-Ether131 point-to-point
router isis 1 interface Bundle-Ether131 hello-padding sometimes
router isis 1 interface Bundle-Ether131 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether131 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether131 address-family ipv4 unicast metric 500
router isis 1 interface Bundle-Ether131 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether131 address-family ipv6 unicast metric 500
router isis 1 interface Bundle-Ether135 
router isis 1 interface Bundle-Ether135 circuit-type level-2-only
router isis 1 interface Bundle-Ether135 point-to-point
router isis 1 interface Bundle-Ether135 hello-padding sometimes
router isis 1 interface Bundle-Ether135 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether135 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether135 address-family ipv4 unicast metric 16654321
router isis 1 interface Bundle-Ether135 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether135 address-family ipv6 unicast metric 16654321
router isis 1 interface Bundle-Ether140 
router isis 1 interface Bundle-Ether140 circuit-type level-2-only
router isis 1 interface Bundle-Ether140 point-to-point
router isis 1 interface Bundle-Ether140 hello-padding sometimes
router isis 1 interface Bundle-Ether140 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether140 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether140 address-family ipv4 unicast metric 666074
router isis 1 interface Bundle-Ether140 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether140 address-family ipv6 unicast metric 666074
router isis 1 interface Bundle-Ether149 
router isis 1 interface Bundle-Ether149 circuit-type level-2-only
router isis 1 interface Bundle-Ether149 point-to-point
router isis 1 interface Bundle-Ether149 hello-padding sometimes
router isis 1 interface Bundle-Ether149 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether149 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether149 address-family ipv4 unicast metric 16654321
router isis 1 interface Bundle-Ether149 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether149 address-family ipv6 unicast metric 16654321
router isis 1 interface Bundle-Ether246 
router isis 1 interface Bundle-Ether246 circuit-type level-2-only
router isis 1 interface Bundle-Ether246 point-to-point
router isis 1 interface Bundle-Ether246 hello-padding sometimes
router isis 1 interface Bundle-Ether246 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether246 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether246 address-family ipv4 unicast metric 16654321
router isis 1 interface Bundle-Ether246 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether246 address-family ipv6 unicast metric 16654321
router isis 1 interface Bundle-Ether247 
router isis 1 interface Bundle-Ether247 circuit-type level-2-only
router isis 1 interface Bundle-Ether247 point-to-point
router isis 1 interface Bundle-Ether247 hello-padding sometimes
router isis 1 interface Bundle-Ether247 hello-password $PASS$ ISIS
router isis 1 interface Bundle-Ether247 address-family ipv4 unicast 
router isis 1 interface Bundle-Ether247 address-family ipv4 unicast metric 512345
router isis 1 interface Bundle-Ether247 address-family ipv6 unicast 
router isis 1 interface Bundle-Ether247 address-family ipv6 unicast metric 512345
router isis 1 interface Loopback55 
router isis 1 interface Loopback55 passive
router isis 1 interface Loopback55 address-family ipv4 unicast 
router isis 1 interface Loopback55 address-family ipv4 unicast prefix-sid index 1130
router isis 1 interface Loopback55 address-family ipv6 unicast 
router isis 1 interface Loopback55 address-family ipv6 unicast prefix-sid index 1230
router isis 1 interface Loopback99 
router isis 1 interface Loopback99 passive
router isis 1 interface Loopback99 address-family ipv4 unicast 
router isis 1 interface Loopback99 address-family ipv4 unicast prefix-sid index 130
router isis 1 interface Loopback99 address-family ipv6 unicast 
router isis 1 interface Loopback99 address-family ipv6 unicast prefix-sid index 230
router isis 1 interface HundredGigE0/0/0/6 
router isis 1 interface HundredGigE0/0/0/6 circuit-type level-2-only
router isis 1 interface HundredGigE0/0/0/6 point-to-point
router isis 1 interface HundredGigE0/0/0/6 hello-padding sometimes
router isis 1 interface HundredGigE0/0/0/6 hello-password $PASS$ ISIS
router isis 1 interface HundredGigE0/0/0/6 address-family ipv4 unicast 
router isis 1 interface HundredGigE0/0/0/6 address-family ipv4 unicast metric 2500
router isis 1 interface HundredGigE0/0/0/6 address-family ipv6 unicast 
router isis 1 interface HundredGigE0/0/0/6 address-family ipv6 unicast metric 2500
router isis 1 interface HundredGigE0/0/0/10 
router isis 1 interface HundredGigE0/0/0/10 circuit-type level-2-only
router isis 1 interface HundredGigE0/0/0/10 point-to-point
router isis 1 interface HundredGigE0/0/0/10 hello-padding sometimes
router isis 1 interface HundredGigE0/0/0/10 hello-password $PASS$ ISIS
router isis 1 interface HundredGigE0/0/0/10 address-family ipv4 unicast 
router isis 1 interface HundredGigE0/0/0/10 address-family ipv4 unicast metric 500
router isis 1 interface HundredGigE0/0/0/10 address-family ipv6 unicast 
router isis 1 interface HundredGigE0/0/0/10 address-family ipv6 unicast metric 500
router isis 1 interface HundredGigE0/0/0/19 
router isis 1 interface HundredGigE0/0/0/19 circuit-type level-2-only
router isis 1 interface HundredGigE0/0/0/19 point-to-point
router isis 1 interface HundredGigE0/0/0/19 hello-padding sometimes
router isis 1 interface HundredGigE0/0/0/19 hello-password $PASS$ ISIS
router isis 1 interface HundredGigE0/0/0/19 address-family ipv4 unicast 
router isis 1 interface HundredGigE0/0/0/19 address-family ipv4 unicast metric 500
router isis 1 interface HundredGigE0/0/0/19 address-family ipv6 unicast 
router isis 1 interface HundredGigE0/0/0/19 address-family ipv6 unicast metric 500
router isis 1 interface HundredGigE0/0/0/20 
router isis 1 interface HundredGigE0/0/0/20 circuit-type level-2-only
router isis 1 interface HundredGigE0/0/0/20 point-to-point
router isis 1 interface HundredGigE0/0/0/20 hello-padding sometimes
router isis 1 interface HundredGigE0/0/0/20 hello-password $PASS$ ISIS
router isis 1 interface HundredGigE0/0/0/20 address-family ipv4 unicast 
router isis 1 interface HundredGigE0/0/0/20 address-family ipv4 unicast metric 500
router isis 1 interface HundredGigE0/0/0/20 address-family ipv6 unicast 
router isis 1 interface HundredGigE0/0/0/20 address-family ipv6 unicast metric 500
snmp-server traps isis all
router bgp 8075 
router bgp 8075 bgp router-id 10.3.159.130
router bgp 8075 bgp log neighbor changes detail
router bgp 8075 ibgp policy out enforce-modifications
router bgp 8075 address-family ipv4 unicast 
router bgp 8075 address-family ipv4 unicast additional-paths receive
router bgp 8075 address-family ipv4 unicast additional-paths send
router bgp 8075 address-family ipv4 unicast bgp attribute-download
router bgp 8075 address-family ipv4 unicast maximum-paths ebgp 64
router bgp 8075 address-family ipv4 unicast maximum-paths ibgp 64
router bgp 8075 address-family ipv4 unicast network 10.10.10.0/24
router bgp 8075 address-family ipv4 unicast aggregate-address 10.4.0.0/16 as-set route-policy FABRIC-AGGREGATE-POLICY
router bgp 8075 address-family ipv4 unicast redistribute connected route-policy REDISTRIBUTE-V4-CONN-TO-BGP-RWA
router bgp 8075 address-family ipv4 unicast redistribute static route-policy REDISTRIBUTE-V4-STATIC-TO-BGP-RWA
router bgp 8075 address-family vpnv4 unicast 
router bgp 8075 address-family ipv6 unicast 
router bgp 8075 address-family ipv6 unicast additional-paths receive
router bgp 8075 address-family ipv6 unicast bgp attribute-download
router bgp 8075 address-family ipv6 unicast maximum-paths ebgp 64
router bgp 8075 address-family ipv6 unicast maximum-paths ibgp 64
router bgp 8075 address-family ipv6 unicast aggregate-address 2603:10b0:a07:8200::/56 summary-only route-policy IPV6-AGGREGATE-ROUTE-TAG-9119
router bgp 8075 address-family ipv6 unicast aggregate-address 2603:10b0:a07:8300::/56 summary-only route-policy IPV6-AGGREGATE-ROUTE-TAG-9119
router bgp 8075 address-family ipv6 unicast aggregate-address 2603:10b0:a07:9200::/56 summary-only route-policy IPV6-AGGREGATE-ROUTE-TAG-9119
router bgp 8075 address-family ipv6 unicast aggregate-address 2603:10b0:a07:9300::/56 summary-only route-policy IPV6-AGGREGATE-ROUTE-TAG-9119
router bgp 8075 address-family ipv6 unicast aggregate-address 2a01:111:4004::/56 as-set route-policy FABRIC-AGGREGATE-POLICY
router bgp 8075 address-family ipv6 unicast redistribute connected route-policy REDISTRIBUTE-V6-CONN-TO-BGP-RWA
router bgp 8075 address-family ipv6 unicast redistribute static route-policy REDISTRIBUTE-V6-STATIC-TO-BGP-RWA
router bgp 8075 address-family vpnv6 unicast 
router bgp 8075 address-family link-state link-state 
router bgp 8075 neighbor-group BGP-LS 
router bgp 8075 neighbor-group BGP-LS remote-as 8075
router bgp 8075 neighbor-group BGP-LS local address 10.3.148.123
router bgp 8075 neighbor-group BGP-LS update-source Loopback99
router bgp 8075 neighbor-group BGP-LS address-family ipv4 unicast 
router bgp 8075 neighbor-group BGP-LS address-family link-state link-state 
router bgp 8075 neighbor-group RWA-SWAN 
router bgp 8075 neighbor-group RWA-SWAN remote-as 8074
router bgp 8075 neighbor-group RWA-SWAN local-as 4221600001 no-prepend replace-as
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast 
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast send-community-ebgp
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast multipath
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast route-policy RWA-SWAN-IN in
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast route-policy RWA-SWAN-OUT out
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast remove-private-AS entire-aspath
router bgp 8075 neighbor-group RWA-SWAN address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group BGP-MONITOR 
router bgp 8075 neighbor-group BGP-MONITOR remote-as 8075
router bgp 8075 neighbor-group BGP-MONITOR description BGP Group for all read only bgp monitoring tools
router bgp 8075 neighbor-group BGP-MONITOR local address 10.3.159.130
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv4 unicast 
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv4 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv4 unicast route-policy BGP-MONITOR-OUT out
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv6 unicast 
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv6 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group BGP-MONITOR address-family ipv6 unicast route-policy BGP-MONITOR-OUT out
router bgp 8075 neighbor-group IPV6-RWA-SWAN 
router bgp 8075 neighbor-group IPV6-RWA-SWAN remote-as 8074
router bgp 8075 neighbor-group IPV6-RWA-SWAN local-as 4221600001 no-prepend replace-as
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast send-community-ebgp
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast route-policy IPV6-RWA-SWAN-IN in
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast route-policy IPV6-RWA-SWAN-OUT out
router bgp 8075 neighbor-group IPV6-RWA-SWAN address-family ipv6 unicast remove-private-AS
router bgp 8075 neighbor-group IRR-MESH-IPV4 
router bgp 8075 neighbor-group IRR-MESH-IPV4 remote-as 8075
router bgp 8075 neighbor-group IRR-MESH-IPV4 graceful-maintenance 
router bgp 8075 neighbor-group IRR-MESH-IPV4 graceful-maintenance local-preference 10
router bgp 8075 neighbor-group IRR-MESH-IPV4 description "Regional-IPV4-IRR-Mesh:wan@microsoft.com"
router bgp 8075 neighbor-group IRR-MESH-IPV4 local address 10.3.159.130
router bgp 8075 neighbor-group IRR-MESH-IPV4 update-source Loopback99
router bgp 8075 neighbor-group IRR-MESH-IPV4 address-family ipv4 unicast 
router bgp 8075 neighbor-group IRR-MESH-IPV4 address-family ipv4 unicast multipath
router bgp 8075 neighbor-group IRR-MESH-IPV4 address-family ipv4 unicast route-policy IRR-MESH-IPV4-IN in
router bgp 8075 neighbor-group IRR-MESH-IPV4 address-family ipv4 unicast route-policy IRR-MESH-IPV4-OUT out
router bgp 8075 neighbor-group IRR-MESH-IPV6 
router bgp 8075 neighbor-group IRR-MESH-IPV6 remote-as 8075
router bgp 8075 neighbor-group IRR-MESH-IPV6 graceful-maintenance 
router bgp 8075 neighbor-group IRR-MESH-IPV6 graceful-maintenance local-preference 10
router bgp 8075 neighbor-group IRR-MESH-IPV6 description "Regional-IPV6-IRR-Mesh:wan@microsoft.com"
router bgp 8075 neighbor-group IRR-MESH-IPV6 update-source Loopback99
router bgp 8075 neighbor-group IRR-MESH-IPV6 address-family ipv6 unicast 
router bgp 8075 neighbor-group IRR-MESH-IPV6 address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IRR-MESH-IPV6 address-family ipv6 unicast route-policy IRR-MESH-IPV6-IN in
router bgp 8075 neighbor-group IRR-MESH-IPV6 address-family ipv6 unicast route-policy IRR-MESH-IPV6-OUT out
router bgp 8075 neighbor-group GLOBAL-EBGP-AR 
router bgp 8075 neighbor-group GLOBAL-EBGP-AR remote-as 64512
router bgp 8075 neighbor-group GLOBAL-EBGP-AR address-family ipv4 unicast 
router bgp 8075 neighbor-group GLOBAL-EBGP-AR address-family ipv4 unicast send-community-ebgp
router bgp 8075 neighbor-group GLOBAL-EBGP-AR address-family ipv4 unicast multipath
router bgp 8075 neighbor-group GLOBAL-EBGP-AR address-family ipv4 unicast route-policy GLOBAL-EBGP-AR-IN in
router bgp 8075 neighbor-group GLOBAL-EBGP-AR address-family ipv4 unicast route-policy GLOBAL-EBGP-AR-OUT out
router bgp 8075 neighbor-group ixia-ebgp-3434 
router bgp 8075 neighbor-group ixia-ebgp-3434 remote-as 3434
router bgp 8075 neighbor-group ixia-ebgp-3434 description BGP-LS testing
router bgp 8075 neighbor-group ixia-ebgp-3434 address-family ipv4 unicast 
router bgp 8075 neighbor-group ixia-ebgp-3434 address-family ipv4 unicast route-policy PASS-ALL-LOCAL-PREF-400 in
router bgp 8075 neighbor-group ixia-ebgp-3434 address-family ipv4 unicast route-policy PASS-ALL out
router bgp 8075 neighbor-group ixia-ebgp-64602 
router bgp 8075 neighbor-group ixia-ebgp-64602 remote-as 64602
router bgp 8075 neighbor-group ixia-ebgp-64602 graceful-maintenance 
router bgp 8075 neighbor-group ixia-ebgp-64602 graceful-maintenance local-preference 10
router bgp 8075 neighbor-group ixia-ebgp-64602 description wan-automation-test
router bgp 8075 neighbor-group ixia-ebgp-64602 address-family ipv4 unicast 
router bgp 8075 neighbor-group ixia-ebgp-64602 address-family ipv4 unicast route-policy ixia-ebgp-64602-in in
router bgp 8075 neighbor-group ixia-ebgp-64602 address-family ipv4 unicast route-policy PASS-ALL out
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 remote-as 8075
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 cluster-id 10.3.159.130
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 update-source Loopback99
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast 
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast multipath
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast route-policy IER-CLIENTS-IPV4-IN in
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast route-reflector-client
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast route-policy IER-CLIENTS-IPV4-OUT out
router bgp 8075 neighbor-group IER-CLIENTS-IPV4 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 remote-as 8075
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 cluster-id 10.3.159.130
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 update-source Loopback99
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast 
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast route-policy IER-CLIENTS-IPV6-IN in
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast route-reflector-client
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast route-policy IER-CLIENTS-IPV6-OUT out
router bgp 8075 neighbor-group IER-CLIENTS-IPV6 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT 
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT remote-as 8075
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT description BGP Group for BYOIP and Congestion Mitigation
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT update-source Loopback99
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv4 unicast 
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv4 unicast multipath
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv4 unicast route-policy ITE-IBGP-CONDUIT-IN in
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv4 unicast route-policy DENY-ALL out
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv6 unicast 
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv6 unicast multipath
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv6 unicast route-policy ITE-IBGP-CONDUIT-IN in
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv6 unicast route-policy DENY-ALL out
router bgp 8075 neighbor-group ITE-IBGP-CONDUIT address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS 
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS description "CUST:CIS:Azure DDOS"
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast maximum-prefix 4000 90 restart 45
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast multipath
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast route-policy DDOS-GEO-IN in
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast route-policy DENY-ALL out
router bgp 8075 neighbor-group CUST-CIS-BGP-DDOS address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 remote-as 3434
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 description BGP-LS testing
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 address-family ipv6 unicast 
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 address-family ipv6 unicast route-policy PASS-ALL-LOCAL-PREF-400 in
router bgp 8075 neighbor-group ixia-ebgp-3434_v6 address-family ipv6 unicast route-policy PASS-ALL out
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP 
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP remote-as 4210000076
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP address-family ipv4 unicast maximum-prefix 50000 90 restart 45
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP address-family ipv4 unicast route-policy CUST-OOB-IN in
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP address-family ipv4 unicast route-policy GLOBAL-CUST-DEFAULT-OUT out
router bgp 8075 neighbor-group CUST-OOB-BGP-GROUP address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER 
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER remote-as 8075
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER description VPNv4 and VPNv6 Clients
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER local address 10.30.159.130
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER update-source Loopback99
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv4 unicast 
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv4 unicast route-policy PASS-ALL in
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv4 unicast route-policy PASS-ALL out
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv6 unicast 
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv6 unicast route-policy PASS-ALL in
router bgp 8075 neighbor-group VPNV4-VPNV6-SERVER address-family vpnv6 unicast route-policy PASS-ALL out
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP 
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP description "CUST:MGFX:apnetesc@microsoft.com"
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP address-family ipv4 unicast multipath
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP address-family ipv4 unicast route-policy CUST-MGFX-BGP-GROUP-IN in
router bgp 8075 neighbor-group CUST-MGFX-BGP-GROUP address-family ipv4 unicast route-policy GLOBAL-CUST-DEFAULT-OUT out
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR 
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR remote-as 64512
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR address-family ipv6 unicast send-community-ebgp
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR address-family ipv6 unicast route-policy IPV6-GLOBAL-EBGP-AR-IN in
router bgp 8075 neighbor-group IPV6-GLOBAL-EBGP-AR address-family ipv6 unicast route-policy IPV6-GLOBAL-EBGP-AR-OUT out
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP 
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP remote-as 12076
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP graceful-maintenance 
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP graceful-maintenance local-preference 10
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP graceful-maintenance as-prepends 3
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP description Azure Direct Attached peer group
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP address-family ipv4 unicast maximum-prefix 5000 90 restart 45
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP address-family ipv4 unicast multipath
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP address-family ipv4 unicast route-policy CUST-DACIS-BGP-GROUP-IN in
router bgp 8075 neighbor-group CUST-DACIS-BGP-GROUP address-family ipv4 unicast route-policy CUST-DACIS-BGP-GROUP-OUT out
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST 
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST remote-as 8075
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST timers 3 9
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST description iBGP Anchor Clients
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST update-source Loopback99
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST address-family ipv4 unicast 
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST address-family ipv4 unicast multipath
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST address-family ipv4 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST address-family ipv4 unicast route-reflector-client
router bgp 8075 neighbor-group EWA-CLIENTS-IPV4-FAST address-family ipv4 unicast route-policy IER-CLIENTS-IPV4-ANCHOR-OUT out
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST 
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST remote-as 8075
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST timers 3 9
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST description iBGP Anchor Clients
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST update-source Loopback55
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST address-family ipv6 unicast 
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST address-family ipv6 unicast multipath
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST address-family ipv6 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST address-family ipv6 unicast route-reflector-client
router bgp 8075 neighbor-group EWA-CLIENTS-IPV6-FAST address-family ipv6 unicast route-policy IER-CLIENTS-IPV6-ANCHOR-OUT out
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS 
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS description "IPV6:CUST:CIS:Azure DDOS"
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast maximum-prefix 4000 90 restart 45
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast route-policy DDOS-GEO-IN in
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast route-policy DENY-ALL out
router bgp 8075 neighbor-group IPV6-CUST-CIS-BGP-DDOS address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR 
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR remote-as 8075
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR timers 3 9
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR description iBGP Anchor Clients
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR update-source Loopback99
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR address-family ipv4 unicast 
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR address-family ipv4 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group IER-CLIENTS-IPV4-ANCHOR address-family ipv4 unicast route-policy IER-CLIENTS-IPV4-ANCHOR-OUT out
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR 
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR remote-as 8075
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR timers 3 9
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR description iBGP Anchor Clients
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR update-source Loopback99
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR address-family ipv6 unicast 
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR address-family ipv6 unicast route-policy DENY-ALL in
router bgp 8075 neighbor-group IER-CLIENTS-IPV6-ANCHOR address-family ipv6 unicast route-policy IER-CLIENTS-IPV6-ANCHOR-OUT out
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP 
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP description "CUST:MGFX:apnetesc@microsoft.com"
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP address-family ipv6 unicast route-policy IPV6-CUST-MGFX-BGP-GROUP-IN in
router bgp 8075 neighbor-group IPV6-CUST-MGFX-BGP-GROUP address-family ipv6 unicast route-policy IPV6-GLOBAL-CUST-DEFAULT-OUT out
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP 
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP description "CUST:FABRIC:apnetesc@microsoft.com"
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP address-family ipv4 unicast send-community-ebgp
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP address-family ipv4 unicast multipath
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP address-family ipv4 unicast route-policy CUST-FABRIC-RNG-BGP-GROUP-IN in
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP address-family ipv4 unicast route-policy CUST-FABRIC-RNG-BGP-GROUP-OUT out
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP 
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP remote-as 12076
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP description "Azure Direct Attached peer group"
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP address-family ipv6 unicast maximum-prefix 5000 90 restart 45
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP address-family ipv6 unicast route-policy IPV6-CUST-DACIS-BGP-GROUP-IN in
router bgp 8075 neighbor-group IPV6-CUST-DACIS-BGP-GROUP address-family ipv6 unicast route-policy IPV6-CUST-DACIS-BGP-GROUP-OUT out
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA 
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA description CUST:FABRIC:apnetesc@microsoft.com
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv4 unicast 
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv4 unicast send-community-ebgp
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv4 unicast multipath
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv4 unicast route-policy CUST-FABRIC-RNG-BGP-GROUP-RWA-IN in
router bgp 8075 neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv4 unicast route-policy CUST-FABRIC-RNG-BGP-GROUP-RWA-OUT out
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP 
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP description "CUST:FABRIC:apnetesc@microsoft.com"
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP address-family ipv6 unicast send-community-ebgp
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP address-family ipv6 unicast route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-IN in
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP address-family ipv6 unicast route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-OUT out
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA 
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA description CUST:FABRIC:apnetesc@microsoft.com
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv6 unicast 
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv6 unicast send-community-ebgp
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv6 unicast multipath
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv6 unicast route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA-IN in
router bgp 8075 neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA address-family ipv6 unicast route-policy IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA-OUT out
router bgp 8075 neighbor 2b::1 
router bgp 8075 neighbor 2b::1 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 2b::1 description Unmeshed IER
router bgp 8075 neighbor 1.1.1.1 
router bgp 8075 neighbor 1.1.1.1 use neighbor-group IER-CLIENTS-IPV4
router bgp 8075 neighbor 1.1.1.1 description Unmeshed IER
router bgp 8075 neighbor 2a55::2 
router bgp 8075 neighbor 2a55::2 remote-as 64915
router bgp 8075 neighbor 2a55::2 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a75::2 
router bgp 8075 neighbor 2a75::2 use neighbor-group ixia-ebgp-3434_v6
router bgp 8075 neighbor 2a75::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a75::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a98::2 
router bgp 8075 neighbor 2a98::2 remote-as 64915
router bgp 8075 neighbor 2a98::2 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a98::2 description ixia-2/1
router bgp 8075 neighbor 2a98::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a98::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 55.1.0.1 
router bgp 8075 neighbor 55.1.0.1 remote-as 64915
router bgp 8075 neighbor 55.1.0.1 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 75.1.0.1 
router bgp 8075 neighbor 75.1.0.1 use neighbor-group ixia-ebgp-3434
router bgp 8075 neighbor 75.1.0.1 address-family ipv4 unicast 
router bgp 8075 neighbor 75.1.0.1 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 98.1.0.1 
router bgp 8075 neighbor 98.1.0.1 remote-as 64915
router bgp 8075 neighbor 98.1.0.1 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 98.1.0.1 description ixia-7/6
router bgp 8075 neighbor 98.1.0.1 address-family ipv4 unicast 
router bgp 8075 neighbor 98.1.0.1 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.10.10.2 
router bgp 8075 neighbor 10.10.10.2 remote-as 8075
router bgp 8075 neighbor 10.10.10.2 description IXIA:10.3.145.24:9/5
router bgp 8075 neighbor 10.10.10.2 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.0.3 
router bgp 8075 neighbor 61.100.0.3 remote-as 64602
router bgp 8075 neighbor 61.100.0.3 use neighbor-group ixia-ebgp-64602
router bgp 8075 neighbor 61.100.0.3 local address 61.100.0.2
router bgp 8075 neighbor 61.100.0.3 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.0.3 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.106.1.97 
router bgp 8075 neighbor 10.106.1.97 remote-as 64991
router bgp 8075 neighbor 10.106.1.97 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP
router bgp 8075 neighbor 10.3.159.14 
router bgp 8075 neighbor 10.3.159.14 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.14 description rwa01.str05
router bgp 8075 neighbor 10.3.159.14 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.14 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.14 address-family vpnv4 unicast 
router bgp 8075 neighbor 10.3.159.14 address-family vpnv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.15 
router bgp 8075 neighbor 10.3.159.15 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.15 description rwa01.str04
router bgp 8075 neighbor 10.3.159.15 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.15 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.43 
router bgp 8075 neighbor 10.3.159.43 use neighbor-group IER-CLIENTS-IPV4
router bgp 8075 neighbor 10.3.159.75 
router bgp 8075 neighbor 10.3.159.75 use neighbor-group EWA-CLIENTS-IPV4-FAST
router bgp 8075 neighbor 10.3.159.75 description ewa04.str40
router bgp 8075 neighbor 10.3.159.85 
router bgp 8075 neighbor 10.3.159.85 use neighbor-group IER-CLIENTS-IPV4
router bgp 8075 neighbor 10.3.159.85 description ier01.str50
router bgp 8075 neighbor 61.100.0.51 
router bgp 8075 neighbor 61.100.0.51 remote-as 64650
router bgp 8075 neighbor 61.100.0.51 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 61.100.0.51 description IXIA.21:3/1::wan_auto_test::RESERVED
router bgp 8075 neighbor 61.100.0.51 local address 61.100.0.50
router bgp 8075 neighbor 61.100.0.51 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.0.51 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 61.100.0.53 
router bgp 8075 neighbor 61.100.0.53 remote-as 64652
router bgp 8075 neighbor 61.100.0.53 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 61.100.0.53 description IXIA.21:3/2::wan_auto_test::RESERVED
router bgp 8075 neighbor 61.100.0.53 local address 61.100.0.52
router bgp 8075 neighbor 61.100.0.53 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.0.53 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 61.100.10.1 
router bgp 8075 neighbor 61.100.10.1 remote-as 64915
router bgp 8075 neighbor 61.100.10.1 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 61.100.10.1 description IXIA-automation_port10
router bgp 8075 neighbor 61.100.10.1 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.10.1 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 61.100.11.1 
router bgp 8075 neighbor 61.100.11.1 remote-as 64915
router bgp 8075 neighbor 61.100.11.1 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 61.100.11.1 description IXIA.24LC6P6::wan_auto_test::RESERVED
router bgp 8075 neighbor 61.100.11.1 local address 61.100.11.0
router bgp 8075 neighbor 61.100.11.1 address-family ipv4 unicast 
router bgp 8075 neighbor 61.100.11.1 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.125 
router bgp 8075 neighbor 10.3.159.125 use neighbor-group EWA-CLIENTS-IPV4-FAST
router bgp 8075 neighbor 10.3.159.125 description ewa03.str40
router bgp 8075 neighbor 10.3.159.145 
router bgp 8075 neighbor 10.3.159.145 use neighbor-group EWA-CLIENTS-IPV4-FAST
router bgp 8075 neighbor 10.3.159.145 description ewa02.str40
router bgp 8075 neighbor 10.3.159.175 
router bgp 8075 neighbor 10.3.159.175 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.175 description rwa02.str15
router bgp 8075 neighbor 10.3.159.175 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.175 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.178 
router bgp 8075 neighbor 10.3.159.178 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.178 description ear01.str06
router bgp 8075 neighbor 10.3.159.178 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.178 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.184 
router bgp 8075 neighbor 10.3.159.184 use neighbor-group EWA-CLIENTS-IPV4-FAST
router bgp 8075 neighbor 10.3.159.184 description ewa01.str40
router bgp 8075 neighbor 10.3.159.196 
router bgp 8075 neighbor 10.3.159.196 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.196 description str-96c-2a
router bgp 8075 neighbor 10.3.159.196 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.196 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.197 
router bgp 8075 neighbor 10.3.159.197 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.197 description str05-96c-2b
router bgp 8075 neighbor 10.3.159.197 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.197 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.205 
router bgp 8075 neighbor 10.3.159.205 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.205 description ear01.str07
router bgp 8075 neighbor 10.3.159.205 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.205 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.3.159.239 
router bgp 8075 neighbor 10.3.159.239 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 10.3.159.239 description ear01.str07
router bgp 8075 neighbor 10.3.159.239 address-family ipv4 unicast 
router bgp 8075 neighbor 10.3.159.239 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 10.30.159.14 
router bgp 8075 neighbor 10.30.159.14 use neighbor-group VPNV4-VPNV6-SERVER
router bgp 8075 neighbor 10.30.159.14 description rwa01.str05
router bgp 8075 neighbor 10.30.159.15 
router bgp 8075 neighbor 10.30.159.15 use neighbor-group VPNV4-VPNV6-SERVER
router bgp 8075 neighbor 100.100.47.1 
router bgp 8075 neighbor 100.100.47.1 use neighbor-group BGP-LS
router bgp 8075 neighbor 100.100.47.2 
router bgp 8075 neighbor 100.100.47.2 use neighbor-group BGP-LS
router bgp 8075 neighbor 100.100.47.3 
router bgp 8075 neighbor 100.100.47.3 use neighbor-group BGP-LS
router bgp 8075 neighbor 100.3.151.28 
router bgp 8075 neighbor 100.3.151.28 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 100.3.151.28 description str-96c-4a
router bgp 8075 neighbor 100.3.151.28 address-family ipv4 unicast 
router bgp 8075 neighbor 100.3.151.28 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 100.3.151.52 
router bgp 8075 neighbor 100.3.151.52 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 100.3.151.52 description irr01.str05
router bgp 8075 neighbor 100.3.151.52 address-family ipv4 unicast 
router bgp 8075 neighbor 100.3.151.52 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 100.3.151.54 
router bgp 8075 neighbor 100.3.151.54 use neighbor-group IRR-MESH-IPV4
router bgp 8075 neighbor 100.3.151.54 description "irr01.str04"
router bgp 8075 neighbor 100.3.151.54 address-family vpnv4 unicast 
router bgp 8075 neighbor 100.3.151.54 address-family vpnv6 unicast 
router bgp 8075 neighbor 172.17.156.0 
router bgp 8075 neighbor 172.17.156.0 use neighbor-group RWA-SWAN
router bgp 8075 neighbor 172.20.102.8 
router bgp 8075 neighbor 172.20.102.8 remote-as 65491
router bgp 8075 neighbor 172.20.102.8 use neighbor-group CUST-OOB-BGP-GROUP
router bgp 8075 neighbor 172.20.102.8 description ovh02.str15:HundredGigE0/2/0
router bgp 8075 neighbor 172.20.140.1 
router bgp 8075 neighbor 172.20.140.1 use neighbor-group RWA-SWAN
router bgp 8075 neighbor 172.20.140.1 description owr02.str15
router bgp 8075 neighbor 172.20.140.1 address-family ipv4 unicast 
router bgp 8075 neighbor 172.20.140.1 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 25.71.46.195 
router bgp 8075 neighbor 25.71.46.195 use neighbor-group ITE-IBGP-CONDUIT
router bgp 8075 neighbor 25.71.46.195 description dsm01p
router bgp 8075 neighbor 10.30.159.175 
router bgp 8075 neighbor 10.30.159.175 use neighbor-group VPNV4-VPNV6-SERVER
router bgp 8075 neighbor 10.45.241.216 
router bgp 8075 neighbor 10.45.241.216 use neighbor-group BGP-LS
router bgp 8075 neighbor 10.45.241.221 
router bgp 8075 neighbor 10.45.241.221 use neighbor-group BGP-LS
router bgp 8075 neighbor 10.45.241.222 
router bgp 8075 neighbor 10.45.241.222 use neighbor-group BGP-LS
router bgp 8075 neighbor 10.45.243.182 
router bgp 8075 neighbor 10.45.243.182 use neighbor-group BGP-LS
router bgp 8075 neighbor 10.45.243.185 
router bgp 8075 neighbor 10.45.243.185 use neighbor-group BGP-LS
router bgp 8075 neighbor 10.52.180.163 
router bgp 8075 neighbor 10.52.180.163 use neighbor-group BGP-MONITOR
router bgp 8075 neighbor 10.52.180.163 description Azure BGP MON Project, IGNORE ALARMS contact azurenda
router bgp 8075 neighbor 10.63.252.199 
router bgp 8075 neighbor 10.63.252.199 use neighbor-group BGP-LS
router bgp 8075 neighbor 192.168.100.4 
router bgp 8075 neighbor 192.168.100.4 use neighbor-group BGP-LS
router bgp 8075 neighbor 192.168.100.5 
router bgp 8075 neighbor 192.168.100.5 use neighbor-group BGP-LS
router bgp 8075 neighbor 25.106.191.133 
router bgp 8075 neighbor 25.106.191.133 remote-as 64582
router bgp 8075 neighbor 25.106.191.133 use neighbor-group CUST-MGFX-BGP-GROUP
router bgp 8075 neighbor 25.106.191.133 description NEW-PHX10-0100-0100-01MA
router bgp 8075 neighbor 25.106.192.133 
router bgp 8075 neighbor 25.106.192.133 remote-as 64582
router bgp 8075 neighbor 25.106.192.133 use neighbor-group GLOBAL-EBGP-AR
router bgp 8075 neighbor 25.106.192.133 description OLD-PHX10-0100-0100-01MA
router bgp 8075 neighbor 2a61:100:10::2 
router bgp 8075 neighbor 2a61:100:10::2 remote-as 64915
router bgp 8075 neighbor 2a61:100:10::2 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a61:100:10::2 description IXIA-automation_port10
router bgp 8075 neighbor 2a61:100:10::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a61:100:10::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a61:100:11::2 
router bgp 8075 neighbor 2a61:100:11::2 remote-as 64915
router bgp 8075 neighbor 2a61:100:11::2 use neighbor-group CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a61:100:11::2 description IXIA-automation_port11
router bgp 8075 neighbor 2a61:100:11::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a61:100:11::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a61:100:19::2 
router bgp 8075 neighbor 2a61:100:19::2 remote-as 64602
router bgp 8075 neighbor 2a61:100:19::2 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a61:100:19::2 description IXIA.24LC6P4:::wan_auto_test::RESERVED
router bgp 8075 neighbor 2a61:100:19::2 local address 2a61:100:19::1
router bgp 8075 neighbor 2a61:100:19::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a61:100:19::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a61:100:50::2 
router bgp 8075 neighbor 2a61:100:50::2 remote-as 64650
router bgp 8075 neighbor 2a61:100:50::2 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a61:100:50::2 description IXIA.21:3/1::wan_auto_test::RESERVED
router bgp 8075 neighbor 2a61:100:50::2 local address 2a61:100:50::1
router bgp 8075 neighbor 2a61:100:50::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a61:100:50::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a61:100:52::2 
router bgp 8075 neighbor 2a61:100:52::2 remote-as 64652
router bgp 8075 neighbor 2a61:100:52::2 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
router bgp 8075 neighbor 2a61:100:52::2 description IXIA.21:3/2::wan_auto_test::RESERVED
router bgp 8075 neighbor 2a61:100:52::2 local address 2a61:100:52::1
router bgp 8075 neighbor 2a61:100:52::2 address-family ipv6 unicast 
router bgp 8075 neighbor 2a61:100:52::2 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2603:10e2:350::8e 
router bgp 8075 neighbor 2603:10e2:350::8e remote-as 64582
router bgp 8075 neighbor 2603:10e2:350::8e use neighbor-group IPV6-GLOBAL-EBGP-AR
router bgp 8075 neighbor 2603:10e2:350::8e description OLD-PHX10-0100-0100-01MA
router bgp 8075 neighbor 2603:10e2:351::8e 
router bgp 8075 neighbor 2603:10e2:351::8e remote-as 64582
router bgp 8075 neighbor 2603:10e2:351::8e use neighbor-group IPV6-CUST-MGFX-BGP-GROUP
router bgp 8075 neighbor 2603:10e2:351::8e description NEW-PHX10-0100-0100-01MA
router bgp 8075 neighbor 2603:1090:40b:34::6 
router bgp 8075 neighbor 2603:1090:40b:34::6 remote-as 64991
router bgp 8075 neighbor 2603:1090:40b:34::6 use neighbor-group IPV6-CUST-FABRIC-RNG-BGP-GROUP
router bgp 8075 neighbor 2a01:111:e210:b::28 
router bgp 8075 neighbor 2a01:111:e210:b::28 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:b::28 description str-96c-4a
router bgp 8075 neighbor 2a01:111:e210:b::28 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:b::28 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:b::52 
router bgp 8075 neighbor 2a01:111:e210:b::52 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:b::52 description irr01.str05
router bgp 8075 neighbor 2a01:111:e210:b::54 
router bgp 8075 neighbor 2a01:111:e210:b::54 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:b::159:43 
router bgp 8075 neighbor 2a01:111:e210:b::159:43 use neighbor-group IER-CLIENTS-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:14 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:14 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:14 description rwa01.str05
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:14 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:14 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:15 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:15 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:15 description rwa01.str04
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:15 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:15 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:75 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:75 use neighbor-group EWA-CLIENTS-IPV6-FAST
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:75 description ewa04.str40_ipv6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:85 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:85 remote-as 8075
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:85 use neighbor-group IER-CLIENTS-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:85 description ier01.str50
router bgp 8075 neighbor 2a01:111:e210:1:192:168:0:3 
router bgp 8075 neighbor 2a01:111:e210:1:192:168:0:3 remote-as 8074
router bgp 8075 neighbor 2a01:111:e210:1:192:168:0:3 description STR05-0100-0001-01SW
router bgp 8075 neighbor 2a01:111:e210:0:172:20:140:2 
router bgp 8075 neighbor 2a01:111:e210:0:172:20:140:2 use neighbor-group IPV6-RWA-SWAN
router bgp 8075 neighbor 2a01:111:e210:0:172:20:140:2 description owr02.str15
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:125 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:125 use neighbor-group EWA-CLIENTS-IPV6-FAST
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:125 description ewa03.str40
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:145 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:145 use neighbor-group EWA-CLIENTS-IPV6-FAST
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:145 description ewa02.str40
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:175 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:175 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:175 description rwa02.str15
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:175 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:175 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:178 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:178 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:178 description ear01.str06
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:178 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:178 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:184 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:184 use neighbor-group EWA-CLIENTS-IPV6-FAST
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:184 description ewa01.str40
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:196 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:196 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:196 description str-96c-2a
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:196 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:196 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:197 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:197 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:197 description str05-96c-2b
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:197 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:197 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:205 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:205 use neighbor-group IRR-MESH-IPV6
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:205 description ear01.str07
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:205 address-family ipv6 unicast 
router bgp 8075 neighbor 2a01:111:e210:1:10:3:159:205 address-family ipv6 unicast soft-reconfiguration inbound always
router bgp 8075 vrf tms-l3vrf 
router bgp 8075 vrf tms-l3vrf address-family ipv4 unicast 
router bgp 8075 vrf tms-l3vrf address-family ipv4 unicast label mode per-vrf
router bgp 8075 vrf tms-l3vrf address-family ipv4 unicast maximum-paths ebgp 64
router bgp 8075 vrf tms-l3vrf address-family ipv4 unicast redistribute connected route-policy REDISTRIBUTE-CONN-TO-BGP-TMS-EXPORT
router bgp 8075 vrf tms-l3vrf address-family ipv6 unicast 
router bgp 8075 vrf tms-l3vrf address-family ipv6 unicast label mode per-vrf
router bgp 8075 vrf tms-l3vrf address-family ipv6 unicast maximum-paths ebgp 64
router bgp 8075 vrf tms-l3vrf address-family ipv6 unicast redistribute connected route-policy REDISTRIBUTE-CONN-TO-BGP-TMS-EXPORT
router bgp 8075 vrf tms-l3vrf neighbor 136.0.0.2 
router bgp 8075 vrf tms-l3vrf neighbor 136.0.0.2 remote-as 64991
router bgp 8075 vrf tms-l3vrf neighbor 136.0.0.2 use neighbor-group CUST-CIS-BGP-DDOS
router bgp 8075 vrf tms-l3vrf neighbor 136.0.0.2 shutdown
router bgp 8075 vrf tms-l3vrf neighbor 136.0.0.2 description ixia-fl-ddos
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 remote-as 64602
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 use neighbor-group ixia-ebgp-64602
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 local address 61.100.0.2
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 address-family ipv4 unicast 
router bgp 8075 vrf tms-l3vrf neighbor 61.100.0.3 address-family ipv4 unicast soft-reconfiguration inbound always
router bgp 8075 vrf tms-l3vrf neighbor 10.106.1.97 
router bgp 8075 vrf tms-l3vrf neighbor 10.106.1.97 remote-as 64991
router bgp 8075 vrf tms-l3vrf neighbor 10.106.1.97 use neighbor-group CUST-CIS-BGP-DDOS
router bgp 8075 vrf tms-l3vrf neighbor 10.106.1.97 shutdown
router bgp 8075 vrf tms-l3vrf neighbor 10.106.1.97 description ixia-fl-ddos
router bgp 8075 vrf tms-l3vrf neighbor 2011:136::2 
router bgp 8075 vrf tms-l3vrf neighbor 2011:136::2 remote-as 64991
router bgp 8075 vrf tms-l3vrf neighbor 2011:136::2 use neighbor-group IPV6-CUST-CIS-BGP-DDOS
router bgp 8075 vrf tms-l3vrf neighbor 2011:136::2 shutdown
router bgp 8075 vrf tms-l3vrf neighbor 2011:136::2 description v6-ixia-fl-ddos
router bgp 8075 vrf tms-l3vrf neighbor 2603:1090:40b:34::6 
router bgp 8075 vrf tms-l3vrf neighbor 2603:1090:40b:34::6 remote-as 64991
router bgp 8075 vrf tms-l3vrf neighbor 2603:1090:40b:34::6 use neighbor-group IPV6-CUST-CIS-BGP-DDOS
router bgp 8075 vrf tms-l3vrf neighbor 2603:1090:40b:34::6 shutdown
router bgp 8075 vrf tms-l3vrf neighbor 2603:1090:40b:34::6 description v6-ixia-fl-ddos
router bgp 8075 vrf ITEpremium 
router bgp 8075 vrf ITEpremium address-family ipv4 unicast 
router bgp 8075 vrf ITEpremium address-family ipv6 unicast 
router bgp 8075 vrf MANAGEMENt 
router bgp 8075 vrf tms-bypass-l3vrf 
router bgp 8075 vrf tms-bypass-l3vrf address-family ipv4 unicast 
router bgp 8075 vrf tms-bypass-l3vrf address-family ipv6 unicast 
cef bcdl route-prioritization mode cross-afi
cef proactive-arp-nd enable
mpls oam 
snmp-server traps mpls traffic-eng up
snmp-server traps mpls traffic-eng down
snmp-server traps mpls traffic-eng reroute
snmp-server traps mpls ldp up
snmp-server traps mpls ldp down
snmp-server traps mpls ldp threshold
snmp-server traps rsvp all
rsvp authentication key-source key-chain rsvp-key
rsvp authentication window-size 8
rsvp 
rsvp logging events nsr
rsvp logging events issu
segment-routing global-block 16000 23999
segment-routing 
xml agent tty 
snmp-server traps sensor
snmp-server traps fru-ctrl
netconf agent tty 
lldp 
mpls label range table 0 34000 899999 static 34000 499999
mpls label blocks block name SWAN type cbf start 24000 size 10000 client swanagent
macsec fips
macsec-policy macsec-xpn-256 
macsec-policy macsec-xpn-256 cipher-suite GCM-AES-XPN-256
macsec-policy macsec-xpn-256 include-icv-indicator
macsec-policy macsec-xpn-256 key-server-priority 4
macsec-policy macsec-xpn-256 sak-rekey-interval seconds 60
ssh server dscp 48
ssh server logging
ssh server disable hmac hmac-sha1
ssh server rate-limit 600
ssh server algorithms cipher aes256-gcm@openssh.com aes256-ctr
ssh server algorithms host-key ecdsa-nistp256 ecdsa-nistp521 rsa
ssh server algorithms key-exchange ecdh-sha2-nistp256 ecdh-sha2-nistp521
ssh server session-limit 20
ssh server v2
ssh server vrf default ipv4 access-list GNS-VTY-ACCESS
ssh server vrf MANAGEMENT ipv4 access-list GNS-VTY-ACCESS
ssh server netconf vrf MANAGEMENT
hw-module profile cef te-tunnel highscale-no-ldp-over-te
hw-module profile npu buffer-extended location 0/0/CPU0 bandwidth-congestion-detection enable
hw-module profile route scale lpm high-cem-low
hw-module profile route scale lpm tcam-banks
hw-module profile route scale ipv6-unicast connected-prefix high
hw-module profile stats acl-permit
hw-module profile npu-compatibility Q200
hw-module profile priority-flow-control location 0/0/CPU0 buffer-extended traffic-class 3
hw-module profile priority-flow-control location 0/0/CPU0 buffer-extended non-pfc-tcs hbm-buffers-percentage 75
hw-module voq-watchdog feature enable
hw-module voq-watchdog cardshut disable
hw-module macsec-fips-post location all
end


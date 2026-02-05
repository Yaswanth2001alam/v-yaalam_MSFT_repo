"Timestamp": 2026-01-10T12:08:02.4525328Z,
"Hostname": rwa02.str15,
"Config": ! Command: show running-config
! device: rwa02.str15 (DCS-7804-CH, EOS-4.34.2.1F-DPE-CTNR)
!
! boot system flash:/EOS64-DPE-CTNR-4.34.2.1F.swi
!
no aaa root
!
username admin privilege 15 role network-admin secret sha512 $PASS$
!
agent SftAgent instances 3
!
hardware counter feature traffic-policy in
hardware counter feature mpls tunnel
hardware counter feature nexthop
hardware counter feature pbr in
!
monitor security audit
   rule group g1
            -a always,exit -F arch=b64 -S unlink,unlinkat -F key=file_deletion
            -a always,exit -F arch=b32 -S unlink,unlinkat -F key=file_deletion
            -a always,exit -F arch=b64 -S execve -F key=process_audit
            -a always,exit -F arch=b32 -S execve -F key=process_audit
            -a always,exit -F arch=b64 -S
      setuid,setgid,setreuid,setregid,setresuid,setresgid,setfsuid,setfsgid -F key=user_group_management
            -a always,exit -F arch=b32 -S
      setuid,setgid,setreuid,setregid,setfsuid,setfsgid,setresuid,setresgid -F key=user_group_management
            -a always,exit -S all -F path=/var/log/auth.log -F perm=wa -F key=auth_logs
            -a always,exit -S all -F dir=/bin -F perm=wa -F key=bin_changes
            -a always,exit -S all -F path=/etc/crontab -F perm=wa -F key=cron_changes
            -a always,exit -S all -F dir=/etc/cron.d -F perm=wa -F key=cron_changes
            -a always,exit -S all -F dir=/etc/cron.daily -F perm=wa -F key=cron_changes
            -a always,exit -S all -F dir=/etc/cron.hourly -F perm=wa -F key=cron_changes
            -a always,exit -S all -F dir=/etc/cron.weekly -F perm=wa -F key=cron_changes
            -a always,exit -S all -F dir=/etc/cron.monthly -F perm=wa -F key=cron_changes
            -a always,exit -S all -F path=/etc/resolv.conf -F perm=wa -F key=dns_changes
            -a always,exit -F arch=b64 -S execve -F path=/usr/bin/docker -F key=docker_commands
            -a always,exit -S all -F path=/etc/docker/daemon.json -F perm=wa -F key=docker_config
            -a always,exit -S all -F path=/usr/bin/dockerd -F perm=wa -F key=docker_daemon
            -a always,exit -S all -F path=/lib/systemd/system/docker.service -F perm=wa -F key=docker_service
            -a always,exit -S all -F path=/lib/systemd/system/docker.socket -F perm=wa -F key=docker_socket
            -a always,exit -S all -F dir=/var/lib/docker -F perm=wa -F key=docker_storage
            -a always,exit -S all -F path=/etc/group -F perm=wa -F key=group_changes
            -a always,exit -S all -F path=/etc/hosts -F perm=wa -F key=hosts_changes
            -a always,exit -S all -F dir=/var/log -F perm=wa -F key=log_changes
            -a always,exit -S all -F path=/var/log.tmpfs -F perm=wa -F key=log_changes
            -a always,exit -S all -F path=/sbin/insmod -F perm=x -F key=modules_changes
            -a always,exit -S all -F path=/sbin/rmmod -F perm=x -F key=modules_changes
            -a always,exit -S all -F path=/sbin/modprobe -F perm=x -F key=modules_changes
            -a always,exit -S all -F path=/etc/passwd -F perm=wa -F key=passwd_changes
            -a always,exit -S all -F dir=/sbin -F perm=wa -F key=sbin_changes
            -a always,exit -S all -F path=/etc/shadow -F perm=wa -F key=shadow_changes
            -a always,exit -S all -F path=/var/log/wtmp -F perm=wa -F key=shutdown_reboot
            -a always,exit -S all -F path=/etc/sudoers -F perm=wa -F key=sudoers_changes
            -a always,exit -S all -F path=/etc/localtime -F perm=wa -F key=time_changes
            -a always,exit -S all -F dir=/usr/bin -F perm=wa -F key=usr_bin_changes
            -a always,exit -S all -F dir=/usr/sbin -F perm=wa -F key=usr_sbin_changes
            -a always,exclude -F msgtype=EOE
            -a always,exclude -F msgtype=EXECVE
      EOF
   monitor group all
   output logging
!
management api http-commands
   protocol http
   protocol unix-socket
   no shutdown
   !
   vrf MGMT
      no shutdown
!
terminal length 50
!
alias "show rcf function (\S+)"
   10 bash VAR="%1";FastCli -p15 -c $"show run sec control-function | sed -n '/function $VAR/,/EOF\|function/p' | head -n -1"
!
alias "show rcf code (\S+)"
   10 bash VAR="%1";FastCli -p15 -c $"show run sec control-function | sed -n '/code\ unit $VAR/,/code\ unit/p' | head -n -1"
!
alias snrz show interface counter rates | nz
!
no schedule tech-support
!
container-manager
   container ApCaCertAgent
      no shutdown
      profile ApCaCertAgentProfile
   !
   container SwanAgent
      no shutdown
      profile SwanAgentProfile
   persistent-path storage
   !
   container-profile ApCaCertAgentProfile
      image swancr.azurecr.io/swanagentarista-apca64:2.4.3-cb25e3d
      memory hard-limit 400m
      memory soft-limit 100m
      security mode privileged
      networking mode host
      logging driver syslog
      on-exit restart policy status all
      !
      persist storage
         mount src file:/mnt/flash/swanagent/config dst /root/config
         mount src file:/var/run/netns dst /var/run/netns
   !
   container-profile SwanAgentProfile
      image swancr.azurecr.io/swanagentarista-eos:2.4.3-549891e
      memory hard-limit 400m
      memory soft-limit 100m
      security mode privileged
      networking mode host
      logging driver syslog
      on-exit restart policy status all
      !
      persist storage
         mount src file:/mnt/flash/swanagent/config dst /root/config
         mount src file:/var/run/ dst /var/run
   !
   images
      load flash:apcacertagent-2.4.3-cb25e3d.x64.tar
      load flash:swanagenteos-2.4.3-549891e_rwa.x64.tar
!
daemon ApCaCertAgent
   exec /usr/local/bin/Swan/apca_certagent.py 
   option apca_url value 10.8.66.3
   option cert_directory value /mnt/flash/.swancerts
   option days_before_renewal value 10
   option iface value MGMT
   option sleep_secs value 60
!
daemon EosSdkRpc
   exec /bin/EosSdkRpc --listen unix:///var/run/eossdkrpc.sock
   no shutdown
!
daemon SwaDdosAgent
!
daemon SwanDdosAgent
   exec /usr/local/bin/Swan/SwanDdosAgent 
   option AclCommitTimer value 5
   option LogLevel value DEBUG
   option RouteTypes value ibgp,ebgp,bgp
   option Vrf value VRF_DDOS
   no shutdown
!
daemon TerCertAgent
   exec /usr/local/bin/ter/apca_certagent.py 
   option apca_url value 10.8.66.3
   option aproot_crt_file value /usr/local/bin/ter/ApPrss2014.pem
   option cert_directory value /mnt/flash/.tercerts
   option days_before_renewal value 10
   option iface value MGMT
   option sleep_secs value 60
!
daemon TerminAttr
   exec /usr/bin/TerminAttr --disableaaa -smashexcludes=ale,flexCounter,kni,pulse,strata -grpcaddr=MGMT/0.0.0.0:6030 -allowed_ips=0.0.0.0/0 -procfsperiod=60s -cpu_counters_expiration=60 -certfile=/mnt/flash/.swancerts/st-machine.crt -keyfile=/mnt/flash/.swancerts/machine.key $PASS$
   no shutdown
!
switchport default mode routed
!
errdisable recovery cause bpduguard
errdisable recovery cause link-flap
errdisable recovery cause no-internal-vlan
errdisable recovery cause xcvr-misconfigured
errdisable recovery cause xcvr-unsupported
errdisable recovery interval 600
!
flow tracking sampled
   cache routing-sim ipv4 150000 ipv6 150000 lifetime 120 seconds
   cache bgp-sim size 350000 lifetime 120 seconds
   sample drop warning-limit 3 percent
   encapsulation ipv4 ipv6 mpls
   sample 4096
   record rewrite dscp
   !
   tracker ftr1
      flow table size 450000 entries
      record export on interval 60000
      !
      exporter ipfix_exporter
         format ipfix version 10 max-packet-size 1024
         collector 10.2.1.37
         collector 61.100.0.1
         local interface Loopback0
         template interval 10000
   no shutdown
!
no service interface inactive port-id allocation disabled
!
load-interval default 0
!
transceiver qsfp default-mode 4x10G
!
service routing protocols model multi-agent
!
agent PtpTimeSync shutdown
!
lldp management-address vrf MGMT
!
logging buffered 65535 informational
no logging console
logging monitor critical
logging vrf MGMT host 10.181.114.0
logging vrf MGMT host 10.20.6.16
logging vrf MGMT host 10.3.157.12
logging format timestamp high-resolution
logging facility local1
logging source-interface Management0
logging qos dscp 8
!
hostname rwa02.str15
!
qos profile qos-out 
   shape rate 99 percent
!
platform sand lag mode 256x64
!
platform sand mdb profile l3-adj-xxxl
!
sflow vrf MGMT destination 10.20.0.212
!
snmp-server location STARLAB:B43:A06
snmp-server local-interface Management0
snmp-server community $PASS$ ro
snmp-server community $PASS$ ro IPV4-ROUTER-PROTECT
snmp-server community $PASS$ ro IPV4-ROUTER-PROTECT
snmp-server community $PASS$ rw
snmp-server host 10.3.157.12 version 2c $PASS$
snmp-server host 10.3.157.203 version 2c $PASS$
snmp-server host 10.3.157.205 version 2c $PASS$
snmp-server host 10.3.157.220 version 2c $PASS$
snmp-server enable traps
no snmp-server enable traps entity ent-config-change
no snmp-server enable traps lldp rem-tables-change
no snmp-server enable traps msdp
no snmp-server enable traps ospf
no snmp-server enable traps pim
no snmp-server enable traps test
no snmp-server enable traps vrrp
snmp-server objects route-tables disable
snmp-server extension .1.3.6.1.4.1.8072.1.3.1.5 flash:/cpu_counters_queue-0.3.2-linux-amd64
snmp-server vrf MGMT
snmp-server qos dscp 34
!
hardware speed-group3/12 serdes 10g
!
spanning-tree mode mstp
!
service unsupported-transceiver MicrosoftLabs f59aa528
!
system l1
   unsupported speed action error
   unsupported error-correction action error
!
ip decap-group decap-all
   tunnel type ipip
   tunnel decap-interface all address-family ipv4 address all
   tunnel decap-interface all address-family ipv6 address all
!
tunnel-counters
   transmit
      selective
      source-protocol rsvp ler sub priority 1
!
tunnel-ribs
   tunnel-rib system-tunnel-rib
      source-protocol ospf segment-routing
      source-protocol nexthop-group igp-cost preference 10
      source-protocol rsvp-ler igp-cost preference 10
      source-protocol bgp labeled-unicast
      source-protocol static igp-cost preference 10
      source-protocol ldp igp-cost preference 10
      source-protocol isis flex-algo
      source-protocol isis segment-routing igp-cost preference 10
!
vrf instance ITEpremium
   rd 8075:30000
!
vrf instance MGMT
   rd 1:1
!
vrf instance VRFTEST1
!
vrf instance VRF_DDOS
   description VRF_DDOS
   rd 8074:100
!
vrf instance tms-bypass-l3vrf
   rd 10.3.159.175:10500
!
vrf instance tms-l3vrf
   rd 10.3.159.175:10101
!
group bgp WORD
   exit
!
banner login
*******************************************************************************
*                                                                             *
*                       Notice Notice Notice Notice                           *
*      This system is restricted to Microsoft authorized users.               *
*      Unauthorized access or use is a violation of company policy.           *
*      Byproceeding, you acknowledge that (1) you have read and understand    *
*      this notice and (2) you consent to the system monitoring.              *
*                                                                             *
*******************************************************************************
EOF
banner motd
*******************************************************************************
*                                                                             *
*                       CAUTION! Please read the message.                     *
*       The device you are ON is restricted to STARLAB AUTOMATION.            *
*       Request you to please refrain from making any changes. Adhoc          *
*       configuration may break the automation.Please use STARLAB-1           *
*       for all your test cases. [aka.ms/starlab].For more information        *
*       on this device please drop an email to wanlabauto@microsoft.com       *
*                                                                             *
*******************************************************************************
EOF
!
management console
   idle-timeout 600
!
management api gnmi
   transport grpc default
      ssl profile https-secure
      vrf MGMT
   provider eos-native
!
management api models
   provider aft
      route-summary
!
management security
   entropy source hardware cpu jitter
   !
   session shared-secret $PASS$
      secret 2 $PASS$ $1c$fGTjclLhmQKXHmIXvwU12Q== receive-lifetime infinite transmit-lifetime infinite
      secret 1 $PASS$ $1c$1mBI0Ar+/kY= receive-lifetime infinite transmit-lifetime infinite
   !
   ssl profile https-secure
      tls versions 1.2 1.3
   !
   ssl profile test
!
tacacs-server key 7 $PASS$
tacacs-server host 10.241.221.33 vrf MGMT
tacacs-server host 10.241.221.44 vrf MGMT
tacacs-server host 10.241.221.45 vrf MGMT
!
aaa authentication login default group tacacs+ local
aaa authentication login console group tacacs+ local
aaa authentication enable default group tacacs+ local
aaa authentication policy on-success log
aaa authentication policy on-failure log
aaa authorization serial-console
aaa authorization exec default group tacacs+ local
aaa authorization commands all default group tacacs+ local
aaa accounting exec default start-stop group tacacs+
!
mac security
   license Microsoft-SiteWide 9f49cfb3
   !
   profile macsec-profile-Port-Channel132
      cipher aes256-gcm-xpn
      key $PASS$ 7 $PASS$
      key $PASS$ 7 $PASS$ fallback
      mka key-server priority 4
      mka session rekey-period 1800
      key retirement immediate
      sci
   !
   profile macsec-profile-Port-Channel141
      cipher aes256-gcm-xpn
      key $PASS$ 7 $PASS$
      key $PASS$ 7 $PASS$ fallback
      mka key-server priority 4
      mka session rekey-period 1800
      key retirement immediate
      sci
   !
   profile macsec-profile-Port-Channel152
      cipher aes256-gcm-xpn
      key $PASS$ 7 $PASS$
      key $PASS$ 7 $PASS$ fallback
      mka key-server priority 4
      mka session rekey-period 1800
      key retirement immediate
      sci
   !
   profile macsec-profile-Port-Channel2012
      cipher aes256-gcm-xpn
      key $PASS$ 7 $PASS$
      mka key-server priority 4
      mka session rekey-period 1800
      key retirement immediate
      sci
   !
   profile port-channel-3010
      cipher aes256-gcm-xpn
      key $PASS$ 7 $PASS$
      key $PASS$ 7 $PASS$ fallback
      mka key-server priority 4
      mka session rekey-period 1800
      key retirement immediate
      sci
   !
   profile test-eos-testing
!
interface Port-Channel1
   no switchport
   service-policy type pbr input POLICY_CBR
!
interface Port-Channel12
   no switchport
!
interface Port-Channel24
   no switchport
!
interface Port-Channel32
   no switchport
!
interface Port-Channel121
   description owr03.str15:Port-Channel0121
   load-interval 0
   mtu 9100
   no switchport
   ip address 172.20.238.1/31
   ipv6 address 2a01:111:e210:0:172:20:238:2/126
   service-policy type pbr input POLICY_DDOS_CBR
   service-policy type qos input POLICY_SCAVENGER
!
interface Port-Channel132
   description owr01.str15 PO132
   load-interval 0
   mtu 9178
   no switchport
   flow tracker sampled ftr1
   ip address 172.20.132.1/31
   ipv6 enable
   ipv6 address 2a01:111:e210:0:172:20:132:2/126
   ipv6 nd ra disabled
   service-policy type pbr input POLICY_DDOS_CBR
   service-policy type qos input POLICY_SCAVENGER
   qos trust dscp
   tx-scheduler packet size adjustment plus 47 bytes
   !
   tx-queue 0
      no priority
      bandwidth percent 45
   !
   tx-queue 1
      no priority
      bandwidth percent 5
   !
   tx-queue 2
      no priority
      bandwidth percent 45
   !
   tx-queue 3
      shape rate 15 percent
      latency maximum 4 milliseconds
   !
   tx-queue 4
      shape rate 20 percent
      latency maximum 5 milliseconds
   !
   tx-queue 5
      shape rate 10 percent
      latency maximum 1 milliseconds
   !
   tx-queue 6
      shape rate 5 percent
      latency maximum 10 milliseconds
   isis enable 1
   isis circuit-type level-2
   isis metric 500
   isis lsp tx interval 10
   isis hello padding
   isis network point-to-point
   isis authentication mode md5 level-2
   isis authentication key 7 $PASS$ level-2
   traffic-engineering
   traffic-engineering bandwidth 15 percent
   traffic-engineering administrative-group 1
!
interface Port-Channel140
   no switchport
!
interface Port-Channel141
   description owr02.str15:PO141
   load-interval 0
   mtu 9178
   no switchport
   ip address 172.20.141.1/31
   ipv6 enable
   ipv6 address 2a01:111:e210:0:172:20:141:2/126
   mpls ldp igp sync
   qos trust dscp
   tx-scheduler packet size adjustment plus 47 bytes
   !
   tx-queue 0
      no priority
      bandwidth percent 45
   !
   tx-queue 1
      no priority
      bandwidth percent 5
   !
   tx-queue 2
      no priority
      bandwidth percent 45
   !
   tx-queue 3
      shape rate 15 percent
      latency maximum 4 milliseconds
   !
   tx-queue 4
      shape rate 20 percent
      latency maximum 5 milliseconds
   !
   tx-queue 5
      shape rate 10 percent
      latency maximum 1 milliseconds
   !
   tx-queue 6
      shape rate 5 percent
      latency maximum 10 milliseconds
   isis enable 1
   isis circuit-type level-2
   isis metric 666074
   isis lsp tx interval 10
   isis hello padding
   isis network point-to-point
   isis authentication mode md5 level-2
   isis authentication key 7 $PASS$ level-2
   traffic-engineering
   traffic-engineering bandwidth 30 percent
   traffic-engineering administrative-group non-te
   vrf selection policy redirect-to-tms-l3vrf
!
interface Port-Channel151
   description STR05-0100-0001-02SW PO151
   load-interval 0
   mtu 9100
   no switchport
   flow tracker sampled ftr1
   ip address 172.20.151.0/31
   ipv6 enable
   ipv6 address 2a01:111:e210:0:172:20:151:1/126
   ipv6 address 2a01:111:e210:0:172:20:151:2/126
   ipv6 nd ra disabled
   service-policy type pbr input POLICY_DDOS_CBR
   service-policy type qos input POLICY_SCAVENGER
   qos trust dscp
   no sflow enable
   isis enable 1
   isis metric 16654321
   isis lsp tx interval 10
   isis network point-to-point
   isis authentication mode md5 level-2
   isis authentication key 7 $PASS$ level-2
   traffic-engineering
!
interface Port-Channel152
   description owr01.str15 PO152
   load-interval 0
   mtu 9178
   no switchport
   flow tracker sampled ftr1
   ip address 172.20.152.1/31
   ipv6 enable
   ipv6 address 2a01:111:e210:0:172:20:152:2/126
   ipv6 nd ra disabled
   service-policy type pbr input POLICY_DDOS_CBR
   service-policy type qos input POLICY_SCAVENGER
   qos trust dscp
   !
   tx-queue 0
      no priority
      bandwidth percent 45
   !
   tx-queue 1
      no priority
      bandwidth percent 5
   !
   tx-queue 2
      no priority
      bandwidth percent 45
   !
   tx-queue 3
      shape rate 15 percent
      latency maximum 4 milliseconds
   !
   tx-queue 4
      shape rate 20 percent
      latency maximum 5 milliseconds
   !
   tx-queue 5
      shape rate 10 percent
      latency maximum 1 milliseconds
   !
   tx-queue 6
      shape rate 5 percent
      latency maximum 10 milliseconds
   isis enable 1
   isis circuit-type level-2
   isis metric 16654321
   isis lsp tx interval 10
   isis hello padding
   isis network point-to-point
   isis authentication mode md5 level-2
   isis authentication key 7 $PASS$ level-2
   traffic-engineering
   traffic-engineering bandwidth 15 percent
   traffic-engineering administrative-group 1
!
interface Port-Channel248
   description INFRA:IX:ier01.str50:ae248
   mtu 9178
   no switchport
   flow tracker sampled ftr1
   ip address 172.20.248.1/31
   ipv6 address 2a01:111:e210:0:172:20:248:2/126
   mpls ldp igp sync
   qos trust dscp
   !
   tx-queue 0
      no priority
      bandwidth percent 45
   !
   tx-queue 1
      no priority
      bandwidth percent 5
   !
   tx-queue 2
      no priority
      bandwidth percent 45
   !
   tx-queue 3
      shape rate 15 percent
      latency maximum 4 milliseconds
   !
   tx-queue 4
      shape rate 20 percent
      latency maximum 5 milliseconds
   !
   tx-queue 5
      shape rate 10 percent
      latency maximum 1 milliseconds
   !
   tx-queue 6
      shape rate 5 percent
      latency maximum 10 milliseconds
   isis enable 1
   isis circuit-type level-2
   isis metric 512345
   isis lsp tx interval 10
   isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $PASS$ level-2
   traffic-engineering
   traffic-engineering bandwidth 30 percent
!
interface Ethernet3/1/1
   description STR05-0100-0001-02SW Ethernet4/1/1
   shutdown
   load-interval 0
   mtu 9178
   no switchport
   channel-group 151 mode active
!
interface Ethernet3/2/1
   description STR05-0100-0001-02SW Ethernet4/2/1
   load-interval 0
   mtu 9178
   no switchport
   channel-group 151 mode active
!
interface Ethernet3/3/1
   description owr02.str15 Ethernet3/3/1
   load-interval 0
   mtu 9178
   no switchport
   channel-group 141 mode active
   mac security profile macsec-profile-Port-Channel141
   transceiver frequency 193100.000
   transceiver transmitter signal-power -10.00
!
interface Ethernet3/4/1
   description owr02.str15::Ethernet4/16/1
   load-interval 0
   mtu 9100
   speed forced 400gfull
   no switchport
   channel-group 141 mode active
   mac security profile macsec-profile-Port-Channel141
   transceiver frequency 193100.000
   transceiver transmitter signal-power -10.00
!
interface Ethernet3/5/1
   description owr01.str15 Hu0/0/0/17
   load-interval 0
   mtu 9178
   no switchport
   channel-group 132 mode active
   mac security profile macsec-profile-Port-Channel132
!
interface Ethernet3/6/1
   profile macsec-profile-Port-Channel132
   description owr01.str15 Hu0/0/0/16
   load-interval 0
   mtu 9178
   no switchport
   channel-group 132 mode active
   mac security profile macsec-profile-Port-Channel132
!
interface Ethernet3/7/1
   description 10.3.145.24/Card08/Port01
   mtu 9178
   speed forced 10000full
   no switchport
   flow tracker sampled ftr1
!
interface Ethernet3/7/2
   no switchport
!
interface Ethernet3/7/3
   no switchport
!
interface Ethernet3/7/4
   no switchport
!
interface Ethernet3/8/1
   no switchport
!
interface Ethernet3/9/1
   description 10.3.145.22/Card02/Port07
   no switchport
   flow tracker sampled ftr1
   ip address 97.1.0.0/31
   ipv6 address 2a97::1/126
!
interface Ethernet3/10/1
   speed forced 100gfull
   no switchport
!
interface Ethernet3/10/3
   load-interval 0
   mtu 9100
   no switchport
!
interface Ethernet3/10/4
   no switchport
!
interface Ethernet3/11/1
   description Ixia.24 EWA Testing
   mtu 9178
   speed forced 100gfull
   no switchport
   flow tracker sampled ftr1
   ip address 20.20.20.1/24
   ipv6 address 2a01:111:e210:0:20:20:20:1/126
   qos trust dscp
!
interface Ethernet3/12/1
   description str-46mgmt-1b:xe-0/0/15
   load-interval 0
   speed forced 10000full
   no switchport
   ip address 10.3.148.125/24
   no mpls ip
   shape rate 10000
!
interface Ethernet3/13/1
   description ovh02.str15:HundredGigE0/1/0
   no switchport
   ip address 172.20.102.7/31
!
interface Ethernet3/14/1
   description connecting to ovh03.str15 Et0/1/0
   no switchport
   ip address 172.20.8.1/31
!
interface Ethernet3/15/1
   description IXIA.36:8/4::wan_auto_test::RESERVED
   mtu 9178
   speed forced 100gfull
   no switchport
   flow tracker sampled ftr1
   ip address 61.100.0.54/31
   qos trust dscp
!
interface Ethernet3/16/1
   description owr02.str15
   load-interval 0
   mtu 9178
   no switchport
   channel-group 140 mode active
!
interface Ethernet3/17/1
   description Ixia.24 LC12P2 EWA Testing
   mtu 9178
   speed forced 100gfull
   no switchport
   flow tracker sampled ftr1
   ip address 17.17.17.0/31
   ipv6 address 2a01:111:e210:0:17:17:17:1/126
!
interface Ethernet3/17/3
   no switchport
!
interface Ethernet3/17/4
   no switchport
!
interface Ethernet3/18/1
   mtu 9178
   speed forced 100gfull
   no switchport
   flow tracker sampled ftr1
   ip address 21.21.21.1/24
   ipv6 address 2a01:111:e210:0:21:21:21:1/126
   qos trust dscp
!
interface Ethernet3/18/3
   no switchport
!
interface Ethernet3/18/4
   no switchport
!
interface Ethernet3/19/1
   error-correction encoding reed-solomon
   no switchport
!
interface Ethernet3/20/1
   no switchport
!
interface Ethernet3/21/1
   no switchport
!
interface Ethernet3/22/1
   no switchport
!
interface Ethernet3/23/1
   no switchport
!
interface Ethernet3/24/1
   speed 100g-2
   no switchport
   transceiver media override 400gbase-dr4
!
interface Ethernet3/24/2
   speed 100g-2
   no switchport
!
interface Ethernet3/24/3
   no switchport
!
interface Ethernet3/24/4
   speed 100g-2
   no switchport
!
interface Ethernet3/25/1
   no switchport
!
interface Ethernet3/26/1
   no switchport
!
interface Ethernet3/27/1
   description owr01.str15 HundredGigE0/0/0/30
   load-interval 0
   mtu 9178
   no switchport
   channel-group 152 mode active
   mac security profile macsec-profile-Port-Channel152
!
interface Ethernet3/27/2
   shutdown
!
interface Ethernet3/28/1
   no switchport
!
interface Ethernet3/29/1
   description test_2
   mtu 1500
   speed 100g-2
   no switchport
!
interface Ethernet3/29/2
   speed 100g-2
   no switchport
!
interface Ethernet3/29/3
   speed 100g-2
   no switchport
!
interface Ethernet3/29/4
   speed 100g-2
   no switchport
!
interface Ethernet3/30/1
   shutdown
   no switchport
!
interface Ethernet3/31/1
   description ier01.str50:et-0/0/11
   mtu 9178
   speed forced 100gfull
   no switchport
   channel-group 248 mode active
!
interface Ethernet3/32/1
   description ier01.str50:et-0/0/65
   load-interval 0
   mtu 9178
   no switchport
   channel-group 248 mode active
!
interface Ethernet3/33/1
   no switchport
!
interface Ethernet3/34/1
   shutdown
   no switchport
!
interface Ethernet3/34/2
   speed 100g-2
!
interface Ethernet3/34/3
   speed 100g-2
!
interface Ethernet3/34/4
   speed 100g-2
!
interface Ethernet3/35/1
   description ixia-10.3.145.24-7/2-brijesh
   mtu 9178
   no switchport
   ip address 192.168.254.1/24
!
interface Ethernet3/36/1
   description IXIA.24-LC1P6::wan_auto_test::RESERVED
   mtu 9178
   speed forced 100gfull
   no switchport
   flow tracker sampled ftr1
   ip address 61.100.0.4/31
   ipv6 address 2608:10b0:a07:8101::1/126
   ipv6 address 2a61:100:15::1/126
   qos trust dscp
   isis enable 1
   isis lsp tx interval 10
   isis network point-to-point
   isis authentication mode md5 level-2
   isis authentication key 7 $PASS$ level-2
!
interface Loopback0
   description lo0 for BGP, ISIS, RSVP
   ip address 10.3.159.175/32
   ipv6 address 2a01:111:e210:1:10:3:159:175/128
   hardware forwarding id
   node-segment ipv4 index 175
   node-segment ipv6 index 275
   isis enable 1
   isis metric 0
   isis passive
   isis ipv4 route-tag 1000
   isis ipv6 route-tag 1000
!
interface Loopback1
!
interface Loopback55
   description LDP:10.30.159.175:lo55
   ip address 10.30.159.175/32
   ipv6 address 2a01:111:e210:1:10:30:159:175/128
   ipv6 nd ra disabled
   mpls ldp interface
   isis enable 1
   isis metric 0
   isis passive
!
interface Loopback99
   hardware forwarding id
!
interface Management0
   vrf MGMT
   ip address 10.3.151.175/24
   ipv6 address 2a01:111:e210:1:10:3:151:175/64
!
interface Management1/1
!
interface Management1/2
!
interface Management2/1
!
interface Management2/2
!
hardware tcam
   profile pbr-match-nexthop-group-mpls
      feature acl port mac
         sequence 60
         key size limit 160
         key field dst-mac ether-type src-mac
         action count drop mirror
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding bridged
         packet ipv6 forwarding routed
         packet ipv6 forwarding routed decap
         packet ipv6 forwarding routed multicast
         packet ipv6 ipv6 forwarding routed decap
         packet mpls forwarding bridged decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
         packet non-ip forwarding bridged
      !
      feature acl subintf ip
         sequence 45
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action count drop mirror
         packet ipv4 forwarding routed
      !
      feature acl vlan ip
         sequence 40
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action count drop mirror
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan eth ipv4 forwarding routed decap
      !
      feature acl vlan ipv6 egress
         sequence 20
         key field dscp dst-ipv6 ipv6-next-header l4-dst-port l4-src-port src-ipv6-high src-ipv6-low tcp-control
         action count drop mirror
         packet ipv6 forwarding routed
      !
      feature cbf
         sequence 85
         key size limit 160
         key field dst-port ip-version-and-tc
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding routed
      !
      feature mpls
         sequence 5
         key size limit 160
         key field forwarding-type
         action drop redirect set-ecn
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature mpls pop ingress
         sequence 100
      !
      feature pbr ip
         sequence 65
         key size limit 160
         key field dscp dst-ip dst-port ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port tcp-control
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet mpls ipv4 forwarding mpls
      !
      feature pbr ipv6
         sequence 35
         key field dst-ipv6 dst-port ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port tcp-control
         action count redirect
         packet ipv6 forwarding routed
         packet mpls ipv6 forwarding mpls
      !
      feature qos ip
         sequence 80
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action set-dscp set-policer set-tc
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature qos ipv6
         sequence 25
         key field dst-ipv6 ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ipv6-high src-ipv6-low
         action set-dscp set-policer set-tc
         packet ipv6 forwarding routed
      !
      feature tunnel vxlan
         sequence 55
         key size limit 160
         packet ipv4 vxlan eth ipv4 forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
   !
   profile pbr-match-nexthop-group-mpls-aegis
      feature acl port mac
         sequence 60
         key size limit 160
         key field dst-mac ether-type src-mac
         action drop mirror
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding bridged
         packet ipv6 forwarding routed
         packet ipv6 forwarding routed decap
         packet ipv6 forwarding routed multicast
         packet ipv6 ipv6 forwarding routed decap
         packet mpls forwarding bridged decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
         packet non-ip forwarding bridged
      !
      feature acl subintf ip
         sequence 45
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action drop mirror
         packet ipv4 forwarding routed
      !
      feature acl vlan ip
         sequence 40
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action drop mirror
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan eth ipv4 forwarding routed decap
      !
      feature acl vlan ipv6 egress
         sequence 20
         key field dscp dst-ipv6 ipv6-next-header l4-dst-port l4-src-port src-ipv6-high src-ipv6-low tcp-control
         action drop mirror
         packet ipv6 forwarding routed
      !
      feature cbf
         sequence 85
         key size limit 160
         key field dst-port ip-version-and-tc
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding routed
      !
      feature mpls
         sequence 5
         key size limit 160
         key field forwarding-type
         action drop redirect set-ecn
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature mpls pop ingress
         sequence 100
      !
      feature pbr ip
         sequence 65
         key size limit 160
         key field dscp dst-ip dst-port ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port tcp-control
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet mpls ipv4 forwarding mpls
      !
      feature pbr ipv6
         sequence 35
         key field dst-ipv6 dst-port ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port tcp-control
         action count redirect
         packet ipv6 forwarding routed
         packet mpls ipv6 forwarding mpls
      !
      feature qos ip
         sequence 80
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action set-dscp set-policer set-tc
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature qos ipv6
         sequence 25
         key field dst-ipv6 ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ipv6-high src-ipv6-low
         action set-dscp set-policer set-tc
         packet ipv6 forwarding routed
      !
      feature traffic-policy port ipv4
         sequence 45
         key size limit 160
         key field dscp dst-ip-label icmp-type-code ip-frag ip-fragment-offset ip-length ip-protocol l4-dst-port l4-src-port src-ip-label
         action count drop log set-dscp set-tc
         packet ipv4 forwarding routed
      !
      feature traffic-policy port ipv6
         sequence 25
         key field dst-ipv6-label hop-limit icmp-type-code ipv6-length ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ip
         action count drop log set-dscp set-tc
         packet ipv6 forwarding routed
      !
      feature tunnel vxlan
         sequence 55
         key size limit 160
         packet ipv4 vxlan eth ipv4 forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
   !
   profile pbr-match-nhg-mpls-aegis-vrfselect-mirror
      feature acl subintf ip
         sequence 45
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action drop mirror
         packet ipv4 forwarding routed
      !
      feature cbf
         sequence 85
         key size limit 160
         key field dst-port ip-version-and-tc
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding routed
      !
      feature mirror ip
         sequence 80
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action count mirror set-policer
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature mirror ipv6
         key field dst-ipv6 ipv6-next-header ipv6-traffic-class l4-dst-port l4-ops-3b l4-src-port src-ipv6-high src-ipv6-low tcp-control
         action count mirror set-policer
         packet ipv6 forwarding bridged
         packet ipv6 forwarding routed
         packet ipv6 forwarding routed decap
         packet ipv6 ipv6 forwarding routed decap
      !
      feature mpls
         sequence 5
         key size limit 160
         key field forwarding-type
         action drop redirect set-ecn
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature mpls pop ingress
         sequence 100
      !
      feature pbr ip
         sequence 65
         key size limit 160
         key field dscp dst-port ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet mpls ipv4 forwarding mpls
      !
      feature pbr ipv6
         sequence 35
         key field dst-ipv6 dst-port ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port tcp-control
         action count redirect
         packet ipv6 forwarding routed
         packet mpls ipv6 forwarding mpls
      !
      feature traffic-policy port ipv4
         sequence 45
         key size limit 160
         key field dscp dst-ip-label icmp-type-code ip-frag ip-fragment-offset ip-length ip-protocol l4-dst-port l4-src-port src-ip-label
         action count drop log set-dscp set-tc
         packet ipv4 forwarding routed
      !
      feature traffic-policy port ipv6
         sequence 25
         port qualifier size 8 bits
         key field dst-ipv6-label hop-limit icmp-type-code ipv6-length ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ip
         action count drop log set-dscp set-tc
         packet ipv6 forwarding routed
   !
   profile pbr-match-nhg-mpls-aegis-vrfselect-mirror-cputp
      feature acl subintf ip
         sequence 45
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control ttl
         action drop mirror
         packet ipv4 forwarding routed
      !
      feature cbf
         sequence 85
         key size limit 160
         key field dst-port ip-version-and-tc
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding routed
      !
      feature mirror ip
         sequence 80
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action count mirror set-policer
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature mirror ipv6
         key field dst-ipv6 ipv6-next-header ipv6-traffic-class l4-dst-port l4-ops-3b l4-src-port src-ipv6-high src-ipv6-low tcp-control
         action count mirror set-policer
         packet ipv6 forwarding bridged
         packet ipv6 forwarding routed
         packet ipv6 forwarding routed decap
         packet ipv6 ipv6 forwarding routed decap
      !
      feature mpls
         sequence 5
         key size limit 160
         key field forwarding-type
         action drop redirect set-ecn
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature mpls pop ingress
         sequence 100
      !
      feature pbr ip
         sequence 65
         key size limit 160
         key field dscp dst-port ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet mpls ipv4 forwarding mpls
      !
      feature pbr ipv6
         sequence 35
         key field dst-port src-ipv6
         action count redirect
         packet ipv6 forwarding routed
         packet mpls ipv6 forwarding mpls
      !
      feature traffic-policy cpu ipv4
         sequence 1
         key size limit 160
         key field dst-ip ip-frag ip-protocol l4-dst-port l4-src-port src-ip
         action count set-drop-precedence set-policer
      !
      feature traffic-policy cpu ipv6
         sequence 2
         key field dst-ipv6 ipv6-next-header l4-dst-port l4-src-port src-ipv6-high src-ipv6-low
         action count set-drop-precedence set-policer
      !
      feature traffic-policy port ipv4
         sequence 45
         key size limit 160
         key field dscp dst-ip-label icmp-type-code ip-frag ip-fragment-offset ip-length ip-protocol l4-dst-port l4-src-port src-ip-label tcp-control ttl
         action count drop log set-dscp set-tc
         packet ipv4 forwarding routed
      !
      feature traffic-policy port ipv6
         sequence 25
         key field dst-ipv6-label hop-limit icmp-type-code ipv6-length ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ipv6-label tcp-control
         action count drop log set-dscp set-tc
         packet ipv6 forwarding routed
      !
      feature vrf selection
         port qualifier size 8 bits
   !
   profile traffic-policy
      feature acl port mac
         sequence 55
         key size limit 160
         key field dst-mac ether-type src-mac
         action count drop
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
         packet ipv6 forwarding bridged
         packet ipv6 forwarding routed
         packet ipv6 forwarding routed decap
         packet ipv6 forwarding routed multicast
         packet ipv6 ipv6 forwarding routed decap
         packet mpls forwarding bridged decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
         packet non-ip forwarding bridged
      !
      feature forwarding-destination mpls
         sequence 100
      !
      feature mirror ip
         sequence 80
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action count mirror set-policer
         packet ipv4 forwarding bridged
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature mpls
         sequence 5
         key size limit 160
         action drop redirect set-ecn
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature pbr ip
         sequence 60
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops-18b l4-src-port src-ip tcp-control
         action count redirect
         packet ipv4 forwarding routed
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
      !
      feature pbr ipv6
         sequence 30
         key field dst-ipv6 ipv6-next-header l4-dst-port l4-src-port src-ipv6-high src-ipv6-low tcp-control
         action count redirect
         packet ipv6 forwarding routed
      !
      feature pbr mpls
         sequence 65
         key size limit 160
         key field mpls-inner-ip-tos
         action count drop redirect
         packet mpls ipv4 forwarding mpls
         packet mpls ipv6 forwarding mpls
         packet mpls non-ip forwarding mpls
      !
      feature qos ip
         sequence 75
         key size limit 160
         key field dscp dst-ip ip-frag ip-protocol l4-dst-port l4-ops l4-src-port src-ip tcp-control
         action set-dscp set-policer set-tc
         packet ipv4 forwarding routed
         packet ipv4 forwarding routed multicast
         packet ipv4 mpls ipv4 forwarding mpls decap
         packet ipv4 mpls ipv6 forwarding mpls decap
         packet ipv4 non-vxlan forwarding routed decap
      !
      feature qos ipv6
         sequence 70
         key field dst-ipv6 ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ipv6-high src-ipv6-low
         action set-dscp set-policer set-tc
         packet ipv6 forwarding routed
      !
      feature traffic-policy port ipv4
         sequence 45
         key size limit 160
         key field dscp dst-ip-label icmp-type-code ip-frag ip-fragment-offset ip-length ip-protocol l4-dst-port l4-src-port src-ip-label
         action count drop log set-dscp set-tc
         packet ipv4 forwarding routed
      !
      feature traffic-policy port ipv6
         sequence 25
         key field dst-ipv6-label hop-limit icmp-type-code ipv6-length ipv6-next-header ipv6-traffic-class l4-dst-port l4-src-port src-ip
         action count drop log set-dscp set-tc
         packet ipv6 forwarding routed
      !
      feature tunnel vxlan
         sequence 50
         key size limit 160
         packet ipv4 vxlan eth ipv4 forwarding routed decap
         packet ipv4 vxlan forwarding bridged decap
   system profile pbr-match-nhg-mpls-aegis-vrfselect-mirror-cputp
!
event-handler TAC-QT
   trigger on-config disabled
   action bash
       FastCli -p 15 -c'bash (cd /var/log && sudo tar -czvf /mnt/flash/656301-$HOSTNAME-agent-qtrace-$(date +%m_%d.%H%M).tar.gz qt/)'  
       FastCli -p 15 show  >> /mnt/flash/top.txtclock-c  
       FastCli -p 15 show processes top  >> /mnt/flash/top.txtonce-c  
       FastCli -p 15 -c $'configure\nno event-handler TAC-QT\n'  
      EOF
   !
   trigger on-logging
      regex FecLevel3..Jericho2 table utilization is currently at [0-9]+%, crossed threshold 90
!
event-handler bfdFlap
   action bash
      dirname=/mnt/flash/bfd-grab/$(date +%Y%m%d-%H%M%S)
      mkdir -p $dirname
      sudo cp /var/log/messages $dirname
      sudo cp /var/log/rbfd.log $dirname
      sudo cp -r /var/log/qt $dirname
      sudo cat /proc/net/stat/arp_cache > $dirname/arp_cache
      sudo cat /proc/net/stat/ndisc_cache > $dirname/ndisc_cache
      sudo ip -all netns exec ip -s -4 neigh show nud all > $dirname/neighv4
      sudo ip -all netns exec ip -s -6 neigh show nud all > $dirname/neighv6
      sudo top -b -n 5 -d 1.0 -w 512 > $dirname/top
      Cli -A -c "show bfd rbfd-stats" > $dirname/rbfd-stats
      Cli -A -c "show cpu counters queue | nz" > $dirname/cpucounters
      sudo tar czf /mnt/flash/bfd-grab_$(date +%Y%m%d-%H%M%S).tar.gz $dirname/* && sudo rm -rf $dirname
      EOF
   delay 0
   !
   trigger on-logging
      regex BFD-5-STATE_CHANGE.*changed state from Up to Down diag CtrlTimeout
!
event-handler loadAverageMonitor
   action bash python3 /mnt/flash/loadAverageMonitor.py
   asynchronous
   !
   trigger on-counters
      poll interval 60
      condition bashCmd."echo 1" > 0
!
event-handler socat-port-ofrwarding
!
event-handler start-dockerservice
   trigger on-boot
   action bash sudo daemonize -p /var/run/startdockerservice.pid -l /var/log/StartDockerService.log /usr/bin/StartDockerService.sh
   delay 30
   asynchronous
   timeout 600
!
ipv6 access-list CP-ACL-IMPLICIT-ALLOW-V6
   10 permit ipv6 any any
!
ipv6 access-list ROUTER-PROTECT-V6
   10 permit tcp 2010::/64 any eq ssh
   20 permit icmpv6 any any
   30 permit ipv6 any any tracked
   40 permit udp any any eq bfd hop-limit eq 255
   50 permit udp any any eq bfd-echo hop-limit eq 254
   51 permit udp any any eq multihop-bfd micro-bfd sbfd
   60 permit 51 any any
   61 permit udp any eq sbfd any eq sbfd-initiator
   70 permit 50 any any
   80 permit udp any any eq dhcpv6-client dhcpv6-server
   90 permit tcp any any eq bgp
   100 permit udp any any eq 42000
!
ipv6 access-list SCAVENGER_REWRITE_V6
   10 remark DATABUS
   20 permit tcp any any eq 6798
   30 permit tcp any any eq 10360
!
ip access-list CP-ACL-IMPLICIT-ALLOW
   10 permit ip any any
!
ip access-list ITEpremium
   10 remark ITEpremium networks
!
ip access-list MGMT-BLOCK
   10 deny ip any host 10.173.156.12
   20 permit ip any any
!
ip access-list ONEWANFED_VTEP_V4
   10 remark "Re-mark OneWAN Federal VTEP traffic to DSCP 25"
   20 permit ip 10.1.88.128/25 10.1.88.128/25
!
ip access-list ROUER-PROTECT
   970 permit tcp any any eq 10000
!
ip access-list ROUTER-PROTEC
!
ip access-list ROUTER-PROTEC-v4
!
ip access-list ROUTER-PROTECT
   10 deny tcp any any eq 10001
   20 deny ip any host 10.173.156.12
   240 permit tcp any any eq 10001
   250 permit udp any eq sbfd any eq sbfd-initiator
   260 permit tcp any any eq 10000
   290 permit tcp any any eq 10000
   300 permit ip any any
   310 permit tcp any any eq ssh
   320 permit udp any any
   330 permit tcp any any eq 9543
   1500 permit udp any eq sbfd any eq sbfd-initiator
!
ip access-list ROUTER-PROTECT-V4
   10 permit icmp any any
   20 permit ip any any tracked
   30 permit udp any any eq bfd ttl eq 255
   40 permit udp any any eq bfd-echo ttl eq 254
   50 permit udp any any eq multihop-bfd micro-bfd sbfd
   60 permit udp any eq sbfd any eq sbfd-initiator
   70 permit ospf any any
   80 permit tcp any any eq ssh telnet www snmp bgp https msdp ldp netconf-ssh gnmi
   90 permit udp any any eq bootps bootpc ntp snmp ptp-event ptp-general rip ldp
   100 permit tcp any any eq mlag ttl eq 255
   110 permit udp any any eq mlag ttl eq 255
   120 permit vrrp any any
   130 permit ahp any any
   140 permit pim any any
   150 permit igmp any any
   160 permit tcp any any range 5900 5910
   170 permit tcp any any range 50000 50100
   180 permit udp any any range 51000 51100
   190 permit tcp any any eq 3333
   200 permit tcp any any eq nat ttl eq 255
   210 permit tcp any eq bgp any
   220 permit rsvp any any
   230 permit tcp any any eq 6040
   240 permit tcp any any eq 5541 ttl eq 255
   250 permit tcp any any eq 5542 ttl eq 255
   260 permit tcp any any eq 9559
   280 permit tcp any any eq 10001
   290 permit tcp any any eq 10000
!
ip access-list ROUTER-PROTECT-V6
   10 deny tcp any any eq 10001
   240 permit tcp any any eq 10001
   250 permit udp any eq sbfd any eq sbfd-initiator
   290 permit tcp any any eq 10000
   300 permit ip any any
   310 permit tcp any any eq ssh
   320 permit udp any any
   330 permit tcp any any eq 9543
!
ip access-list SCAVENGER_REWRITE_V4
   10 remark DATABUS
   20 permit tcp any any eq 6798
   30 permit tcp any any eq 10360
!
ip access-list SNMPX_REWRITE_V4
   10 remark "Re-mark SNMPX traffic to AF41"
   20 permit udp 10.20.17.224/27 any range snmp snmptrap
   30 permit udp 10.20.17.160/27 any range snmp snmptrap
   40 permit udp 10.20.6.192/27 any range snmp snmptrap
   50 permit udp 10.20.6.64/27 any range snmp snmptrap
   60 permit udp 10.20.6.32/27 any range snmp snmptrap
!
ip access-list databus_test
   10 permit icmp any any log
   20 permit ip any any log
!
ip access-list everflow
   10 remark everflow
   20 permit tcp host 127.0.0.1 eq 0 host 127.0.0.1 eq 0
!
ip access-list my-default-control-plane-acl
   1 permit tcp any any eq 10000
   10 permit icmp any any
   20 permit ip any any tracked
   30 permit udp any any eq bfd ttl eq 255
   40 permit udp any any eq bfd-echo ttl eq 254
   60 permit udp any any eq micro-bfd
   70 permit ospf any any
   80 permit tcp any any eq ssh telnet www snmp bgp https msdp ldp
   90 permit udp any any eq bootps bootpc ntp snmp rip ldp
   100 permit tcp any any eq mlag ttl eq 255
   110 permit udp any any eq mlag ttl eq 255
   120 permit vrrp any any
   130 permit ahp any any
   140 permit pim any any
   150 permit igmp any any
   160 permit tcp any any range 5900 5910
   170 permit tcp any any range 50000 50100
   180 permit udp any any range 51000 51100
   200 permit tcp any any eq nat ttl eq 255
   210 permit tcp any eq bgp any
!
ip access-list wan_in
   10 permit ip any 13.106.32.32/27
   20 permit ip any 23.103.131.0/24
   30 permit ip any 51.4.71.32/27
   40 permit ip any 51.5.71.0/27
   50 permit ip any 64.4.5.0/26
   60 permit ip any 64.4.15.80/28
   70 permit ip any 65.54.70.0/26
   80 permit ip any 65.54.121.0/26
   90 permit ip any 65.54.238.64/27
   100 permit ip any 65.55.5.128/27
   110 permit ip any 65.55.33.0/27
   120 permit ip any 65.55.37.32/28
   130 permit ip any 65.55.81.0/28
   140 permit ip any 65.55.117.0/26
   150 permit ip any 65.55.178.0/26
   160 permit ip any 65.55.238.0/26
   170 permit ip any 70.37.154.0/27
   180 permit ip any 94.245.64.0/28
   190 permit ip any 94.245.77.0/28
   200 permit ip any 94.245.112.32/28
   210 permit ip any 104.44.106.32/27
   220 permit ip any 104.44.106.64/27
   230 permit ip any 104.44.106.128/27
   240 permit ip any 104.44.193.224/27
   250 permit ip any 104.44.221.32/27
   260 permit ip any 104.44.221.96/27
   270 permit ip any 104.44.222.160/27
   280 permit ip any 104.44.223.0/26
   290 permit ip any 111.221.121.0/27
   300 permit ip any 134.170.65.0/28
   310 permit ip any 134.170.216.32/27
   320 permit ip any 134.170.217.128/27
   330 permit ip any 157.56.74.160/27
   340 permit ip any 157.56.96.0/28
   350 permit ip any 157.56.156.0/27
   360 permit ip any 157.56.157.32/27
   370 permit ip any 157.56.158.0/27
   380 permit ip any 157.56.159.0/27
   390 permit ip any 157.56.204.32/27
   400 permit ip any 157.56.205.0/27
   410 permit ip any host 193.221.113.53
   420 permit ip any 204.79.195.0/26
   430 permit ip any 204.79.252.0/27
   440 permit ip any 207.46.0.32/27
   450 permit ip any 207.46.48.192/27
   460 permit ip any 207.46.66.64/27
   470 permit ip any 207.46.116.0/26
   480 permit ip any 207.46.200.32/28
   490 permit ip any 207.68.168.16/28
   500 permit ip any 208.68.136.32/27
   510 permit ip any host 208.76.45.53
   520 permit ip any 208.76.46.0/26
   530 permit ip any host 208.84.0.53
   540 permit ip any host 208.84.2.53
   550 permit ip any 213.199.177.64/27
!
class-map type pbr match-any ITEpremium_v4
   10 match ip access-group ITEpremium
!
ip access-list standard IPV4-ROUTER-PROTECT
   10 remark IPV4-ROUTER-PROTECT
   20 permit 10.20.0.0/18
   30 permit 10.20.192.0/18
   40 permit 10.64.0.0/18
   50 permit 10.254.32.0/20
   60 permit 10.254.36.128/26
   70 permit host 25.65.112.129
   80 permit host 25.65.112.130
   90 permit host 25.65.112.131
   100 permit host 25.65.112.132
   110 permit host 25.65.112.133
   120 permit host 25.65.112.135
   130 permit host 25.66.26.1
   140 permit host 25.66.26.7
   150 permit 25.66.128.0/17
   160 permit host 25.66.169.180
   170 permit host 25.66.169.188
   180 permit host 25.66.169.209
   190 permit host 25.66.169.247
   200 permit host 25.66.169.249
   210 permit host 25.74.138.24
   220 permit host 25.74.138.25
   230 permit host 25.74.138.26
   240 permit host 25.74.138.27
   250 permit host 25.74.138.28
   260 permit host 25.75.5.210
   270 permit host 25.75.5.229
   280 permit 100.126.0.0/16
   290 permit 10.3.144.0/20
   300 permit 10.0.0.0/8
   310 permit 10.3.157.0/24
   320 permit 10.130.48.0/21
   330 permit any
!
ip access-list standard SNMP_ACL
   10 remark SNMP_ACL
   20 permit 10.0.0.0/8
   30 permit 100.64.0.0/10
   40 permit 100.126.0.0/16
   50 permit 100.127.64.0/18
   60 permit 25.0.0.0/12
   70 permit 25.16.0.0/13
   80 permit 25.24.0.0/16
   90 permit 25.28.0.0/14
   100 permit 25.32.0.0/11
   110 permit 25.64.0.0/10
   120 permit 25.66.128.0/17
   130 permit 25.128.0.0/14
   140 permit 25.142.0.0/15
   150 permit 25.144.0.0/12
   160 permit 25.160.0.0/11
   170 permit 25.192.0.0/11
   180 permit 25.224.0.0/12
   190 permit 25.244.0.0/14
   200 permit 25.248.0.0/13
!
ip icmp send limit burst 51 packets
ip icmp send limit rate 1001 pps
!
ip routing
ip icmp source-interface Loopback0
ip hardware fib optimize vrf default prefixes profile internet
ip hardware fib optimize vrf tms-l3vrf prefix-length 32
ip hardware fib optimize vrf tms-l3vrf prefixes minimum count 50000
ip fib compression redundant-specifics filter
ip routing vrf ITEpremium
ip routing vrf MGMT
no ip routing vrf VRFTEST1
ip routing vrf VRF_DDOS
ip routing vrf tms-bypass-l3vrf
ip routing vrf tms-l3vrf
ipv6 fib compression redundant-specifics filter
!
ip as-path access-list AS12076 permit .*(12076).* any
ip as-path access-list AS64915 permit ^64915.* any
ip as-path access-list AS8068 permit ^8068$ any
ip as-path access-list AS8072 permit 8072 any
ip as-path access-list ASPATH-MICROSOFT permit ^$ any
ip as-path access-list ASPATH-MICROSOFT permit ^3598.* any
ip as-path access-list ASPATH-MICROSOFT permit ^(5761|6584|8068|8069|8070|8075|8812|23468|62540)+ any
ip as-path access-list CONTAINS-AS8075 permit .*8075.* any
ip as-path access-list FROM-AS8074 permit 8074.* any
ip as-path access-list FROM-AS8075 permit 8075.* any
ip as-path access-list LOCAL permit ^$ any
ip as-path access-list ASPATH-DOCUMENTATION permit ^.*(64496-64511|65536-65551).*$ any
ip as-path access-list ASPATH-PRIVATE permit ^.*(64512-65534|4200000000-4294967294).*$ any
ip as-path access-list ASPATH-RESERVED permit ^.*(0|65535|65552-131071|4294967295).*$ any
ip as-path access-list as-path-12076 permit (^12076$|^12076_65515) any
ip as-path access-list as-path-160 permit (^$|^3598|^5761|^6469|^8068$|^8068_20046.*|^6584_.*|^8070|^8071$|^8072$|^8073_.*|^8074|^12076_.*|^8068_12076_.*|^20046|^23468|^40066|^198097$|^198015$|.*_64512-65535_.*) any
ip as-path access-list as-path-50 permit ^()|3598.*|6469+|23468+|20046+|8070+|40066+|8071.*|^8068+|8069+|8075+|8073+|6584+|198015+|198097 any
ip as-path access-list as-path-75 permit ^.{75,}$ any
ip community-list 8075-RBL permit 8075:6666
ip community-list ANCHOR permit 8075:34000
ip community-list ANCHOR permit 8075:30000
ip community-list ANCHOR permit 8075:30100
ip community-list ANCHOR permit 8075:41240
ip community-list ANYCAST-OUT-COMMUNITIES permit 8075:13
ip community-list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY permit 8075:420
ip community-list AZURE_SUBREGIONAL_LOCALREGION permit 8075:51512
ip community-list regexp COMM_ALL permit ^8075:.*$
ip community-list regexp COMM_CUST_ALL permit ^8075:...$8075:35
ip community-list COMM_CUST_DEPREF permit 8075:390
ip community-list COMM_CUST_DONTADV_ALL permit 8075:900
ip community-list COMM_CUST_LEAK_AR permit 8075:210
ip community-list COMM_CUST_LEAK_CIS permit 8075:213
ip community-list COMM_CUST_LEAK_FABRIC permit 8075:211
ip community-list COMM_CUST_LEAK_SRCH permit 8075:212
ip community-list COMM_CUST_LEAK_XCG permit 8075:214
ip community-list COMM_CUST_LEAK_XCGD permit 8075:215
ip community-list COMM_CUST_NOPEERS_ALL permit 8075:920
ip community-list COMM_CUST_NO_ACCEPT permit 8075:391
ip community-list COMM_CUST_NO_ADVERTISE permit 8075:950
ip community-list COMM_CUST_NO_EXPORT permit 8075:940
ip community-list COMM_CUST_PARTNER permit 8075:341
ip community-list COMM_CUST_PRIVATE_ANCHOR permit 8075:122
ip community-list COMM_CUST_PRIVATE_ANYCAST permit 8075:123
ip community-list COMM_CUST_PUBLIC_ANCHOR permit 8075:112
ip community-list COMM_CUST_PUBLIC_ANYCAST permit 8075:113
ip community-list COMM_CUST_SUBREGIONAL_CIS permit 8075:420
ip community-list COMM_CUST_SUBREGIONAL_THEEDGE permit 8075:421
ip community-list COMM_DEFAULT_ROUTE_ANCHOR permit 8075:99
ip community-list COMM_FUNC_DONTADV_AF permit 8075:50001
ip community-list COMM_FUNC_DONTADV_ALL permit 8075:50000
ip community-list COMM_FUNC_DONTADV_AN permit 8075:50004
ip community-list COMM_FUNC_DONTADV_AS permit 8075:50003
ip community-list COMM_FUNC_DONTADV_EU permit 8075:50005
ip community-list COMM_FUNC_DONTADV_NA permit 8075:50007
ip community-list COMM_FUNC_DONTADV_OC permit 8075:50002
ip community-list COMM_FUNC_DONTADV_SA permit 8075:50006
ip community-list COMM_FUNC_FABRIC_BYOIP permit 8075:701
ip community-list COMM_FUNC_ITE_BYOIP permit 8075:700
ip community-list COMM_FUNC_LEAK_AR permit 8075:10100
ip community-list COMM_FUNC_LEAK_CIS permit 8075:10600
ip community-list COMM_FUNC_LEAK_DACIS permit 8075:10450
ip community-list COMM_FUNC_LEAK_FABRIC permit 8075:10400
ip community-list COMM_FUNC_LEAK_FABRIC2 permit 8075:10401
ip community-list COMM_FUNC_LEAK_MSIT permit 8075:10300
ip community-list COMM_FUNC_LEAK_SRCH permit 8075:10500
ip community-list COMM_FUNC_LEAK_THEEDGE permit 8075:10753
ip community-list COMM_FUNC_LEAK_XCG permit 8075:10700
ip community-list COMM_FUNC_LEAK_XCGD permit 8075:10751
ip community-list COMM_FUNC_LEAK_XCGD-MGMT permit 8075:10752
ip community-list COMM_FUNC_NOPEERS_AF permit 8075:52001
ip community-list COMM_FUNC_NOPEERS_ALL permit 8075:52000
ip community-list COMM_FUNC_NOPEERS_AN permit 8075:52004
ip community-list COMM_FUNC_NOPEERS_AS permit 8075:52003
ip community-list COMM_FUNC_NOPEERS_EU permit 8075:52005
ip community-list COMM_FUNC_NOPEERS_NA permit 8075:52007
ip community-list COMM_FUNC_NOPEERS_OC permit 8075:52002
ip community-list COMM_FUNC_NOPEERS_SA permit 8075:52006
ip community-list COMM_FUNC_PREMIUM_CONTINENT permit 8075:650
ip community-list COMM_FUNC_PREMIUM_CONTINENT permit 8075:4124
ip community-list COMM_FUNC_PREMIUM_GLOBAL permit 8075:640
ip community-list COMM_FUNC_PREMIUM_GLOBAL permit 8075:4124
ip community-list COMM_FUNC_PREMIUM_IRR permit 8075:660
ip community-list COMM_FUNC_PREMIUM_IRR permit 8075:4124
ip community-list COMM_LOCALREGION permit 8075:53034
ip community-list regexp COMM_NON_CUST permit 8075:[1-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1-9][0-9][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1][0][0-3,5-9][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1][0][4][0][2-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1][0][4][1-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[1][1-9][0-9][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[2-5][0-9][0-9][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[6][0-4][0-9][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[6][5][0-4][0-9][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[6][5][5][0-2][0-9]$
ip community-list regexp COMM_NON_CUST permit 8075:[6][5][5][3][0-5]$
ip community-list COMM_NOPEER permit 65535:65284
ip community-list COMM_NO_ADVERTISE permit no-advertise
ip community-list COMM_NO_EXPORT permit no-export
ip community-list COMM_ORIGIN_CONDUIT_UC permit 8075:9002
ip community-list COMM_ORIGIN_LOCATION permit 8075:3512
ip community-list COMM_ORIGIN_LOCATION permit 8075:4124
ip community-list COMM_ORIGIN_LOCATION permit 8075:2840
ip community-list COMM_ORIGIN_LOCATION permit 8075:1007
ip community-list COMM_ORIGIN_PARTNER_GALLACAKE permit 8075:8001
ip community-list COMM_ORIGIN_PARTNER_SIP permit 8075:8003
ip community-list COMM_ORIGIN_PARTNER_TSYS permit 8075:8005
ip community-list COMM_ORIGIN_PARTNER_WPS permit 8075:8004
ip community-list COMM_ORIGIN_PARTNER_YHOO permit 8075:8002
ip community-list COMM_ORIGIN_PROPERTY_AR permit 8075:9200
ip community-list COMM_ORIGIN_PROPERTY_CIS permit 8075:9104
ip community-list COMM_ORIGIN_PROPERTY_CLOUD_DNS permit 8075:9115
ip community-list COMM_ORIGIN_PROPERTY_DCFX permit 8075:9109
ip community-list COMM_ORIGIN_PROPERTY_EPMS permit 8075:9119
ip community-list COMM_ORIGIN_PROPERTY_ER permit 8075:9113
ip community-list COMM_ORIGIN_PROPERTY_FABRIC permit 8075:9111
ip community-list COMM_ORIGIN_PROPERTY_GNSCORE permit 8075:9000
ip community-list COMM_ORIGIN_PROPERTY_IDFX permit 8075:9001
ip community-list COMM_ORIGIN_PROPERTY_IPSLA permit 8075:9116
ip community-list COMM_ORIGIN_PROPERTY_MGFX permit 8075:9120
ip community-list COMM_ORIGIN_PROPERTY_MSIT_CORP permit 8075:9114
ip community-list COMM_ORIGIN_PROPERTY_MSIT_EBL permit 8075:9101
ip community-list COMM_ORIGIN_PROPERTY_MSIT_INTERNET permit 8075:9100
ip community-list COMM_ORIGIN_PROPERTY_MSIT_LAB permit 8075:9102
ip community-list COMM_ORIGIN_PROPERTY_OOB permit 8075:9117
ip community-list COMM_ORIGIN_PROPERTY_SKYPE permit 8075:9108
ip community-list COMM_ORIGIN_PROPERTY_SRCH permit 8075:9103
ip community-list COMM_ORIGIN_PROPERTY_THEEDGE permit 8075:9110
ip community-list COMM_ORIGIN_PROPERTY_WDG permit 8075:9112
ip community-list COMM_ORIGIN_PROPERTY_XBOX_LSG permit 8075:9107
ip community-list COMM_ORIGIN_PROPERTY_XCG permit 8075:9105
ip community-list COMM_ORIGIN_PROPERTY_XCGD permit 8075:9106
ip community-list COMM_OVERLOAD permit GSHUT
ip community-list COMM_ROUTE_DDOS_IRR permit 8075:668
ip community-list regexp COMM_ROUTE_FREEPEER permit ^8075:3[3-5]$
ip community-list COMM_ROUTE_FREEPEER_PRIVATE permit 8075:33
ip community-list COMM_ROUTE_FREEPEER_PUBLIC permit 8075:34
ip community-list COMM_ROUTE_FREEPEER_ROUTESERVER permit 8075:35
ip community-list regexp COMM_ROUTE_PAIDPEER permit ^8075:3[1-2]$
ip community-list COMM_ROUTE_PAIDPEER_OFFNET permit 8075:32
ip community-list COMM_ROUTE_PAIDPEER_ONNET permit 8075:31
ip community-list COMM_ROUTE_PARTNER permit 8075:41
ip community-list regexp COMM_ROUTE_PARTNER_ALL permit ^8075:4[0-9]$
ip community-list COMM_ROUTE_PARTNER_SPECIFIC permit 8075:42
ip community-list regexp COMM_ROUTE_PEER_ALL permit ^8075:3[0-9]$
ip community-list regexp COMM_ROUTE_PRIVATE permit 8075:^2[1-3]$
ip community-list regexp COMM_ROUTE_PRIVATE_ALL permit ^8075:2[0-9]$
ip community-list regexp COMM_ROUTE_PRIVATE_ANCHOR permit 8075:^2[1-2]$
ip community-list COMM_ROUTE_PRIVATE_ANCHOR_CORE permit 8075:21
ip community-list COMM_ROUTE_PRIVATE_ANCHOR_CUST permit 8075:22
ip community-list COMM_ROUTE_PRIVATE_ANYCAST permit 8075:23
ip community-list COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE permit 8075:24
ip community-list COMM_ROUTE_PRIVATE_SPECIFIC_ANYCAST permit 8075:27
ip community-list COMM_ROUTE_PRIVATE_SPECIFIC_CORE permit 8075:25
ip community-list COMM_ROUTE_PRIVATE_SPECIFIC_CUST permit 8075:26
ip community-list regexp COMM_ROUTE_PUBLIC permit ^8075:1[1-3]$
ip community-list regexp COMM_ROUTE_PUBLIC_ALL permit ^8075:1[0-9]$
ip community-list regexp COMM_ROUTE_PUBLIC_ANCHOR permit ^8075:1[1-2]$
ip community-list COMM_ROUTE_PUBLIC_ANCHOR_CORE permit 8075:11
ip community-list COMM_ROUTE_PUBLIC_ANCHOR_CUST permit 8075:12
ip community-list COMM_ROUTE_PUBLIC_ANYCAST permit 8075:13
ip community-list COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE permit 8075:14
ip community-list COMM_ROUTE_PUBLIC_SPECIFIC_ANYCAST permit 8075:17
ip community-list COMM_ROUTE_PUBLIC_SPECIFIC_CORE permit 8075:15
ip community-list COMM_ROUTE_PUBLIC_SPECIFIC_CUST permit 8075:16
ip community-list COMM_ROUTE_RTBH permit 8075:666
ip community-list DCFX_LEAK_COMM permit 8075:10400
ip community-list regexp DENY-MSN-COMMUNITIES-IN permit 806[8-9]:*
ip community-list regexp DENY-MSN-COMMUNITIES-IN permit 807[0-5]:*
ip community-list FROM_FABRIC permit 8075:101
ip community-list GLOBAL-EXT-CUSTOMER-COMMUNITY permit 8075:34000
ip community-list GLOBAL-EXT-CUSTOMER-COMMUNITY permit 8075:60000
ip community-list GLOBAL-EXT-CUSTOMER-COMMUNITY permit 8075:38100
ip community-list GLOBAL-EXT-CUSTOMER-COMMUNITY permit 8075:41240
ip community-list GLOBAL-NO-ADV-TO-PEERS permit 8075:10000
ip community-list GLOBAL-SEND-TO-CUSTOMERS permit 8075:34000
ip community-list GLOBAL-SEND-TO-PEERS permit 8075:30000
ip community-list LEAK_SPECIFICS permit 8075:10000
ip community-list LEAK_SPECIFICS permit 8075:34000
ip community-list LEAK_SPECIFICS permit 8075:41240
ip community-list regexp SUBREGIONAL-MYSUBREGIONS permit (8075:51000)|(8075:51512)
ip community-list regexp SUBREGIONAL-ROUTING permit 8075:51[0-9][0-9][0-9]
ip community-list SWAN_LEAK_COMMUNITY permit 8074:10401
ip community-list regexp all permit :
ip community-list no-advertise permit no-advertise
ip extcommunity-list BGP_OVERLOAD permit color 480
ip extcommunity-list COLOR_10293 permit color 10293
ip extcommunity-list COLOR_20 permit color 20
ip extcommunity-list COLOR_30 permit color 30
ip extcommunity-list COLOR_480 permit color 480
ip extcommunity-list COMM_RT_ITE_PREMIUM_CONTINENT permit rt 8075:3031007
ip extcommunity-list COMM_RT_ITE_PREMIUM_GLOBAL permit rt 8075:3000300
ip extcommunity-list COMM_RT_ITE_PREMIUM_IRR permit rt 8075:15
ip extcommunity-list COMM_RT_TMS_GEO permit rt 8075:7
ip extcommunity-list COMM_RT_TMS_GLOBAL permit rt 8075:3000101
ip extcommunity-list COMM_RT_TMS_IRR permit rt 8075:3000318
ip extcommunity-list COMM_RT_TMS_IRR permit rt 8075:3000317
ip extcommunity-list srte permit color 0
!
ip prefix-list AGGREGATES-V4
!
ip prefix-list AGGREGATES-V6
!
ip prefix-list ALLOW-CONNECT-P2P
   seq 10 permit 0.0.0.0/0 ge 30 le 31
!
ip prefix-list ALLOW-GIL-V4
   seq 10 permit 10.20.0.0/16
   seq 20 permit 10.64.0.0/16
   seq 30 permit 10.41.192.0/18
   seq 40 permit 10.64.0.0/18
   seq 50 permit 25.64.0.0/10
   seq 60 permit 100.126.0.0/16
   seq 70 permit 100.127.64.0/18
!
ip prefix-list ALLOW-NTP
   seq 10 permit 10.20.8.129/32
   seq 20 permit 10.20.8.130/32
!
ip prefix-list ANYCAST-IP-SPACE
   seq 10 permit 10.20.37.176/28
   seq 20 permit 10.64.5.5/32
   seq 30 permit 10.64.6.6/32
   seq 40 permit 10.64.6.7/32
   seq 50 permit 13.107.0.0/16
   seq 60 permit 13.107.1.0/24
   seq 70 permit 13.107.2.0/24
   seq 80 permit 13.107.10.0/23
   seq 90 permit 13.107.24.0/23
   seq 100 permit 13.107.44.0/23
   seq 110 permit 13.107.58.0/23
   seq 120 permit 13.107.160.0/23
   seq 130 permit 13.107.188.0/23
   seq 140 permit 13.107.240.0/23
   seq 150 permit 40.90.4.0/23
   seq 160 permit 64.4.48.0/23
   seq 170 permit 65.55.44.0/24
   seq 180 permit 65.55.60.0/24
   seq 190 permit 65.55.117.0/24
   seq 200 permit 70.37.135.0/24
   seq 210 permit 131.253.12.0/22
   seq 220 permit 191.234.4.0/24
   seq 230 permit 191.234.5.0/24
   seq 240 permit 191.234.6.0/24
   seq 250 permit 191.234.7.0/24
   seq 260 permit 191.234.64.0/24
   seq 270 permit 193.221.113.0/24
   seq 280 permit 204.79.195.0/24
   seq 290 permit 204.79.252.0/24
   seq 300 permit 207.46.98.0/24
   seq 310 permit 207.68.174.0/24
   seq 320 permit 208.76.45.0/24
   seq 330 permit 208.76.46.0/24
   seq 340 permit 208.84.0.0/24
   seq 350 permit 208.84.2.0/24
!
ip prefix-list ANYCAST-IP-SPACE-LP-HIGH
   seq 10 permit 131.253.21.0/24
   seq 20 permit 191.234.4.0/24
   seq 30 permit 191.234.5.0/24
   seq 40 permit 191.234.6.0/24
   seq 50 permit 191.234.7.0/24
   seq 60 permit 191.234.64.0/24
   seq 70 permit 193.221.113.0/24
   seq 80 permit 204.79.195.0/24
   seq 90 permit 204.79.197.0/24
   seq 100 permit 204.79.252.0/24
   seq 110 permit 207.46.98.0/24
   seq 120 permit 208.76.45.0/24
   seq 130 permit 208.76.46.0/24
   seq 140 permit 208.84.0.0/24
   seq 150 permit 208.84.2.0/24
   seq 160 permit 65.55.117.0/24
   seq 170 permit 65.55.60.0/24
   seq 180 permit 65.55.230.0/24
   seq 190 permit 65.55.231.0/24
   seq 200 permit 65.55.44.0/24
   seq 210 permit 13.107.0.0/16
   seq 220 permit 13.107.10.0/23
   seq 230 permit 13.107.44.0/23
   seq 240 permit 13.107.58.0/23
   seq 250 permit 13.107.188.0/23
   seq 260 permit 13.107.240.0/23
   seq 270 permit 13.107.1.0/24
   seq 280 permit 13.107.2.0/24
   seq 290 permit 13.107.3.0/24
   seq 300 permit 10.64.5.5/32
   seq 310 permit 10.64.6.6/32
   seq 320 permit 10.64.6.7/32
   seq 330 permit 10.20.37.176/28
   seq 340 permit 64.4.48.0/23
   seq 350 permit 40.90.4.0/23
   seq 360 permit 13.107.160.0/23
   seq 370 permit 13.107.24.0/23
!
ip prefix-list ANYCAST-IP-SPACE-LP-HIGH-V4
   seq 10 permit 131.253.21.0/24 ge 24
   seq 20 permit 191.234.4.0/24 ge 24
   seq 30 permit 191.234.5.0/24 ge 24
   seq 40 permit 191.234.6.0/24 ge 24
   seq 50 permit 191.234.7.0/24 ge 24
   seq 60 permit 191.234.64.0/24 ge 24
   seq 70 permit 193.221.113.0/24 ge 24
   seq 80 permit 204.79.195.0/24 ge 24
   seq 90 permit 204.79.197.0/24 ge 24
   seq 100 permit 204.79.252.0/24 ge 24
   seq 110 permit 207.46.98.0/24 ge 24
   seq 120 permit 208.76.45.0/24 ge 24
   seq 130 permit 208.76.46.0/24 ge 24
   seq 140 permit 208.84.0.0/24 ge 24
   seq 150 permit 208.84.2.0/24 ge 24
   seq 160 permit 65.55.117.0/24 ge 24
   seq 170 permit 65.55.60.0/24 ge 24
   seq 180 permit 65.55.230.0/24 ge 24
   seq 190 permit 65.55.231.0/24 ge 24
   seq 200 permit 65.55.44.0/24 ge 24
   seq 210 permit 13.107.0.0/16 ge 16
   seq 220 permit 13.107.10.0/23 ge 23
   seq 230 permit 13.107.44.0/23 ge 23
   seq 240 permit 13.107.58.0/23 ge 23
   seq 250 permit 13.107.188.0/23 ge 23
   seq 260 permit 13.107.240.0/23 ge 23
   seq 270 permit 13.107.1.0/24 ge 24
   seq 280 permit 13.107.2.0/24 ge 24
   seq 290 permit 13.107.3.0/24 ge 24
   seq 300 permit 10.64.5.5/32 ge 32
   seq 310 permit 10.64.6.6/32 ge 32
   seq 320 permit 10.64.6.7/32 ge 32
   seq 330 permit 10.20.37.176/28 ge 28
   seq 340 permit 64.4.48.0/23 ge 23
   seq 350 permit 40.90.4.0/23 ge 23
   seq 360 permit 13.107.160.0/23 ge 23
   seq 370 permit 13.107.24.0/23 ge 23
!
ip prefix-list ANYCAST-IP-SPACE-ORLONGER
   seq 10 permit 10.20.37.176/28 ge 28
   seq 20 permit 10.64.5.5/32 ge 32
   seq 30 permit 10.64.6.6/32 ge 32
   seq 40 permit 10.64.6.7/32 ge 32
   seq 50 permit 13.107.0.0/16 ge 16
   seq 60 permit 13.107.1.0/24 ge 24
   seq 70 permit 13.107.2.0/24 ge 24
   seq 80 permit 13.107.10.0/23 ge 23
   seq 90 permit 13.107.24.0/23 ge 23
   seq 100 permit 13.107.44.0/23 ge 23
   seq 110 permit 13.107.58.0/23 ge 23
   seq 120 permit 13.107.160.0/23 ge 23
   seq 130 permit 13.107.188.0/23 ge 23
   seq 140 permit 13.107.240.0/23 ge 23
   seq 150 permit 40.90.4.0/23 ge 23
   seq 160 permit 64.4.48.0/23 ge 23
   seq 170 permit 65.55.44.0/24 ge 24
   seq 180 permit 65.55.60.0/24 ge 24
   seq 190 permit 65.55.117.0/24 ge 24
   seq 200 permit 70.37.135.0/24 ge 24
   seq 210 permit 131.253.12.0/22 ge 22
   seq 220 permit 191.234.4.0/24 ge 24
   seq 230 permit 191.234.5.0/24 ge 24
   seq 240 permit 191.234.6.0/24 ge 24
   seq 250 permit 191.234.7.0/24 ge 24
   seq 260 permit 191.234.64.0/24 ge 24
   seq 270 permit 193.221.113.0/24 ge 24
   seq 280 permit 204.79.195.0/24 ge 24
   seq 290 permit 204.79.252.0/24 ge 24
   seq 300 permit 207.46.98.0/24 ge 24
   seq 310 permit 207.68.174.0/24 ge 24
   seq 320 permit 208.76.45.0/24 ge 24
   seq 330 permit 208.76.46.0/24 ge 24
   seq 340 permit 208.84.0.0/24 ge 24
   seq 350 permit 208.84.2.0/24 ge 24
!
ip prefix-list ANYCAST-IP-SPACE-V4
   seq 10 permit 131.253.12.0/22 ge 22
   seq 20 permit 207.68.174.0/24 ge 24
   seq 30 permit 70.37.135.0/24 ge 24
!
ip prefix-list AZURE-IP-REUSE-SPACE
   seq 10 permit 10.30.0.0/15
   seq 20 permit 10.32.0.0/14
   seq 30 permit 10.36.0.0/16
   seq 40 permit 10.37.192.0/18
   seq 50 permit 10.38.0.0/15
   seq 60 permit 10.50.0.0/15
   seq 70 permit 10.57.0.0/16
   seq 80 permit 10.66.0.0/15
   seq 90 permit 10.68.0.0/16
   seq 100 permit 10.69.0.0/16
   seq 110 permit 10.70.0.0/15
   seq 120 permit 10.72.0.0/16
   seq 130 permit 10.80.0.0/16
   seq 140 permit 10.81.0.0/16
   seq 150 permit 10.82.0.0/16
   seq 160 permit 10.83.0.0/16
   seq 170 permit 10.84.0.0/16
   seq 180 permit 10.85.0.0/16
   seq 190 permit 10.86.0.0/16
   seq 200 permit 10.87.0.0/16
   seq 210 permit 10.88.0.0/16
   seq 220 permit 10.89.0.0/16
   seq 230 permit 10.90.0.0/16
   seq 240 permit 10.91.0.0/16
   seq 250 permit 10.92.0.0/16
   seq 260 permit 10.93.0.0/16
   seq 270 permit 10.94.0.0/16
   seq 280 permit 10.95.0.0/16
   seq 290 permit 10.107.0.0/16
   seq 300 permit 10.110.0.0/16
   seq 310 permit 10.116.0.0/16
   seq 320 permit 10.120.0.0/14
   seq 330 permit 10.124.64.0/18
   seq 340 permit 10.124.128.0/17
   seq 350 permit 10.125.0.0/16
   seq 360 permit 10.126.0.0/15
   seq 370 permit 10.128.0.0/13
   seq 380 permit 10.136.0.0/15
   seq 390 permit 10.138.0.0/18
   seq 400 permit 10.138.128.0/17
   seq 410 permit 10.139.0.0/16
   seq 420 permit 10.144.0.0/16
   seq 430 permit 10.145.0.0/20
   seq 440 permit 10.145.16.0/20
   seq 450 permit 10.145.32.0/19
   seq 460 permit 10.145.64.0/18
   seq 470 permit 10.145.128.0/17
   seq 480 permit 10.147.192.0/18
   seq 490 permit 10.150.0.0/15
   seq 500 permit 10.156.0.0/14
   seq 510 permit 10.161.64.0/18
   seq 520 permit 10.162.0.0/15
   seq 530 permit 10.165.0.0/16
   seq 540 permit 10.166.64.0/18
   seq 550 permit 10.167.0.0/16
   seq 560 permit 10.168.16.0/20
   seq 570 permit 10.168.32.0/19
   seq 580 permit 10.168.64.0/18
   seq 590 permit 10.168.128.0/18
   seq 600 permit 10.168.192.0/19
   seq 610 permit 10.168.240.0/20
   seq 620 permit 10.169.0.0/16
   seq 630 permit 10.170.0.0/16
   seq 640 permit 10.171.16.0/20
   seq 650 permit 10.171.32.0/19
   seq 660 permit 10.171.80.0/20
   seq 670 permit 10.171.96.0/19
   seq 680 permit 10.171.128.0/17
   seq 690 permit 10.172.64.0/18
   seq 700 permit 10.172.128.0/17
   seq 710 permit 10.176.0.0/14
   seq 720 permit 10.185.0.0/18
   seq 730 permit 10.185.128.0/17
   seq 740 permit 10.188.0.0/14
   seq 750 permit 10.192.0.0/13
   seq 760 permit 10.200.0.0/16
   seq 770 permit 10.209.0.0/16
   seq 780 permit 10.212.0.0/15
   seq 790 permit 10.214.0.0/16
   seq 800 permit 10.216.0.0/16
   seq 810 permit 10.218.0.0/18
   seq 820 permit 10.218.128.0/17
   seq 830 permit 10.219.0.0/16
   seq 840 permit 10.220.0.0/16
   seq 850 permit 10.224.0.0/14
   seq 860 permit 10.228.0.0/15
   seq 870 permit 10.231.0.0/16
   seq 880 permit 10.240.0.0/16
   seq 890 permit 10.246.0.0/15
   seq 900 permit 10.248.128.0/17
   seq 910 permit 10.249.0.0/16
   seq 920 permit 10.250.0.0/16
   seq 930 permit 10.252.0.0/15
   seq 940 permit 100.72.0.0/15
   seq 950 permit 100.74.0.0/15
   seq 960 permit 100.76.0.0/16
   seq 970 permit 100.77.128.0/17
   seq 980 permit 100.78.0.0/16
   seq 990 permit 100.79.0.0/16
   seq 1000 permit 100.92.0.0/17
   seq 1010 permit 100.104.0.0/13
   seq 1020 permit 100.112.0.0/13
   seq 1030 permit 100.120.0.0/16
!
ip prefix-list BOGON-V4
   seq 10 permit 0.0.0.0/32
   seq 20 permit 10.0.0.0/8
   seq 30 permit 127.0.0.0/8
   seq 40 permit 169.254.0.0/16
   seq 50 permit 172.16.0.0/12
   seq 60 permit 192.0.0.0/24
   seq 70 permit 192.0.2.0/24
   seq 80 permit 192.168.0.0/16
   seq 90 permit 198.18.0.0/15
   seq 100 permit 224.0.0.0/3
!
ip prefix-list BOGON-V4-ORLONGER
   seq 10 permit 0.0.0.0/32 ge 32
   seq 20 permit 10.0.0.0/8 ge 8
   seq 30 permit 127.0.0.0/8 ge 8
   seq 40 permit 169.254.0.0/16 ge 16
   seq 50 permit 172.16.0.0/12 ge 12
   seq 60 permit 192.0.0.0/24 ge 24
   seq 70 permit 192.0.2.0/24 ge 24
   seq 80 permit 192.168.0.0/16 ge 16
   seq 90 permit 198.18.0.0/15 ge 15
   seq 100 permit 224.0.0.0/3 ge 3
!
ip prefix-list BYOIP-V4
   seq 50 permit 10.0.4.0/24 ge 24
   seq 90 permit 10.20.12.0/24 ge 24
   seq 100 permit 10.20.14.0/24 ge 24
   seq 110 permit 10.11.11.0/24 ge 24
   seq 150 permit 3.28.1.0/24 ge 24
   seq 160 permit 5.28.1.0/24 ge 24
   seq 170 permit 7.28.1.0/24 ge 24
   seq 180 permit 6.10.1.0/24 ge 24
   seq 190 permit 131.253.1.0/24 ge 24
   seq 200 permit 10.10.1.0/30 ge 30
   seq 210 permit 1.2.5.0/24 ge 24
   seq 220 permit 1.2.9.0/24 ge 24
   seq 240 permit 1.29.1.0/24 ge 24
   seq 270 permit 2.28.1.0/24 ge 24
   seq 290 permit 4.29.1.0/24 ge 24
!
ip prefix-list CUST-DEFAULT-OUT
   seq 10 permit 0.0.0.0/0
!
ip prefix-list DEFAULT-ORIGINATE-IBGP
   seq 10 permit 0.0.0.0/0
!
ip prefix-list DEFAULT_IPV4
   seq 5 permit 0.0.0.0/0
!
ip prefix-list DENY-FROM-SWAN
   seq 10 permit 0.0.0.0/0
!
ip prefix-list DENY-TO-SWAN
   seq 10 permit 0.0.0.0/0
!
ip prefix-list EDGE-AZURE-V4
   seq 10 permit 13.64.0.0/11
   seq 20 permit 20.36.0.0/14
   seq 30 permit 20.40.0.0/13
   seq 40 permit 20.48.0.0/12
   seq 50 permit 20.64.0.0/10
   seq 60 permit 20.150.0.0/15
   seq 70 permit 20.160.0.0/12
   seq 80 permit 20.184.0.0/13
   seq 90 permit 20.192.0.0/10
   seq 100 permit 23.96.0.0/14
   seq 110 permit 23.100.0.0/15
   seq 120 permit 23.102.0.0/16
   seq 130 permit 40.64.0.0/15
   seq 140 permit 40.66.32.0/19
   seq 150 permit 40.67.0.0/16
   seq 160 permit 40.68.0.0/14
   seq 170 permit 40.72.0.0/13
   seq 180 permit 40.80.0.0/13
   seq 190 permit 40.88.0.0/15
   seq 200 permit 40.90.160.0/19
   seq 210 permit 40.90.192.0/18
   seq 220 permit 40.91.0.0/16
   seq 230 permit 40.112.0.0/12
   seq 240 permit 51.11.0.0/16
   seq 250 permit 51.12.0.0/15
   seq 260 permit 51.53.0.0/16
   seq 270 permit 51.103.0.0/16
   seq 280 permit 51.104.0.0/15
   seq 290 permit 51.107.0.0/16
   seq 300 permit 51.116.0.0/16
   seq 310 permit 51.120.0.0/16
   seq 320 permit 51.124.0.0/16
   seq 330 permit 51.132.0.0/16
   seq 340 permit 51.136.0.0/15
   seq 350 permit 51.138.0.0/16
   seq 360 permit 51.140.0.0/14
   seq 370 permit 51.144.0.0/15
   seq 380 permit 52.126.0.0/15
   seq 390 permit 52.136.0.0/13
   seq 400 permit 52.146.0.0/15
   seq 410 permit 52.148.0.0/14
   seq 420 permit 52.152.0.0/13
   seq 430 permit 52.160.0.0/11
   seq 440 permit 52.224.0.0/11
   seq 450 permit 65.52.0.0/19
   seq 460 permit 65.52.32.0/21
   seq 470 permit 65.52.48.0/20
   seq 480 permit 65.52.64.0/20
   seq 490 permit 65.52.86.0/23
   seq 500 permit 65.52.98.96/28
   seq 510 permit 65.52.99.0/24
   seq 520 permit 65.52.101.0/24
   seq 530 permit 65.52.103.128/27
   seq 540 permit 65.52.106.16/28
   seq 550 permit 65.52.106.32/27
   seq 560 permit 65.52.106.64/26
   seq 570 permit 65.52.106.128/25
   seq 580 permit 65.52.107.0/28
   seq 590 permit 65.52.112.0/20
   seq 600 permit 65.52.128.0/17
   seq 610 permit 65.54.52.96/27
   seq 620 permit 65.54.55.160/27
   seq 630 permit 65.54.55.224/27
   seq 640 permit 65.55.19.64/26
   seq 650 permit 65.55.19.128/26
   seq 660 permit 65.55.25.96/28
   seq 670 permit 65.55.32.64/26
   seq 680 permit 65.55.32.128/27
   seq 690 permit 65.55.32.192/27
   seq 700 permit 65.55.32.224/28
   seq 710 permit 65.55.33.176/28
   seq 720 permit 65.55.33.192/28
   seq 730 permit 65.55.35.192/27
   seq 740 permit 65.55.39.144/28
   seq 750 permit 65.55.39.160/28
   seq 760 permit 65.55.53.112/28
   seq 770 permit 65.55.95.96/27
   seq 780 permit 70.37.0.0/17
   seq 790 permit 70.37.160.0/21
   seq 800 permit 94.245.88.0/21
   seq 810 permit 94.245.104.0/21
   seq 820 permit 94.245.114.0/26
   seq 830 permit 94.245.118.0/25
   seq 840 permit 94.245.118.128/27
   seq 850 permit 94.245.120.128/27
   seq 860 permit 94.245.122.0/24
   seq 870 permit 94.245.123.144/28
   seq 880 permit 102.37.0.0/16
   seq 890 permit 102.133.0.0/16
   seq 900 permit 104.40.0.0/14
   seq 910 permit 104.44.85.0/24
   seq 920 permit 104.44.128.0/18
   seq 930 permit 104.45.0.0/16
   seq 940 permit 104.46.0.0/16
   seq 950 permit 104.47.128.0/17
   seq 960 permit 104.208.0.0/14
   seq 970 permit 104.214.0.0/15
   seq 980 permit 111.221.16.176/28
   seq 990 permit 111.221.22.8/29
   seq 1000 permit 111.221.75.96/27
   seq 1010 permit 111.221.78.0/23
   seq 1020 permit 111.221.80.0/20
   seq 1030 permit 111.221.96.0/20
   seq 1040 permit 134.170.192.0/21
   seq 1050 permit 137.116.0.0/15
   seq 1060 permit 137.135.0.0/16
   seq 1070 permit 138.91.0.0/16
   seq 1080 permit 157.55.3.0/24
   seq 1090 permit 157.55.8.64/26
   seq 1100 permit 157.55.8.128/27
   seq 1110 permit 157.55.9.112/28
   seq 1120 permit 157.55.10.0/25
   seq 1130 permit 157.55.12.0/28
   seq 1140 permit 157.55.24.0/21
   seq 1150 permit 157.55.51.224/28
   seq 1160 permit 157.55.60.208/28
   seq 1170 permit 157.55.60.224/27
   seq 1180 permit 157.55.64.0/19
   seq 1190 permit 157.55.103.32/27
   seq 1200 permit 157.55.115.0/25
   seq 1210 permit 157.55.136.0/21
   seq 1220 permit 157.55.151.0/28
   seq 1230 permit 157.55.153.224/28
   seq 1240 permit 157.55.160.0/19
   seq 1250 permit 157.55.192.0/19
   seq 1260 permit 157.55.230.160/27
   seq 1270 permit 157.55.248.0/21
   seq 1280 permit 157.56.8.0/21
   seq 1290 permit 157.56.19.224/27
   seq 1300 permit 157.56.21.32/27
   seq 1310 permit 157.56.21.64/27
   seq 1320 permit 157.56.21.96/27
   seq 1330 permit 157.56.21.128/27
   seq 1340 permit 157.56.21.160/27
   seq 1350 permit 157.56.21.192/27
   seq 1360 permit 157.56.24.160/27
   seq 1370 permit 157.56.24.192/27
   seq 1380 permit 157.56.28.0/22
   seq 1390 permit 157.56.117.32/27
   seq 1400 permit 157.56.117.64/27
   seq 1410 permit 157.56.117.96/27
   seq 1420 permit 157.56.160.0/21
   seq 1430 permit 157.56.176.0/21
   seq 1440 permit 157.56.216.0/21
   seq 1450 permit 168.61.0.0/16
   seq 1460 permit 168.62.0.0/15
   seq 1470 permit 191.232.32.0/19
   seq 1480 permit 191.232.136.0/22
   seq 1490 permit 191.232.160.0/19
   seq 1500 permit 191.232.192.0/18
   seq 1510 permit 191.233.0.0/16
   seq 1520 permit 191.234.2.0/23
   seq 1530 permit 191.234.16.0/20
   seq 1540 permit 191.234.32.0/19
   seq 1550 permit 191.234.68.0/22
   seq 1560 permit 191.234.138.0/23
   seq 1570 permit 191.234.160.0/19
   seq 1580 permit 191.234.192.0/18
   seq 1590 permit 191.235.64.0/18
   seq 1600 permit 191.235.128.0/17
   seq 1610 permit 191.236.0.0/14
   seq 1620 permit 193.149.64.0/19
   seq 1630 permit 207.46.50.128/28
   seq 1640 permit 207.46.59.64/26
   seq 1650 permit 207.46.63.64/27
   seq 1660 permit 207.46.63.128/25
   seq 1670 permit 207.46.67.160/27
   seq 1680 permit 207.46.67.192/27
   seq 1690 permit 207.46.72.0/26
   seq 1700 permit 207.46.77.224/28
   seq 1710 permit 207.46.87.0/24
   seq 1720 permit 207.46.89.16/28
   seq 1730 permit 207.46.95.32/27
   seq 1740 permit 207.46.128.0/19
   seq 1750 permit 207.46.193.128/28
   seq 1760 permit 207.46.193.192/28
   seq 1770 permit 207.46.193.224/27
   seq 1780 permit 207.46.198.128/25
   seq 1790 permit 207.46.199.96/27
   seq 1800 permit 207.46.200.80/28
   seq 1810 permit 207.46.200.96/27
   seq 1820 permit 207.46.200.176/28
   seq 1830 permit 207.46.202.128/27
   seq 1840 permit 207.46.203.64/26
   seq 1850 permit 207.46.203.224/27
   seq 1860 permit 207.46.205.0/24
   seq 1870 permit 207.46.224.0/20
   seq 1880 permit 209.240.212.0/22
   seq 1890 permit 209.240.218.0/23
   seq 1900 permit 209.240.220.0/22
   seq 1910 permit 213.199.128.0/20
   seq 1920 permit 213.199.180.32/28
   seq 1930 permit 213.199.180.96/27
   seq 1940 permit 213.199.180.192/26
   seq 1950 permit 213.199.183.0/24
!
ip prefix-list ER-LOOPBACKS
   seq 10 permit 10.0.111.67/32
   seq 20 permit 10.0.111.70/32
   seq 30 permit 10.24.132.0/22
   seq 40 permit 10.63.156.0/22
   seq 50 permit 10.63.158.160/27
   seq 60 permit 13.105.15.0/25
   seq 70 permit 13.106.22.5/32
   seq 80 permit 20.37.144.0/27
   seq 90 permit 20.37.200.64/32
   seq 100 permit 20.37.200.65/32
   seq 110 permit 20.39.56.0/27
   seq 120 permit 20.39.56.32/27
   seq 130 permit 20.39.56.64/27
   seq 140 permit 20.39.56.176/28
   seq 150 permit 20.39.56.192/28
   seq 160 permit 20.39.56.240/30
   seq 170 permit 20.39.56.244/30
   seq 180 permit 20.42.160.0/28
   seq 190 permit 20.42.195.0/30
   seq 200 permit 20.42.232.16/29
   seq 210 permit 20.44.112.0/30
   seq 220 permit 20.44.144.0/29
   seq 230 permit 20.184.160.0/27
   seq 240 permit 20.184.160.32/27
   seq 250 permit 20.189.80.0/27
   seq 260 permit 20.189.208.16/30
   seq 270 permit 20.190.220.0/27
   seq 280 permit 20.190.220.32/27
   seq 290 permit 23.97.80.32/27
   seq 300 permit 25.77.239.13/32
   seq 310 permit 25.81.133.148/32
   seq 320 permit 25.149.140.191/32
   seq 330 permit 25.156.194.178/32
   seq 340 permit 40.74.192.0/27
   seq 350 permit 40.74.192.32/27
   seq 360 permit 40.80.64.16/30
   seq 370 permit 40.89.24.0/27
   seq 380 permit 40.119.16.80/30
   seq 390 permit 40.119.140.80/28
   seq 400 permit 40.119.216.0/27
   seq 410 permit 40.119.216.32/27
   seq 420 permit 40.119.216.64/27
   seq 430 permit 40.125.88.0/27
   seq 440 permit 40.125.88.32/27
   seq 450 permit 40.125.88.80/30
   seq 460 permit 51.104.104.0/27
   seq 470 permit 51.104.104.32/27
   seq 480 permit 51.104.104.144/28
   seq 490 permit 51.104.104.160/30
   seq 500 permit 51.105.0.0/27
   seq 510 permit 51.105.0.96/30
   seq 520 permit 51.107.64.32/30
   seq 530 permit 51.107.160.16/30
   seq 540 permit 51.136.64.0/29
   seq 550 permit 52.126.168.16/30
   seq 560 permit 52.142.176.0/27
   seq 570 permit 52.162.16.64/30
   seq 580 permit 52.172.72.16/30
   seq 590 permit 52.228.88.0/27
   seq 600 permit 52.228.88.32/27
   seq 610 permit 104.44.217.250/32
   seq 620 permit 104.44.217.251/32
   seq 630 permit 104.44.217.252/32
   seq 640 permit 104.44.217.253/32
   seq 650 permit 104.44.217.254/32
   seq 660 permit 104.44.217.255/32
   seq 670 permit 104.45.32.0/27
   seq 680 permit 104.45.32.32/27
!
ip prefix-list EXPORT-TO-ISIS
   seq 10 permit 10.20.0.0/16
   seq 20 permit 10.64.0.0/16
   seq 30 permit 10.41.192.0/18
   seq 40 permit 10.64.0.0/18
   seq 50 permit 25.64.0.0/10
   seq 60 permit 100.126.0.0/16
!
ip prefix-list GLOBAL-BOGON-FILTER
   seq 10 permit 0.0.0.0/8 ge 8
   seq 20 permit 10.0.0.0/8 ge 8
   seq 30 permit 100.64.0.0/10 ge 10
   seq 40 permit 127.0.0.0/8 ge 8
   seq 50 permit 169.254.0.0/16 ge 16
   seq 60 permit 172.16.0.0/12 ge 12
   seq 70 permit 192.0.2.0/24 ge 24
   seq 80 permit 192.168.0.0/16 ge 16
   seq 90 permit 224.0.0.0/4 ge 4
   seq 100 permit 240.0.0.0/4 ge 4
   seq 120 permit 192.0.0.0/24 ge 24
   seq 130 permit 203.0.113.0/24 ge 24
   seq 140 permit 198.51.100.0/24 ge 24
   seq 150 permit 198.18.0.0/24 ge 24
!
ip prefix-list GLOBAL-BOGON-FILTER-v4
   seq 10 permit 0.0.0.0/0
   seq 20 permit 0.0.0.0/0 ge 1 le 7
   seq 30 permit 0.0.0.0/0 ge 25 le 32
   seq 40 permit 0.0.0.0/8 ge 8
   seq 50 permit 10.0.0.0/8 ge 8
   seq 60 permit 100.64.0.0/10 ge 10
   seq 70 permit 127.0.0.0/8 ge 8
   seq 80 permit 169.254.0.0/16 ge 16
   seq 90 permit 172.16.0.0/12 ge 12
   seq 100 permit 192.0.2.0/24 ge 24
   seq 110 permit 192.168.0.0/16 ge 16
   seq 120 permit 224.0.0.0/4 ge 4
   seq 130 permit 240.0.0.0/4 ge 4
   seq 140 permit 192.0.0.0/24 ge 24
   seq 150 permit 203.0.113.0/24 ge 24
   seq 160 permit 198.51.100.0/24 ge 24
   seq 170 permit 198.18.0.0/24 ge 24
!
ip prefix-list GLOBAL-CUST-DEFAULT-OUT
   seq 10 permit 0.0.0.0/0
!
ip prefix-list GLOBAL-EGRESS-IP-SPACE
   seq 10 permit 13.64.0.0/11
   seq 20 permit 13.104.0.0/14
   seq 30 permit 20.0.0.0/11
   seq 40 permit 20.33.0.0/16
   seq 50 permit 20.34.0.0/15
   seq 60 permit 20.36.0.0/14
   seq 70 permit 20.40.0.0/13
   seq 80 permit 20.48.0.0/12
   seq 90 permit 20.64.0.0/10
   seq 100 permit 20.135.0.0/16
   seq 110 permit 20.136.0.0/16
   seq 120 permit 20.140.0.0/15
   seq 130 permit 20.143.0.0/16
   seq 140 permit 20.150.0.0/15
   seq 150 permit 20.152.0.0/16
   seq 160 permit 20.153.0.0/16
   seq 170 permit 20.157.0.0/16
   seq 180 permit 20.158.0.0/15
   seq 190 permit 20.160.0.0/12
   seq 200 permit 20.184.0.0/13
   seq 210 permit 20.192.0.0/10
   seq 220 permit 23.96.0.0/14
   seq 230 permit 23.100.0.0/15
   seq 240 permit 23.102.0.0/16
   seq 250 permit 23.103.64.0/18
   seq 260 permit 23.103.128.0/17
   seq 270 permit 40.64.0.0/10
   seq 280 permit 51.10.0.0/15
   seq 290 permit 51.12.0.0/15
   seq 300 permit 51.51.0.0/16
   seq 310 permit 51.53.0.0/16
   seq 320 permit 51.103.0.0/16
   seq 330 permit 51.104.0.0/15
   seq 340 permit 51.107.0.0/16
   seq 350 permit 51.116.0.0/16
   seq 360 permit 51.120.0.0/16
   seq 370 permit 51.124.0.0/16
   seq 380 permit 51.132.0.0/16
   seq 390 permit 51.136.0.0/15
   seq 400 permit 51.138.0.0/16
   seq 410 permit 51.140.0.0/14
   seq 420 permit 51.144.0.0/15
   seq 430 permit 52.96.0.0/12
   seq 440 permit 52.112.0.0/14
   seq 450 permit 52.120.0.0/14
   seq 460 permit 52.125.0.0/16
   seq 470 permit 52.126.0.0/15
   seq 480 permit 52.136.0.0/13
   seq 490 permit 52.146.0.0/15
   seq 500 permit 52.148.0.0/14
   seq 510 permit 52.152.0.0/13
   seq 520 permit 52.160.0.0/11
   seq 530 permit 52.224.0.0/11
   seq 540 permit 64.4.0.0/18
   seq 550 permit 64.41.193.0/24
   seq 560 permit 65.52.0.0/14
   seq 570 permit 66.119.144.0/20
   seq 580 permit 70.37.0.0/17
   seq 590 permit 70.37.128.0/18
   seq 600 permit 91.190.216.0/21
   seq 610 permit 94.245.64.0/18
   seq 620 permit 102.37.0.0/16
   seq 630 permit 102.133.0.0/16
   seq 640 permit 103.25.156.0/22
   seq 650 permit 103.36.96.0/22
   seq 660 permit 103.255.140.0/22
   seq 670 permit 104.40.0.0/13
   seq 680 permit 104.146.0.0/19
   seq 690 permit 104.146.128.0/17
   seq 700 permit 104.208.0.0/13
   seq 710 permit 111.221.16.0/20
   seq 720 permit 111.221.64.0/18
   seq 730 permit 128.94.0.0/16
   seq 740 permit 131.107.0.0/16
   seq 750 permit 131.253.1.0/24
   seq 760 permit 131.253.3.0/24
   seq 770 permit 131.253.5.0/24
   seq 780 permit 131.253.6.0/24
   seq 790 permit 131.253.8.0/24
   seq 800 permit 131.253.12.0/22
   seq 810 permit 131.253.16.0/23
   seq 820 permit 131.253.18.0/24
   seq 830 permit 131.253.21.0/24
   seq 840 permit 131.253.22.0/23
   seq 850 permit 131.253.24.0/21
   seq 860 permit 131.253.32.0/20
   seq 870 permit 131.253.61.0/24
   seq 880 permit 131.253.62.0/23
   seq 890 permit 131.253.64.0/18
   seq 900 permit 131.253.128.0/17
   seq 910 permit 132.245.0.0/16
   seq 920 permit 134.170.0.0/16
   seq 930 permit 135.149.0.0/16
   seq 940 permit 137.116.0.0/15
   seq 950 permit 137.135.0.0/16
   seq 960 permit 138.91.0.0/16
   seq 970 permit 138.239.0.0/16
   seq 980 permit 143.64.0.0/16
   seq 990 permit 147.145.0.0/16
   seq 1000 permit 147.243.0.0/16
   seq 1010 permit 148.7.0.0/16
   seq 1020 permit 150.171.0.0/16
   seq 1030 permit 155.62.0.0/16
   seq 1040 permit 157.54.0.0/15
   seq 1050 permit 157.56.0.0/14
   seq 1060 permit 157.60.0.0/16
   seq 1070 permit 158.158.0.0/16
   seq 1080 permit 159.27.0.0/16
   seq 1090 permit 163.228.0.0/16
   seq 1100 permit 167.105.0.0/16
   seq 1110 permit 167.220.0.0/16
   seq 1120 permit 168.61.0.0/16
   seq 1130 permit 168.62.0.0/15
   seq 1140 permit 169.138.0.0/16
   seq 1150 permit 170.165.0.0/16
   seq 1160 permit 191.232.0.0/13
   seq 1170 permit 192.48.225.0/24
   seq 1180 permit 192.84.160.0/23
   seq 1190 permit 192.92.196.0/24
   seq 1200 permit 192.100.102.0/24
   seq 1210 permit 192.100.103.0/24
   seq 1220 permit 192.100.104.0/21
   seq 1230 permit 192.100.112.0/21
   seq 1240 permit 192.100.120.0/21
   seq 1250 permit 192.100.128.0/22
   seq 1260 permit 192.197.157.0/24
   seq 1270 permit 193.149.64.0/19
   seq 1280 permit 193.221.113.0/24
   seq 1290 permit 194.41.16.0/20
   seq 1300 permit 194.69.96.0/19
   seq 1310 permit 195.134.224.0/19
   seq 1320 permit 198.49.8.0/24
   seq 1330 permit 198.105.232.0/22
   seq 1340 permit 198.180.95.0/24
   seq 1350 permit 198.180.97.0/24
   seq 1360 permit 198.200.130.0/24
   seq 1370 permit 198.206.164.0/24
   seq 1380 permit 199.2.137.0/24
   seq 1390 permit 199.30.16.0/20
   seq 1400 permit 199.60.28.0/24
   seq 1410 permit 199.74.210.0/24
   seq 1420 permit 199.103.90.0/23
   seq 1430 permit 199.103.122.0/24
   seq 1440 permit 199.242.32.0/20
   seq 1450 permit 199.242.48.0/21
   seq 1460 permit 202.89.224.0/20
   seq 1470 permit 204.13.120.0/21
   seq 1480 permit 204.14.180.0/22
   seq 1490 permit 204.79.135.0/24
   seq 1500 permit 204.79.179.0/24
   seq 1510 permit 204.79.180.0/23
   seq 1520 permit 204.79.188.0/24
   seq 1530 permit 204.79.195.0/24
   seq 1540 permit 204.79.196.0/23
   seq 1550 permit 204.79.197.0/24
   seq 1560 permit 204.79.252.0/24
   seq 1570 permit 204.95.96.0/20
   seq 1580 permit 204.152.18.0/23
   seq 1590 permit 204.152.140.0/23
   seq 1600 permit 204.176.46.0/24
   seq 1610 permit 204.182.144.0/24
   seq 1620 permit 204.231.192.0/24
   seq 1630 permit 204.231.194.0/23
   seq 1640 permit 204.231.196.0/22
   seq 1650 permit 204.231.200.0/21
   seq 1660 permit 204.231.208.0/20
   seq 1670 permit 204.231.236.0/24
   seq 1680 permit 204.255.244.0/23
   seq 1690 permit 205.174.224.0/20
   seq 1700 permit 206.138.168.0/21
   seq 1710 permit 206.191.224.0/19
   seq 1720 permit 207.46.0.0/16
   seq 1730 permit 207.68.128.0/18
   seq 1740 permit 207.82.250.0/23
   seq 1750 permit 208.68.136.0/21
   seq 1760 permit 208.76.44.0/22
   seq 1770 permit 208.84.0.0/21
   seq 1780 permit 209.1.15.0/24
   seq 1790 permit 209.185.128.0/22
   seq 1800 permit 209.240.192.0/19
   seq 1810 permit 213.199.128.0/18
   seq 1820 permit 216.32.180.0/22
   seq 1830 permit 216.32.240.0/22
   seq 1840 permit 216.33.240.0/22
   seq 1850 permit 216.34.51.0/24
   seq 1860 permit 216.220.208.0/20
   seq 1870 permit 30.130.0.0/16
!
ip prefix-list GLOBAL-EGRESS-IP-SPACE-SPECIFICS-v4
   seq 10 permit 13.64.0.0/11 ge 11 le 32
   seq 20 permit 13.104.0.0/14 ge 14 le 32
   seq 30 permit 20.0.0.0/11 ge 11 le 32
   seq 40 permit 20.33.0.0/16 ge 16 le 32
   seq 50 permit 20.34.0.0/15 ge 15 le 32
   seq 60 permit 20.36.0.0/14 ge 14 le 32
   seq 70 permit 20.40.0.0/13 ge 13 le 32
   seq 80 permit 20.48.0.0/12 ge 12 le 32
   seq 90 permit 20.64.0.0/10 ge 10 le 32
   seq 100 permit 20.135.0.0/16 ge 16 le 32
   seq 110 permit 20.136.0.0/16 ge 16 le 32
   seq 120 permit 20.140.0.0/15 ge 15 le 32
   seq 130 permit 20.143.0.0/16 ge 16 le 32
   seq 140 permit 20.150.0.0/15 ge 15 le 32
   seq 150 permit 20.152.0.0/16 ge 16 le 32
   seq 160 permit 20.153.0.0/16 ge 16 le 32
   seq 170 permit 20.157.0.0/16 ge 16 le 32
   seq 180 permit 20.158.0.0/15 ge 15 le 32
   seq 190 permit 20.160.0.0/12 ge 12 le 32
   seq 200 permit 20.184.0.0/13 ge 13 le 32
   seq 210 permit 20.192.0.0/10 ge 10 le 32
   seq 220 permit 23.96.0.0/14 ge 14 le 32
   seq 230 permit 23.100.0.0/15 ge 15 le 32
   seq 240 permit 23.102.0.0/16 ge 16 le 32
   seq 250 permit 23.103.64.0/18 ge 18 le 32
   seq 260 permit 23.103.128.0/17 ge 17 le 32
   seq 270 permit 40.64.0.0/10 ge 10 le 32
   seq 280 permit 51.10.0.0/15 ge 15 le 32
   seq 290 permit 51.12.0.0/15 ge 15 le 32
   seq 300 permit 51.51.0.0/16 ge 16 le 32
   seq 310 permit 51.53.0.0/16 ge 16 le 32
   seq 320 permit 51.103.0.0/16 ge 16 le 32
   seq 330 permit 51.104.0.0/15 ge 15 le 32
   seq 340 permit 51.107.0.0/16 ge 16 le 32
   seq 350 permit 51.116.0.0/16 ge 16 le 32
   seq 360 permit 51.120.0.0/16 ge 16 le 32
   seq 370 permit 51.124.0.0/16 ge 16 le 32
   seq 380 permit 51.132.0.0/16 ge 16 le 32
   seq 390 permit 51.136.0.0/15 ge 15 le 32
   seq 400 permit 51.138.0.0/16 ge 16 le 32
   seq 410 permit 51.140.0.0/14 ge 14 le 32
   seq 420 permit 51.144.0.0/15 ge 15 le 32
   seq 430 permit 52.96.0.0/12 ge 12 le 32
   seq 440 permit 52.112.0.0/14 ge 14 le 32
   seq 450 permit 52.120.0.0/14 ge 14 le 32
   seq 460 permit 52.125.0.0/16 ge 16 le 32
   seq 470 permit 52.126.0.0/15 ge 15 le 32
   seq 480 permit 52.136.0.0/13 ge 13 le 32
   seq 490 permit 52.146.0.0/15 ge 15 le 32
   seq 500 permit 52.148.0.0/14 ge 14 le 32
   seq 510 permit 52.152.0.0/13 ge 13 le 32
   seq 520 permit 52.160.0.0/11 ge 11 le 32
   seq 530 permit 52.224.0.0/11 ge 11 le 32
   seq 540 permit 64.4.0.0/18 ge 18 le 32
   seq 550 permit 64.41.193.0/24 ge 24 le 32
   seq 560 permit 65.52.0.0/14 ge 14 le 32
   seq 570 permit 65.221.5.0/24 ge 24 le 32
   seq 580 permit 66.119.144.0/20 ge 20 le 32
   seq 590 permit 70.37.0.0/17 ge 17 le 32
   seq 600 permit 70.37.128.0/18 ge 18 le 32
   seq 610 permit 91.190.216.0/21 ge 21 le 32
   seq 620 permit 91.234.254.0/24 ge 24 le 32
   seq 630 permit 94.245.64.0/18 ge 18 le 32
   seq 640 permit 102.133.0.0/16 ge 16 le 32
   seq 650 permit 103.25.156.0/22 ge 22 le 32
   seq 660 permit 103.36.96.0/22 ge 22 le 32
   seq 670 permit 103.255.140.0/22 ge 22 le 32
   seq 680 permit 104.40.0.0/13 ge 13 le 32
   seq 690 permit 104.146.0.0/19 ge 19 le 32
   seq 700 permit 104.146.128.0/17 ge 17 le 32
   seq 710 permit 104.208.0.0/13 ge 13 le 32
   seq 720 permit 111.221.16.0/20 ge 20 le 32
   seq 730 permit 111.221.64.0/18 ge 18 le 32
   seq 740 permit 131.107.0.0/16 ge 16 le 32
   seq 750 permit 131.253.1.0/24 ge 24 le 32
   seq 760 permit 131.253.3.0/24 ge 24 le 32
   seq 770 permit 131.253.5.0/24 ge 24 le 32
   seq 780 permit 131.253.6.0/24 ge 24 le 32
   seq 790 permit 131.253.8.0/24 ge 24 le 32
   seq 800 permit 131.253.12.0/22 ge 22 le 32
   seq 810 permit 131.253.16.0/23 ge 23 le 32
   seq 820 permit 131.253.18.0/24 ge 24 le 32
   seq 830 permit 131.253.21.0/24 ge 24 le 32
   seq 840 permit 131.253.22.0/23 ge 23 le 32
   seq 850 permit 131.253.24.0/21 ge 21 le 32
   seq 860 permit 131.253.32.0/20 ge 20 le 32
   seq 870 permit 131.253.61.0/24 ge 24 le 32
   seq 880 permit 131.253.62.0/23 ge 23 le 32
   seq 890 permit 131.253.64.0/18 ge 18 le 32
   seq 900 permit 131.253.128.0/17 ge 17 le 32
   seq 910 permit 132.245.0.0/16 ge 16 le 32
   seq 920 permit 134.170.0.0/16 ge 16 le 32
   seq 930 permit 137.116.0.0/15 ge 15 le 32
   seq 940 permit 137.135.0.0/16 ge 16 le 32
   seq 950 permit 138.91.0.0/16 ge 16 le 32
   seq 960 permit 147.243.0.0/16 ge 16 le 32
   seq 970 permit 150.171.0.0/16 ge 16 le 32
   seq 980 permit 157.54.0.0/15 ge 15 le 32
   seq 990 permit 157.56.0.0/14 ge 14 le 32
   seq 1000 permit 157.60.0.0/16 ge 16 le 32
   seq 1010 permit 167.220.0.0/16 ge 16 le 32
   seq 1020 permit 168.61.0.0/16 ge 16 le 32
   seq 1030 permit 168.62.0.0/15 ge 15 le 32
   seq 1040 permit 191.232.0.0/13 ge 13 le 32
   seq 1050 permit 192.48.225.0/24 ge 24 le 32
   seq 1060 permit 192.84.160.0/23 ge 23 le 32
   seq 1070 permit 192.92.196.0/24 ge 24 le 32
   seq 1080 permit 192.100.102.0/24 ge 24 le 32
   seq 1090 permit 192.100.103.0/24 ge 24 le 32
   seq 1100 permit 192.100.104.0/21 ge 21 le 32
   seq 1110 permit 192.100.112.0/21 ge 21 le 32
   seq 1120 permit 192.100.120.0/21 ge 21 le 32
   seq 1130 permit 192.100.128.0/22 ge 22 le 32
   seq 1140 permit 192.144.0.0/24 ge 24 le 32
   seq 1150 permit 192.197.157.0/24 ge 24 le 32
   seq 1160 permit 193.149.64.0/19 ge 19 le 32
   seq 1170 permit 193.221.113.0/24 ge 24 le 32
   seq 1180 permit 194.41.16.0/20 ge 20 le 32
   seq 1190 permit 194.69.96.0/19 ge 19 le 32
   seq 1200 permit 195.134.224.0/19 ge 19 le 32
   seq 1210 permit 198.49.8.0/24 ge 24 le 32
   seq 1220 permit 198.105.232.0/22 ge 22 le 32
   seq 1230 permit 198.180.95.0/24 ge 24 le 32
   seq 1240 permit 198.200.130.0/24 ge 24 le 32
   seq 1250 permit 198.206.164.0/24 ge 24 le 32
   seq 1260 permit 199.2.137.0/24 ge 24 le 32
   seq 1270 permit 199.30.16.0/20 ge 20 le 32
   seq 1280 permit 199.60.28.0/24 ge 24 le 32
   seq 1290 permit 199.74.210.0/24 ge 24 le 32
   seq 1300 permit 199.103.90.0/23 ge 23 le 32
   seq 1310 permit 199.103.122.0/24 ge 24 le 32
   seq 1320 permit 199.242.32.0/20 ge 20 le 32
   seq 1330 permit 199.242.48.0/21 ge 21 le 32
   seq 1340 permit 202.89.224.0/20 ge 20 le 32
   seq 1350 permit 204.13.120.0/21 ge 21 le 32
   seq 1360 permit 204.14.180.0/22 ge 22 le 32
   seq 1370 permit 204.79.135.0/24 ge 24 le 32
   seq 1380 permit 204.79.179.0/24 ge 24 le 32
   seq 1390 permit 204.79.180.0/23 ge 23 le 32
   seq 1400 permit 204.79.188.0/24 ge 24 le 32
   seq 1410 permit 204.79.195.0/24 ge 24 le 32
   seq 1420 permit 204.79.196.0/23 ge 23 le 32
   seq 1430 permit 204.79.197.0/24 ge 24 le 32
   seq 1440 permit 204.79.252.0/24 ge 24 le 32
   seq 1450 permit 204.95.96.0/20 ge 20 le 32
   seq 1460 permit 204.152.18.0/23 ge 23 le 32
   seq 1470 permit 204.152.140.0/23 ge 23 le 32
   seq 1480 permit 204.176.46.0/24 ge 24 le 32
   seq 1490 permit 204.182.144.0/24 ge 24 le 32
   seq 1500 permit 204.231.192.0/24 ge 24 le 32
   seq 1510 permit 204.231.194.0/23 ge 23 le 32
   seq 1520 permit 204.231.196.0/22 ge 22 le 32
   seq 1530 permit 204.231.200.0/21 ge 21 le 32
   seq 1540 permit 204.231.208.0/20 ge 20 le 32
   seq 1550 permit 204.231.236.0/24 ge 24 le 32
   seq 1560 permit 204.255.244.0/23 ge 23 le 32
   seq 1570 permit 205.174.224.0/20 ge 20 le 32
   seq 1580 permit 206.138.168.0/21 ge 21 le 32
   seq 1590 permit 206.191.224.0/19 ge 19 le 32
   seq 1600 permit 207.46.0.0/16 ge 16 le 32
   seq 1610 permit 207.68.128.0/18 ge 18 le 32
   seq 1620 permit 207.82.250.0/23 ge 23 le 32
   seq 1630 permit 208.68.136.0/21 ge 21 le 32
   seq 1640 permit 208.76.44.0/22 ge 22 le 32
   seq 1650 permit 208.84.0.0/21 ge 21 le 32
   seq 1660 permit 209.1.15.0/24 ge 24 le 32
   seq 1670 permit 209.185.128.0/22 ge 22 le 32
   seq 1680 permit 209.185.240.0/22 ge 22 le 32
   seq 1690 permit 209.240.192.0/19 ge 19 le 32
   seq 1700 permit 213.199.128.0/18 ge 18 le 32
   seq 1710 permit 216.32.180.0/22 ge 22 le 32
   seq 1720 permit 216.32.240.0/22 ge 22 le 32
   seq 1730 permit 216.33.240.0/22 ge 22 le 32
   seq 1740 permit 216.34.51.0/24 ge 24 le 32
   seq 1750 permit 216.220.208.0/20 ge 20 le 32
!
ip prefix-list GLOBAL-EGRESS-IP-SPACE-v4
   seq 10 permit 13.64.0.0/11 ge 11 le 24
   seq 20 permit 13.104.0.0/14 ge 14 le 24
   seq 30 permit 20.0.0.0/11 ge 11 le 24
   seq 40 permit 20.33.0.0/16 ge 16 le 24
   seq 50 permit 20.34.0.0/15 ge 15 le 24
   seq 60 permit 20.36.0.0/14 ge 14 le 24
   seq 70 permit 20.40.0.0/13 ge 13 le 24
   seq 80 permit 20.48.0.0/12 ge 12 le 24
   seq 90 permit 20.64.0.0/10 ge 10 le 24
   seq 100 permit 20.135.0.0/16 ge 16 le 24
   seq 110 permit 20.136.0.0/16 ge 16 le 24
   seq 120 permit 20.140.0.0/15 ge 15 le 24
   seq 130 permit 20.143.0.0/16 ge 16 le 24
   seq 140 permit 20.150.0.0/15 ge 15 le 24
   seq 150 permit 20.152.0.0/16 ge 16 le 24
   seq 160 permit 20.153.0.0/16 ge 16 le 24
   seq 170 permit 20.157.0.0/16 ge 16 le 24
   seq 180 permit 20.158.0.0/15 ge 15 le 24
   seq 190 permit 20.160.0.0/12 ge 12 le 24
   seq 200 permit 20.184.0.0/13 ge 13 le 24
   seq 210 permit 20.192.0.0/10 ge 10 le 24
   seq 220 permit 23.96.0.0/14 ge 14 le 24
   seq 230 permit 23.100.0.0/15 ge 15 le 24
   seq 240 permit 23.102.0.0/16 ge 16 le 24
   seq 250 permit 23.103.64.0/18 ge 18 le 24
   seq 260 permit 23.103.128.0/17 ge 17 le 24
   seq 270 permit 40.64.0.0/10 ge 10 le 24
   seq 280 permit 51.10.0.0/15 ge 15 le 24
   seq 290 permit 51.12.0.0/15 ge 15 le 24
   seq 300 permit 51.51.0.0/16 ge 16 le 24
   seq 310 permit 51.53.0.0/16 ge 16 le 24
   seq 320 permit 51.103.0.0/16 ge 16 le 24
   seq 330 permit 51.104.0.0/15 ge 15 le 24
   seq 340 permit 51.107.0.0/16 ge 16 le 24
   seq 350 permit 51.116.0.0/16 ge 16 le 24
   seq 360 permit 51.120.0.0/16 ge 16 le 24
   seq 370 permit 51.124.0.0/16 ge 16 le 24
   seq 380 permit 51.132.0.0/16 ge 16 le 24
   seq 390 permit 51.136.0.0/15 ge 15 le 24
   seq 400 permit 51.138.0.0/16 ge 16 le 24
   seq 410 permit 51.140.0.0/14 ge 14 le 24
   seq 420 permit 51.144.0.0/15 ge 15 le 24
   seq 430 permit 52.96.0.0/12 ge 12 le 24
   seq 440 permit 52.112.0.0/14 ge 14 le 24
   seq 450 permit 52.120.0.0/14 ge 14 le 24
   seq 460 permit 52.125.0.0/16 ge 16 le 24
   seq 470 permit 52.126.0.0/15 ge 15 le 24
   seq 480 permit 52.136.0.0/13 ge 13 le 24
   seq 490 permit 52.146.0.0/15 ge 15 le 24
   seq 500 permit 52.148.0.0/14 ge 14 le 24
   seq 510 permit 52.152.0.0/13 ge 13 le 24
   seq 520 permit 52.160.0.0/11 ge 11 le 24
   seq 530 permit 52.224.0.0/11 ge 11 le 24
   seq 540 permit 64.4.0.0/18 ge 18 le 24
   seq 550 permit 64.41.193.0/24
   seq 560 permit 65.52.0.0/14 ge 14 le 24
   seq 570 permit 65.221.5.0/24
   seq 580 permit 66.119.144.0/20 ge 20 le 24
   seq 590 permit 70.37.0.0/17 ge 17 le 24
   seq 600 permit 70.37.128.0/18 ge 18 le 24
   seq 610 permit 91.190.216.0/21 ge 21 le 24
   seq 620 permit 91.234.254.0/24
   seq 630 permit 94.245.64.0/18 ge 18 le 24
   seq 640 permit 102.133.0.0/16 ge 16 le 24
   seq 650 permit 103.25.156.0/22 ge 22 le 24
   seq 660 permit 103.36.96.0/22 ge 22 le 24
   seq 670 permit 103.255.140.0/22 ge 22 le 24
   seq 680 permit 104.40.0.0/13 ge 13 le 24
   seq 690 permit 104.146.0.0/19 ge 19 le 24
   seq 700 permit 104.146.128.0/17 ge 17 le 24
   seq 710 permit 104.208.0.0/13 ge 13 le 24
   seq 720 permit 111.221.16.0/20 ge 20 le 24
   seq 730 permit 111.221.64.0/18 ge 18 le 24
   seq 740 permit 131.107.0.0/16 ge 16 le 24
   seq 750 permit 131.253.1.0/24
   seq 760 permit 131.253.3.0/24
   seq 770 permit 131.253.5.0/24
   seq 780 permit 131.253.6.0/24
   seq 790 permit 131.253.8.0/24
   seq 800 permit 131.253.12.0/22 ge 22 le 24
   seq 810 permit 131.253.16.0/23 ge 23 le 24
   seq 820 permit 131.253.18.0/24
   seq 830 permit 131.253.21.0/24
   seq 840 permit 131.253.22.0/23 ge 23 le 24
   seq 850 permit 131.253.24.0/21 ge 21 le 24
   seq 860 permit 131.253.32.0/20 ge 20 le 24
   seq 870 permit 131.253.61.0/24
   seq 880 permit 131.253.62.0/23 ge 23 le 24
   seq 890 permit 131.253.64.0/18 ge 18 le 24
   seq 900 permit 131.253.128.0/17 ge 17 le 24
   seq 910 permit 132.245.0.0/16 ge 16 le 24
   seq 920 permit 134.170.0.0/16 ge 16 le 24
   seq 930 permit 137.116.0.0/15 ge 15 le 24
   seq 940 permit 137.135.0.0/16 ge 16 le 24
   seq 950 permit 138.91.0.0/16 ge 16 le 24
   seq 960 permit 147.243.0.0/16 ge 16 le 24
   seq 970 permit 150.171.0.0/16 ge 16 le 24
   seq 980 permit 157.54.0.0/15 ge 15 le 24
   seq 990 permit 157.54.0.0/20 ge 20 le 24
   seq 1000 permit 157.56.0.0/14 ge 14 le 24
   seq 1010 permit 157.60.0.0/16 ge 16 le 24
   seq 1020 permit 167.220.0.0/16 ge 16 le 24
   seq 1030 permit 168.61.0.0/16 ge 16 le 24
   seq 1040 permit 168.62.0.0/15 ge 15 le 24
   seq 1050 permit 191.232.0.0/13 ge 13 le 24
   seq 1060 permit 192.48.225.0/24
   seq 1070 permit 192.84.160.0/23 ge 23 le 24
   seq 1080 permit 192.92.196.0/24
   seq 1090 permit 192.100.102.0/24
   seq 1100 permit 192.100.103.0/24
   seq 1110 permit 192.100.104.0/21 ge 21 le 24
   seq 1120 permit 192.100.112.0/21 ge 21 le 24
   seq 1130 permit 192.100.120.0/21 ge 21 le 24
   seq 1140 permit 192.100.128.0/22 ge 22 le 24
   seq 1150 permit 192.197.157.0/24
   seq 1160 permit 193.149.64.0/19 ge 19 le 24
   seq 1170 permit 193.221.113.0/24
   seq 1180 permit 194.41.16.0/20 ge 20 le 24
   seq 1190 permit 194.69.96.0/19 ge 19 le 24
   seq 1200 permit 195.134.224.0/19 ge 19 le 24
   seq 1210 permit 198.49.8.0/24
   seq 1220 permit 198.105.232.0/22 ge 22 le 24
   seq 1230 permit 198.180.95.0/24
   seq 1240 permit 198.200.130.0/24
   seq 1250 permit 198.206.164.0/24
   seq 1260 permit 199.2.137.0/24
   seq 1270 permit 199.30.16.0/20 ge 20 le 24
   seq 1280 permit 199.60.28.0/24
   seq 1290 permit 199.74.210.0/24
   seq 1300 permit 199.103.90.0/23 ge 23 le 24
   seq 1310 permit 199.103.122.0/24
   seq 1320 permit 199.242.32.0/20 ge 20 le 24
   seq 1330 permit 199.242.48.0/21 ge 21 le 24
   seq 1340 permit 202.89.224.0/20 ge 20 le 24
   seq 1350 permit 204.13.120.0/21 ge 21 le 24
   seq 1360 permit 204.14.180.0/22 ge 22 le 24
   seq 1370 permit 204.79.135.0/24
   seq 1380 permit 204.79.179.0/24
   seq 1390 permit 204.79.180.0/23 ge 23 le 24
   seq 1400 permit 204.79.188.0/24
   seq 1410 permit 204.79.195.0/24
   seq 1420 permit 204.79.196.0/23 ge 23 le 24
   seq 1430 permit 204.79.197.0/24
   seq 1440 permit 204.79.252.0/24
   seq 1450 permit 204.95.96.0/20 ge 20 le 24
   seq 1460 permit 204.152.18.0/23 ge 23 le 24
   seq 1470 permit 204.152.140.0/23 ge 23 le 24
   seq 1480 permit 204.176.46.0/24
   seq 1490 permit 204.182.144.0/24
   seq 1500 permit 204.231.192.0/24
   seq 1510 permit 204.231.194.0/23 ge 23 le 24
   seq 1520 permit 204.231.196.0/22 ge 22 le 24
   seq 1530 permit 204.231.200.0/21 ge 21 le 24
   seq 1540 permit 204.231.208.0/20 ge 20 le 24
   seq 1550 permit 204.231.236.0/24
   seq 1560 permit 204.255.244.0/23 ge 23 le 24
   seq 1570 permit 205.174.224.0/20 ge 20 le 24
   seq 1580 permit 206.138.168.0/21 ge 21 le 24
   seq 1590 permit 206.191.224.0/19 ge 19 le 24
   seq 1600 permit 207.46.0.0/16 ge 16 le 24
   seq 1610 permit 207.68.128.0/18 ge 18 le 24
   seq 1620 permit 207.82.250.0/23 ge 23 le 24
   seq 1630 permit 208.68.136.0/21 ge 21 le 24
   seq 1640 permit 208.76.44.0/22 ge 22 le 24
   seq 1650 permit 208.84.0.0/21 ge 21 le 24
   seq 1660 permit 209.1.15.0/24
   seq 1670 permit 209.185.128.0/22 ge 22 le 24
   seq 1680 permit 209.185.240.0/22 ge 22 le 24
   seq 1690 permit 209.240.192.0/19 ge 19 le 24
   seq 1700 permit 213.199.128.0/18 ge 18 le 24
   seq 1710 permit 216.32.180.0/22 ge 22 le 24
   seq 1720 permit 216.32.240.0/22 ge 22 le 24
   seq 1730 permit 216.33.240.0/22 ge 22 le 24
   seq 1740 permit 216.34.51.0/24
   seq 1750 permit 216.220.208.0/20 ge 20 le 24
!
ip prefix-list IDENTITY-AS
   seq 10 permit 13.75.88.52/32
   seq 20 permit 13.75.90.19/32
   seq 30 permit 13.75.90.35/32
   seq 40 permit 13.75.90.183/32
   seq 50 permit 13.75.91.110/32
   seq 60 permit 13.75.92.74/32
   seq 70 permit 13.75.93.69/32
   seq 80 permit 13.75.94.1/32
   seq 90 permit 13.75.94.4/32
   seq 100 permit 13.75.94.23/32
   seq 110 permit 13.75.94.181/32
   seq 120 permit 13.75.95.13/32
   seq 130 permit 13.75.113.72/32
   seq 140 permit 13.75.114.100/32
   seq 150 permit 13.75.121.215/32
   seq 160 permit 13.75.125.48/32
   seq 170 permit 13.76.97.152/32
   seq 180 permit 13.76.100.50/32
   seq 190 permit 13.76.208.173/32
   seq 200 permit 13.76.247.164/32
   seq 210 permit 13.94.24.95/32
   seq 220 permit 13.94.27.46/32
   seq 230 permit 13.94.33.9/32
   seq 240 permit 13.94.46.216/32
   seq 250 permit 20.184.1.207/32
   seq 260 permit 20.184.1.254/32
   seq 270 permit 20.184.3.89/32
   seq 280 permit 20.184.3.90/32
   seq 290 permit 20.184.3.92/32
   seq 300 permit 20.184.3.146/32
   seq 310 permit 20.184.4.6/32
   seq 320 permit 20.184.4.9/32
   seq 330 permit 23.102.236.110/32
   seq 340 permit 23.102.237.94/32
   seq 350 permit 23.102.238.238/32
   seq 360 permit 40.83.121.235/32
   seq 370 permit 40.83.122.207/32
   seq 380 permit 40.83.122.220/32
   seq 390 permit 40.83.124.112/32
   seq 400 permit 40.83.124.246/32
   seq 410 permit 40.83.126.117/32
   seq 420 permit 40.83.127.243/32
   seq 430 permit 52.163.92.240/32
   seq 440 permit 52.163.94.204/32
   seq 450 permit 52.163.118.59/32
   seq 460 permit 52.163.123.2/32
   seq 470 permit 52.163.211.177/32
   seq 480 permit 52.163.215.212/32
   seq 490 permit 52.163.219.241/32
   seq 500 permit 52.163.226.140/32
   seq 510 permit 52.163.229.167/32
   seq 520 permit 52.163.241.114/32
   seq 530 permit 52.175.23.211/32
   seq 540 permit 52.175.25.101/32
   seq 550 permit 52.175.27.41/32
   seq 560 permit 52.175.28.140/32
   seq 570 permit 52.175.31.247/32
   seq 580 permit 52.175.33.200/32
   seq 590 permit 52.175.39.194/32
   seq 600 permit 52.184.26.159/32
   seq 610 permit 52.187.37.10/32
   seq 620 permit 52.187.67.242/32
   seq 630 permit 52.187.72.121/32
   seq 640 permit 52.187.78.162/32
   seq 650 permit 52.187.122.245/32
   seq 660 permit 52.187.124.202/32
   seq 670 permit 52.187.128.140/32
   seq 680 permit 52.187.134.232/32
   seq 690 permit 52.187.164.172/32
   seq 700 permit 52.229.170.137/32
   seq 710 permit 52.229.170.149/32
   seq 720 permit 52.229.171.47/32
   seq 730 permit 52.230.65.100/32
   seq 740 permit 52.230.124.125/32
   seq 750 permit 207.46.233.6/32
   seq 760 permit 207.46.236.4/32
   seq 770 permit 207.46.236.31/32
   seq 780 permit 207.46.236.143/32
   seq 790 permit 207.46.237.88/32
   seq 800 permit 207.46.237.158/32
   seq 810 permit 207.46.237.194/32
   seq 820 permit 207.46.237.213/32
!
ip prefix-list IDENTITY-EU
   seq 10 permit 13.94.235.65/32
   seq 20 permit 51.136.15.98/32
   seq 30 permit 51.136.30.139/32
   seq 40 permit 51.137.49.119/32
   seq 50 permit 51.137.99.118/32
   seq 60 permit 51.144.162.25/32
   seq 70 permit 51.144.230.43/32
   seq 80 permit 52.138.148.88/32
   seq 90 permit 52.138.221.86/32
   seq 100 permit 52.169.1.240/32
   seq 110 permit 52.169.84.94/32
   seq 120 permit 52.169.85.142/32
   seq 130 permit 52.178.184.238/32
   seq 140 permit 52.178.188.120/32
   seq 150 permit 52.178.196.187/32
   seq 160 permit 52.232.76.88/32
   seq 170 permit 104.45.17.212/32
!
ip prefix-list IPV4_18_OR_LONGER
   seq 5 permit 0.0.0.0/0 ge 18
!
ip prefix-list IPV4_PREFIXES_TRANSITEDGE
   seq 1 permit 10.20.0.0/16 ge 16
   seq 2 permit 10.41.192.0/18 ge 18
   seq 3 permit 10.52.180.177/32
   seq 4 permit 10.52.180.179/32
   seq 5 permit 10.64.0.0/18 ge 18
   seq 6 permit 20.39.32.0/19 ge 19
   seq 7 permit 20.47.0.0/17 ge 23
   seq 8 permit 20.157.0.0/16 ge 16
   seq 9 permit 25.66.128.0/17 ge 17
   seq 10 permit 52.122.0.0/16 ge 16
!
ip prefix-list IPV6-ANYCAST-IP-SPACE-ORLONGER
!
ip prefix-list IPv4ONEDDOS-A10-Loopback
   seq 10 permit 40.66.64.0/24
!
ip prefix-list IPv4ONEDDOS-A10-MGMT
   seq 10 permit 10.5.199.11/32
   seq 20 permit 10.5.199.13/32
   seq 30 permit 10.5.199.14/31
   seq 40 permit 10.5.209.75/32
   seq 50 permit 10.5.209.76/31
   seq 60 permit 10.5.209.79/32
   seq 70 permit 10.5.209.82/32
   seq 80 permit 10.5.232.66/31
   seq 90 permit 10.17.177.250/31
   seq 100 permit 10.104.16.39/32
   seq 110 permit 10.104.16.167/32
   seq 120 permit 10.104.20.17/32
   seq 130 permit 10.104.20.145/32
   seq 140 permit 10.232.203.143/32
   seq 150 permit 10.232.203.144/32
   seq 160 permit 25.68.226.135/32
   seq 170 permit 25.68.226.140/32
   seq 180 permit 25.68.230.135/32
   seq 190 permit 25.68.230.140/32
   seq 200 permit 25.72.217.16/31
   seq 210 permit 25.72.220.16/31
   seq 220 permit 25.73.19.16/31
   seq 230 permit 25.73.21.144/31
   seq 240 permit 25.73.90.16/31
   seq 250 permit 25.73.92.144/31
   seq 260 permit 25.73.240.142/32
   seq 270 permit 25.73.241.206/32
   seq 280 permit 25.73.242.206/32
   seq 290 permit 25.73.244.14/32
   seq 300 permit 25.74.9.27/32
   seq 310 permit 25.74.9.28/32
   seq 320 permit 25.74.11.144/31
   seq 330 permit 25.74.74.144/31
   seq 340 permit 25.74.76.16/31
   seq 350 permit 25.75.72.14/32
   seq 360 permit 25.75.72.206/32
   seq 370 permit 25.75.73.142/32
   seq 380 permit 25.75.74.78/32
   seq 390 permit 25.76.138.144/31
   seq 400 permit 25.76.140.25/32
   seq 410 permit 25.76.140.26/32
   seq 420 permit 25.81.65.14/32
   seq 430 permit 25.81.67.142/32
   seq 440 permit 25.81.69.142/32
   seq 450 permit 25.81.72.14/32
   seq 460 permit 25.85.152.22/32
   seq 470 permit 25.85.152.26/32
   seq 480 permit 25.85.209.135/32
   seq 490 permit 25.85.209.136/32
   seq 500 permit 25.85.212.7/32
   seq 510 permit 25.85.212.8/32
   seq 520 permit 25.85.234.135/32
   seq 530 permit 25.85.234.140/32
   seq 540 permit 25.85.238.133/32
   seq 550 permit 25.85.238.138/32
   seq 560 permit 25.86.32.12/32
   seq 570 permit 25.86.32.18/32
   seq 580 permit 25.86.34.14/32
   seq 590 permit 25.86.34.16/32
   seq 600 permit 25.87.100.135/32
   seq 610 permit 25.87.100.138/32
   seq 620 permit 25.87.160.7/32
   seq 630 permit 25.87.160.11/32
   seq 640 permit 25.87.192.25/32
   seq 650 permit 25.87.192.27/32
   seq 660 permit 25.87.224.25/32
   seq 670 permit 25.87.224.27/32
   seq 680 permit 25.89.114.137/32
   seq 690 permit 25.89.114.140/32
   seq 700 permit 25.90.40.5/32
   seq 710 permit 25.90.40.9/32
   seq 720 permit 25.92.209.137/32
   seq 730 permit 25.92.209.140/32
   seq 740 permit 25.92.212.137/32
   seq 750 permit 25.92.212.142/32
   seq 760 permit 25.92.224.14/32
   seq 770 permit 25.92.224.18/32
   seq 780 permit 25.93.200.5/32
   seq 790 permit 25.93.200.9/32
   seq 800 permit 25.93.235.139/32
   seq 810 permit 25.93.235.203/32
   seq 820 permit 25.93.236.11/32
   seq 830 permit 25.93.236.75/32
   seq 840 permit 25.93.236.139/32
   seq 850 permit 25.93.236.203/32
   seq 860 permit 25.99.208.14/32
   seq 870 permit 25.99.208.18/32
   seq 880 permit 25.122.211.16/31
   seq 890 permit 25.122.215.144/31
   seq 900 permit 25.125.42.144/31
   seq 910 permit 25.125.46.144/31
   seq 920 permit 25.125.72.18/32
   seq 930 permit 25.148.129.94/32
   seq 940 permit 25.148.129.222/32
   seq 950 permit 25.150.6.135/32
   seq 960 permit 25.150.6.199/32
   seq 970 permit 25.150.14.9/32
   seq 980 permit 25.150.14.73/32
   seq 990 permit 25.150.16.7/32
   seq 1000 permit 25.150.16.71/32
   seq 1010 permit 25.150.64.28/31
   seq 1020 permit 25.150.64.92/31
   seq 1030 permit 25.150.64.156/32
   seq 1040 permit 25.150.64.220/32
   seq 1050 permit 25.150.136.11/32
   seq 1060 permit 25.150.136.75/32
   seq 1070 permit 25.150.176.17/32
   seq 1080 permit 25.150.176.81/32
   seq 1090 permit 25.150.200.17/32
   seq 1100 permit 25.150.200.81/32
   seq 1110 permit 25.150.232.9/32
   seq 1120 permit 25.150.232.73/32
   seq 1130 permit 25.150.240.9/32
   seq 1140 permit 25.150.240.73/32
   seq 1150 permit 25.159.0.5/32
   seq 1160 permit 25.159.0.69/32
   seq 1170 permit 25.159.56.5/32
   seq 1180 permit 25.159.56.69/32
   seq 1190 permit 25.159.80.5/32
   seq 1200 permit 25.159.80.69/32
   seq 1210 permit 25.159.81.133/32
   seq 1220 permit 25.159.81.197/32
   seq 1230 permit 25.184.112.91/32
   seq 1240 permit 25.184.113.93/32
   seq 1250 permit 25.184.113.219/32
   seq 1260 permit 25.184.114.221/32
   seq 1270 permit 25.184.192.78/32
   seq 1280 permit 25.184.193.78/32
   seq 1290 permit 25.184.194.78/32
   seq 1300 permit 25.184.195.78/32
   seq 1310 permit 25.184.240.14/32
   seq 1320 permit 25.184.240.206/32
   seq 1330 permit 25.184.242.14/32
   seq 1340 permit 25.184.242.206/32
   seq 1350 permit 25.186.16.5/32
   seq 1360 permit 25.186.16.69/32
   seq 1370 permit 25.186.24.5/32
   seq 1380 permit 25.186.24.69/32
   seq 1390 permit 25.186.57.150/31
   seq 1400 permit 25.186.57.152/31
   seq 1410 permit 25.186.62.144/30
   seq 1420 permit 25.186.66.16/30
   seq 1430 permit 25.186.68.149/32
   seq 1440 permit 25.186.68.150/31
   seq 1450 permit 25.186.68.152/32
   seq 1460 permit 25.254.64.17/32
   seq 1470 permit 25.254.64.145/32
   seq 1480 permit 25.254.66.20/32
   seq 1490 permit 25.254.66.148/32
   seq 1500 permit 25.254.68.31/32
   seq 1510 permit 25.254.68.37/32
   seq 1520 permit 25.254.68.157/32
   seq 1530 permit 25.254.68.160/32
   seq 1540 permit 25.254.76.141/32
   seq 1550 permit 25.254.77.13/32
   seq 1560 permit 25.254.133.7/32
   seq 1570 permit 25.254.133.71/32
!
ip prefix-list IPv4ONEDDOS-CNS
   seq 10 permit 13.68.31.37/32
   seq 20 permit 40.118.251.245/32
!
ip prefix-list IPv4ONEDDOS-HYPERNET
   seq 10 permit 10.1.67.224/28
   seq 20 permit 10.1.140.128/28
   seq 30 permit 10.1.152.16/28
   seq 40 permit 10.2.185.64/28
   seq 50 permit 10.5.36.0/28
   seq 60 permit 10.14.19.128/28
   seq 70 permit 10.17.84.0/28
   seq 80 permit 10.17.104.80/28
   seq 90 permit 10.24.140.0/27
   seq 100 permit 10.25.169.16/28
   seq 110 permit 10.25.233.32/28
   seq 120 permit 10.26.72.64/28
   seq 130 permit 10.26.207.0/28
   seq 140 permit 10.26.238.0/28
   seq 150 permit 10.26.240.192/28
   seq 160 permit 10.40.132.240/28
   seq 170 permit 10.40.190.128/28
   seq 180 permit 10.40.236.176/28
   seq 190 permit 10.63.13.32/28
   seq 200 permit 10.201.136.128/28
   seq 210 permit 10.207.146.0/28
   seq 220 permit 10.211.236.128/28
   seq 230 permit 100.127.25.48/28
   seq 240 permit 100.127.29.48/28
   seq 250 permit 100.127.33.48/28
   seq 260 permit 100.127.37.48/28
   seq 270 permit 100.127.52.224/28
   seq 280 permit 100.127.55.160/28
   seq 290 permit 100.127.56.96/28
   seq 300 permit 100.127.58.16/28
   seq 310 permit 100.127.60.64/28
!
ip prefix-list IPv4ONEDDOS-HYPERNET-Public
   seq 10 permit 13.66.20.221/32
   seq 20 permit 13.71.184.224/32
   seq 30 permit 13.73.3.24/32
   seq 40 permit 13.75.93.117/32
   seq 50 permit 13.76.44.85/32
   seq 60 permit 40.74.134.37/32
   seq 70 permit 40.86.220.202/32
   seq 80 permit 40.87.156.3/32
   seq 90 permit 40.89.135.114/32
   seq 100 permit 40.112.184.146/32
   seq 110 permit 40.114.51.208/32
   seq 120 permit 40.122.70.219/32
   seq 130 permit 40.126.235.232/32
   seq 140 permit 40.127.71.63/32
   seq 150 permit 51.140.25.83/32
   seq 160 permit 51.141.116.39/32
   seq 170 permit 52.161.13.91/32
   seq 180 permit 52.161.17.84/32
   seq 190 permit 52.167.6.141/32
   seq 200 permit 52.180.176.248/32
   seq 210 permit 52.183.10.153/32
   seq 220 permit 52.231.67.113/32
   seq 230 permit 52.231.152.167/32
   seq 240 permit 104.40.157.173/32
   seq 250 permit 104.41.45.88/32
   seq 260 permit 104.211.96.167/32
   seq 270 permit 104.211.164.180/32
   seq 280 permit 104.211.228.226/32
   seq 290 permit 157.55.164.101/32
   seq 300 permit 191.234.163.235/32
   seq 310 permit 191.237.45.219/32
!
ip prefix-list IPv4ONEDDOS-SFLOW-SFABRIC
   seq 10 permit 13.71.122.103/32
   seq 20 permit 13.74.153.36/32
   seq 30 permit 13.82.147.240/32
   seq 40 permit 13.84.189.46/32
   seq 50 permit 23.96.55.92/32
   seq 60 permit 23.98.146.36/32
   seq 70 permit 40.86.188.39/32
   seq 80 permit 40.117.239.185/32
   seq 90 permit 40.123.41.162/32
   seq 100 permit 40.126.242.195/32
   seq 110 permit 51.140.125.246/32
   seq 120 permit 51.141.54.244/32
   seq 130 permit 52.161.20.215/32
   seq 140 permit 52.162.167.138/32
   seq 150 permit 52.163.240.40/32
   seq 160 permit 52.166.115.41/32
   seq 170 permit 52.173.240.151/32
   seq 180 permit 52.180.179.193/32
   seq 190 permit 52.229.166.182/32
   seq 200 permit 52.231.37.38/32
   seq 210 permit 52.231.206.203/32
   seq 220 permit 52.233.44.98/32
   seq 230 permit 52.235.42.73/32
   seq 240 permit 52.246.189.70/32
   seq 250 permit 52.250.120.103/32
   seq 260 permit 104.41.29.28/32
   seq 270 permit 104.211.190.172/32
   seq 280 permit 104.215.63.59/32
   seq 290 permit 137.135.46.202/32
!
ip prefix-list ITEpremium
   seq 10 permit 13.107.64.0/23
   seq 20 permit 52.112.0.0/14
!
ip prefix-list LO0-IN-LDP
   seq 10 permit 10.20.76.0/22 ge 22
   seq 20 permit 10.20.84.0/22 ge 22
!
ip prefix-list LOOPBACK0-V4
   seq 10 permit 10.3.159.175/32
!
ip prefix-list LOOPBACK99-V4
   seq 10 permit 10.10.10.10/32
!
ip prefix-list MICROSOFT-PRIVATE-ROUTES
   seq 10 permit 13.96.0.0/13
   seq 20 permit 21.0.0.0/8
   seq 30 permit 22.0.0.0/8
   seq 40 permit 23.103.0.0/18
   seq 50 permit 25.0.0.0/9
   seq 60 permit 25.128.0.0/10
   seq 70 permit 25.192.0.0/11
   seq 80 permit 25.224.0.0/12
   seq 90 permit 25.240.8.0/21
   seq 100 permit 25.240.16.0/20
   seq 110 permit 25.240.32.0/19
   seq 120 permit 25.240.64.0/18
   seq 130 permit 25.240.128.0/17
   seq 140 permit 25.241.0.0/16
   seq 150 permit 25.242.0.0/15
   seq 160 permit 25.244.0.0/14
   seq 170 permit 25.248.0.0/13
   seq 180 permit 40.66.128.0/17
   seq 190 permit 40.108.32.0/19
   seq 200 permit 40.108.64.0/18
   seq 210 permit 40.109.0.0/16
   seq 220 permit 52.132.0.0/14
   seq 230 permit 104.146.32.0/19
   seq 240 permit 104.146.64.0/18
   seq 250 permit 104.147.0.0/16
   seq 260 permit 129.75.0.0/16
   seq 270 permit 134.177.0.0/16
   seq 280 permit 141.251.0.0/16
   seq 290 permit 191.234.129.0/24
   seq 300 permit 191.234.133.0/24
   seq 310 permit 191.235.1.0/24
   seq 320 permit 191.235.2.0/24
   seq 330 permit 191.235.5.0/24
   seq 340 permit 191.235.6.0/24
   seq 350 permit 191.235.9.0/24
   seq 360 permit 191.235.10.0/24
   seq 370 permit 191.235.13.0/24
   seq 380 permit 191.235.14.0/24
   seq 390 permit 192.32.0.0/16
   seq 400 permit 192.100.102.0/24
   seq 410 permit 192.100.103.0/24
   seq 500 permit 61.100.0.0/16
   seq 510 permit 30.130.0.0/16
   seq 520 permit 30.130.0.0/16 le 32
!
ip prefix-list MICROSOFT-PRIVATE-ROUTES-ORLONGER
   seq 10 permit 13.96.0.0/13 ge 13
   seq 20 permit 21.0.0.0/8 ge 8
   seq 30 permit 22.0.0.0/8 ge 8
   seq 40 permit 23.103.0.0/18 ge 18
   seq 50 permit 25.0.0.0/9 ge 9
   seq 60 permit 25.128.0.0/10 ge 10
   seq 70 permit 25.192.0.0/11 ge 11
   seq 80 permit 25.224.0.0/12 ge 12
   seq 90 permit 25.240.8.0/21 ge 21
   seq 100 permit 25.240.16.0/20 ge 20
   seq 110 permit 25.240.32.0/19 ge 19
   seq 120 permit 25.240.64.0/18 ge 18
   seq 130 permit 25.240.128.0/17 ge 17
   seq 140 permit 25.241.0.0/16 ge 16
   seq 150 permit 25.242.0.0/15 ge 15
   seq 160 permit 25.244.0.0/14 ge 14
   seq 170 permit 25.248.0.0/13 ge 13
   seq 180 permit 40.66.128.0/17 ge 17
   seq 190 permit 40.108.32.0/19 ge 19
   seq 200 permit 40.108.64.0/18 ge 18
   seq 210 permit 40.109.0.0/16 ge 16
   seq 220 permit 52.132.0.0/14 ge 14
   seq 230 permit 104.146.32.0/19 ge 19
   seq 240 permit 104.146.64.0/18 ge 18
   seq 250 permit 104.147.0.0/16 ge 16
   seq 260 permit 129.75.0.0/16 ge 16
   seq 270 permit 134.177.0.0/16 ge 16
   seq 280 permit 141.251.0.0/16 ge 16
   seq 290 permit 191.234.129.0/24 ge 24
   seq 300 permit 191.234.133.0/24 ge 24
   seq 310 permit 191.235.1.0/24 ge 24
   seq 320 permit 191.235.2.0/24 ge 24
   seq 330 permit 191.235.5.0/24 ge 24
   seq 340 permit 191.235.6.0/24 ge 24
   seq 350 permit 191.235.9.0/24 ge 24
   seq 360 permit 191.235.10.0/24 ge 24
   seq 370 permit 191.235.13.0/24 ge 24
   seq 380 permit 191.235.14.0/24 ge 24
!
ip prefix-list MSFT-WHITE-LIST-V4
   seq 10 permit 40.72.0.0/15
   seq 20 permit 40.125.128.0/17
   seq 30 permit 40.126.64.0/18
   seq 40 permit 65.53.0.0/16
   seq 50 permit 94.245.64.0/18
   seq 60 permit 103.25.156.0/22
   seq 70 permit 103.36.96.0/22
   seq 80 permit 103.255.140.0/22
   seq 90 permit 111.221.28.0/24
   seq 100 permit 131.107.0.0/16
   seq 110 permit 157.54.0.0/16
   seq 120 permit 157.57.0.0/16
   seq 130 permit 157.59.0.0/16
   seq 140 permit 157.60.0.0/16
   seq 150 permit 167.220.0.0/16
   seq 160 permit 191.234.96.0/19
   seq 170 permit 194.69.96.0/19
   seq 180 permit 198.105.232.0/22
   seq 190 permit 199.242.48.0/22
   seq 200 permit 202.89.232.0/21
   seq 210 permit 204.182.144.0/24
   seq 220 permit 204.255.244.0/23
!
ip prefix-list OOB-SPECIFICS-V4
   seq 10 permit 10.20.160.0/19
!
ip prefix-list PERMIT-DNS
   seq 10 permit 13.106.32.32/27
   seq 20 permit 23.103.131.0/24
   seq 30 permit 51.4.71.32/27
   seq 40 permit 51.5.71.0/27
   seq 50 permit 64.4.5.0/26
   seq 60 permit 64.4.15.80/28
   seq 70 permit 65.54.70.0/26
   seq 80 permit 65.54.121.0/26
   seq 90 permit 65.54.238.64/27
   seq 100 permit 65.55.5.128/27
   seq 110 permit 65.55.33.0/27
   seq 120 permit 65.55.37.32/28
   seq 130 permit 65.55.81.0/28
   seq 140 permit 65.55.117.0/26
   seq 150 permit 65.55.178.0/26
   seq 160 permit 65.55.238.0/26
   seq 170 permit 70.37.154.0/27
   seq 180 permit 94.245.64.0/28
   seq 190 permit 94.245.77.0/28
   seq 200 permit 94.245.112.32/28
   seq 210 permit 104.44.106.32/27
   seq 220 permit 104.44.106.64/27
   seq 230 permit 104.44.106.128/27
   seq 240 permit 104.44.193.224/27
   seq 250 permit 104.44.221.32/27
   seq 260 permit 104.44.221.96/27
   seq 270 permit 104.44.222.160/27
   seq 280 permit 104.44.223.0/26
   seq 290 permit 111.221.121.0/27
   seq 300 permit 134.170.65.0/28
   seq 310 permit 134.170.216.32/27
   seq 320 permit 134.170.217.128/27
   seq 330 permit 157.56.74.160/27
   seq 340 permit 157.56.96.0/28
   seq 350 permit 157.56.156.0/27
   seq 360 permit 157.56.157.32/27
   seq 370 permit 157.56.158.0/27
   seq 380 permit 157.56.159.0/27
   seq 390 permit 157.56.204.32/27
   seq 400 permit 157.56.205.0/27
   seq 410 permit 193.221.113.53/32
   seq 420 permit 204.79.195.0/26
   seq 430 permit 204.79.252.0/27
   seq 440 permit 207.46.0.32/27
   seq 450 permit 207.46.48.192/27
   seq 460 permit 207.46.66.64/27
   seq 470 permit 207.46.116.0/26
   seq 480 permit 207.46.200.32/28
   seq 490 permit 207.68.168.16/28
   seq 500 permit 208.68.136.32/27
   seq 510 permit 208.76.45.53/32
   seq 520 permit 208.76.46.0/26
   seq 530 permit 208.84.0.53/32
   seq 540 permit 208.84.2.53/32
   seq 550 permit 213.199.177.64/27
!
ip prefix-list PRIVATE-IP-SPACE
   seq 10 permit 10.0.0.0/8
   seq 20 permit 13.96.0.0/13
   seq 30 permit 20.35.252.0/22
   seq 40 permit 20.128.0.0/16
   seq 50 permit 20.130.0.0/16
   seq 60 permit 20.144.0.0/14
   seq 70 permit 20.176.0.0/14
   seq 80 permit 20.180.0.0/14
   seq 90 permit 21.0.0.0/8
   seq 100 permit 22.0.0.0/8
   seq 110 permit 23.103.0.0/18
   seq 120 permit 25.0.0.0/12
   seq 130 permit 25.16.0.0/13
   seq 140 permit 25.24.0.0/16
   seq 150 permit 25.28.0.0/14
   seq 160 permit 25.32.0.0/11
   seq 170 permit 25.64.0.0/10
   seq 180 permit 25.128.0.0/14
   seq 190 permit 25.142.0.0/15
   seq 200 permit 25.144.0.0/12
   seq 210 permit 25.160.0.0/11
   seq 220 permit 25.192.0.0/11
   seq 230 permit 25.224.0.0/12
   seq 240 permit 25.244.0.0/14
   seq 250 permit 25.248.0.0/13
   seq 260 permit 40.66.128.0/17
   seq 270 permit 40.108.32.0/19
   seq 280 permit 40.108.64.0/18
   seq 290 permit 40.109.0.0/16
   seq 300 permit 52.132.0.0/14
   seq 310 permit 52.145.0.0/16
   seq 320 permit 100.64.0.0/10
   seq 330 permit 104.146.32.0/19
   seq 340 permit 104.146.64.0/18
   seq 350 permit 104.147.0.0/16
   seq 360 permit 129.75.0.0/16
   seq 370 permit 134.177.0.0/16
   seq 380 permit 138.196.0.0/16
   seq 390 permit 141.251.0.0/16
   seq 400 permit 146.147.0.0/16
   seq 410 permit 172.16.0.0/12
   seq 420 permit 191.232.4.0/26
   seq 430 permit 191.232.6.0/23
   seq 440 permit 191.235.9.0/24
   seq 450 permit 191.235.10.0/24
   seq 460 permit 191.235.13.0/24
   seq 470 permit 191.235.14.0/24
   seq 480 permit 192.32.0.0/16
   seq 490 permit 192.100.102.0/24
   seq 500 permit 192.100.103.0/24
   seq 510 permit 192.168.0.0/16
!
ip prefix-list PRIVATE-ROUTES
   seq 10 permit 10.0.0.0/8
   seq 20 permit 100.64.0.0/10
   seq 30 permit 172.16.0.0/12
   seq 40 permit 192.168.0.0/16
!
ip prefix-list PRIVATE-ROUTES-V4
   seq 10 permit 10.0.0.0/8 ge 8
   seq 20 permit 100.64.0.0/10 ge 10
   seq 30 permit 172.16.0.0/12 ge 12
   seq 40 permit 192.168.0.0/16 ge 16
!
ip prefix-list PRIVATE-V4
   seq 10 permit 10.0.0.0/8
   seq 20 permit 13.96.0.0/13
   seq 30 permit 20.35.252.0/22
   seq 40 permit 20.128.0.0/16
   seq 50 permit 20.130.0.0/16
   seq 60 permit 20.144.0.0/14
   seq 70 permit 20.176.0.0/14
   seq 80 permit 20.180.0.0/14
   seq 90 permit 21.0.0.0/8
   seq 100 permit 22.0.0.0/8
   seq 110 permit 23.103.0.0/18
   seq 120 permit 25.0.0.0/12
   seq 130 permit 25.16.0.0/13
   seq 140 permit 25.24.0.0/16
   seq 150 permit 25.28.0.0/14
   seq 160 permit 25.32.0.0/11
   seq 170 permit 25.64.0.0/10
   seq 180 permit 25.128.0.0/14
   seq 190 permit 25.142.0.0/15
   seq 200 permit 25.144.0.0/12
   seq 210 permit 25.160.0.0/11
   seq 220 permit 25.192.0.0/11
   seq 230 permit 25.224.0.0/12
   seq 240 permit 25.244.0.0/14
   seq 250 permit 25.248.0.0/13
   seq 260 permit 40.66.128.0/17
   seq 270 permit 40.108.32.0/19
   seq 280 permit 40.108.64.0/18
   seq 290 permit 40.109.0.0/16
   seq 300 permit 52.132.0.0/14
   seq 310 permit 52.145.0.0/16
   seq 320 permit 100.64.0.0/10
   seq 330 permit 104.146.32.0/19
   seq 340 permit 104.146.64.0/18
   seq 350 permit 104.147.0.0/16
   seq 360 permit 129.75.0.0/16
   seq 370 permit 134.177.0.0/16
   seq 380 permit 138.196.0.0/16
   seq 390 permit 141.251.0.0/16
   seq 400 permit 146.147.0.0/16
   seq 410 permit 172.16.0.0/12
   seq 420 permit 191.232.4.0/26
   seq 430 permit 191.232.6.0/23
   seq 440 permit 191.235.9.0/24
   seq 450 permit 191.235.10.0/24
   seq 460 permit 191.235.13.0/24
   seq 470 permit 191.235.14.0/24
   seq 480 permit 192.32.0.0/16
   seq 490 permit 192.100.102.0/24
   seq 500 permit 192.100.103.0/24
   seq 510 permit 192.168.0.0/16
!
ip prefix-list RFC1918
   seq 10 permit 10.0.0.0/8
   seq 20 permit 100.64.0.0/10
   seq 30 permit 172.16.0.0/12
   seq 40 permit 192.168.0.0/16
!
ip prefix-list RFC1918-v4
   seq 10 permit 10.0.0.0/8 ge 8
   seq 20 permit 100.64.0.0/10 ge 10
   seq 30 permit 172.16.0.0/12 ge 12
   seq 40 permit 192.168.0.0/16 ge 16
!
ip prefix-list STD-PARTNER-IN
   seq 10 permit 0.0.0.0/0
!
ip prefix-list TER_LOOPBACK-IPV4
   seq 1 permit 10.78.19.0/25 ge 25
   seq 2 permit 10.78.20.0/23 ge 23
!
ip prefix-list TRANSITEDGE_LOOPBACK-V4
   seq 1 permit 10.78.19.0/25 ge 25
   seq 2 permit 10.78.20.0/23 ge 23
!
ip prefix-list TRANSITEDGE_PREFIXES-V4
   seq 10 permit 10.20.0.0/16 ge 16
   seq 20 permit 10.41.192.0/18 ge 18
   seq 30 permit 10.52.180.177/32
   seq 40 permit 10.52.180.179/32
   seq 50 permit 10.64.0.0/18 ge 18
   seq 60 permit 20.39.32.0/19 ge 19
   seq 70 permit 20.47.0.0/17 ge 23
   seq 80 permit 20.157.0.0/16 ge 16
   seq 90 permit 25.66.128.0/17 ge 17
   seq 100 permit 52.122.0.0/16 ge 16
!
ip prefix-list V4_ANY
   seq 10 permit 0.0.0.0/0 le 32
!
ip prefix-list V4_PREFIXES_TRANSITEDGE
   seq 10 permit 10.20.0.0/16 ge 16
   seq 20 permit 10.41.192.0/18 ge 18
   seq 30 permit 10.52.180.177/32
   seq 40 permit 10.52.180.179/32
   seq 50 permit 10.64.0.0/18 ge 18
   seq 60 permit 20.39.32.0/19 ge 19
   seq 70 permit 20.47.0.0/17 ge 23
   seq 80 permit 20.157.0.0/16 ge 16
   seq 90 permit 25.66.128.0/17 ge 17
   seq 100 permit 52.122.0.0/16 ge 16
!
ip prefix-list WPS-EDGE
   seq 10 permit 157.55.112.64/27
!
ip prefix-list WPS-PTNR
   seq 10 permit 157.56.144.64/26
!
ip prefix-list adcenter-vip
   seq 10 permit 10.2.161.23/32
   seq 20 permit 10.28.37.166/32
   seq 30 permit 64.4.22.45/32
   seq 40 permit 65.52.107.201/32
   seq 50 permit 65.52.107.205/32
   seq 60 permit 65.54.165.16/32
   seq 70 permit 65.54.165.25/32
   seq 80 permit 65.54.165.43/32
   seq 90 permit 65.54.165.73/32
   seq 100 permit 65.54.165.77/32
   seq 110 permit 65.54.165.78/32
   seq 120 permit 65.54.165.96/32
   seq 130 permit 65.54.165.121/32
   seq 140 permit 65.54.165.124/32
   seq 150 permit 65.54.248.170/32
   seq 160 permit 65.54.248.181/32
   seq 170 permit 65.54.248.182/32
   seq 180 permit 65.54.249.180/32
   seq 190 permit 65.54.249.181/32
   seq 200 permit 65.55.129.212/32
   seq 210 permit 65.55.130.11/32
   seq 220 permit 65.55.130.14/32
   seq 230 permit 65.55.130.20/32
   seq 240 permit 65.55.130.32/32
   seq 250 permit 65.55.130.34/32
   seq 260 permit 65.55.130.36/32
   seq 270 permit 65.55.157.87/32
   seq 280 permit 111.221.21.42/32
   seq 290 permit 157.55.40.29/32
   seq 300 permit 207.46.202.50/32
   seq 310 permit 207.46.202.77/32
   seq 320 permit 207.46.202.78/32
   seq 330 permit 207.46.202.97/32
   seq 340 permit 207.46.202.100/32
   seq 350 permit 207.46.202.109/32
   seq 360 permit 207.46.202.114/32
   seq 370 permit 207.46.202.118/32
   seq 380 permit 207.46.202.125/32
   seq 390 permit 207.46.202.126/32
!
ip prefix-list bing-edge-anycast
   seq 2 permit 131.253.21.2/32
   seq 10 permit 131.253.21.1/32
   seq 30 permit 204.79.197.1/32
   seq 40 permit 204.79.197.2/32
!
ip prefix-list bing-fd-vip
   seq 10 permit 10.6.215.19/32
   seq 20 permit 10.6.215.21/32
   seq 30 permit 10.6.215.27/32
   seq 40 permit 10.6.215.54/32
   seq 50 permit 10.6.215.57/32
   seq 60 permit 10.8.66.8/32
   seq 70 permit 10.8.67.6/32
   seq 80 permit 10.8.67.44/32
   seq 90 permit 10.8.74.6/32
   seq 100 permit 10.8.74.80/32
   seq 110 permit 10.8.74.81/32
   seq 120 permit 10.8.75.13/32
   seq 130 permit 10.8.75.74/32
   seq 140 permit 10.8.75.84/32
   seq 150 permit 10.8.75.85/32
   seq 160 permit 10.12.56.178/32
   seq 170 permit 10.12.56.224/32
   seq 180 permit 10.12.56.225/32
   seq 190 permit 10.12.103.42/32
   seq 200 permit 10.12.103.47/32
   seq 210 permit 10.12.103.56/32
   seq 220 permit 10.12.103.96/32
   seq 230 permit 10.12.103.100/32
   seq 240 permit 10.12.103.110/32
   seq 250 permit 10.12.103.162/32
   seq 260 permit 10.12.103.198/32
   seq 270 permit 10.12.103.205/32
   seq 280 permit 10.12.103.234/32
   seq 290 permit 10.12.103.235/32
   seq 300 permit 10.12.103.236/32
   seq 310 permit 10.12.103.238/32
   seq 320 permit 10.24.205.14/32
   seq 330 permit 10.24.205.15/32
   seq 340 permit 10.24.205.27/32
   seq 350 permit 10.24.205.64/32
   seq 360 permit 10.24.205.65/32
   seq 370 permit 10.29.89.14/32
   seq 380 permit 10.29.89.41/32
   seq 390 permit 10.29.89.55/32
   seq 400 permit 10.29.89.57/32
   seq 410 permit 10.29.171.124/32
   seq 420 permit 10.46.252.11/32
   seq 430 permit 10.46.252.12/32
   seq 440 permit 10.46.253.5/32
   seq 450 permit 10.48.160.43/32
   seq 460 permit 10.54.142.224/32
   seq 470 permit 10.55.209.139/32
   seq 480 permit 10.55.209.140/32
   seq 490 permit 10.55.209.141/32
   seq 500 permit 10.55.209.142/32
   seq 510 permit 10.55.209.143/32
   seq 520 permit 10.55.209.144/32
   seq 530 permit 10.55.209.145/32
   seq 540 permit 10.55.209.146/32
   seq 550 permit 10.55.209.147/32
   seq 560 permit 10.55.209.148/32
   seq 570 permit 10.55.209.149/32
   seq 580 permit 10.55.209.150/32
   seq 590 permit 10.55.209.151/32
   seq 600 permit 10.55.209.152/32
   seq 610 permit 10.55.209.153/32
   seq 620 permit 10.55.209.154/32
   seq 630 permit 10.55.209.155/32
   seq 640 permit 10.55.209.158/32
   seq 650 permit 10.173.152.52/32
   seq 660 permit 10.173.152.53/32
   seq 670 permit 10.173.152.121/32
   seq 680 permit 10.173.152.123/32
   seq 690 permit 10.173.152.124/32
   seq 700 permit 10.173.152.125/32
   seq 710 permit 10.173.152.127/32
   seq 720 permit 10.173.152.141/32
   seq 730 permit 10.173.152.162/32
   seq 740 permit 10.173.152.163/32
   seq 750 permit 10.173.152.164/32
   seq 760 permit 10.173.152.165/32
   seq 770 permit 10.173.154.90/32
   seq 780 permit 10.173.154.101/32
   seq 790 permit 10.173.155.5/32
   seq 800 permit 10.173.155.15/32
   seq 810 permit 10.173.155.16/32
   seq 820 permit 10.173.155.26/32
   seq 830 permit 10.173.155.41/32
   seq 840 permit 10.173.156.116/32
   seq 860 permit 10.173.156.166/32
   seq 870 permit 10.173.156.169/32
   seq 880 permit 10.173.157.35/32
   seq 890 permit 10.173.157.45/32
   seq 900 permit 10.173.157.46/32
   seq 910 permit 10.173.157.116/32
   seq 920 permit 10.173.157.197/32
   seq 930 permit 10.173.157.198/32
   seq 940 permit 10.173.157.207/32
   seq 950 permit 10.173.157.223/32
   seq 960 permit 10.173.157.242/32
   seq 970 permit 10.173.157.243/32
   seq 980 permit 10.173.157.249/32
   seq 990 permit 10.173.157.254/32
   seq 1000 permit 10.210.32.37/32
   seq 1010 permit 65.55.4.14/32
   seq 1020 permit 65.55.4.20/32
   seq 1030 permit 65.55.60.167/32
   seq 1040 permit 65.55.60.168/32
   seq 1050 permit 65.55.60.169/32
   seq 1060 permit 65.55.60.170/32
   seq 1070 permit 65.55.60.190/32
   seq 1080 permit 65.55.105.11/32
   seq 1090 permit 65.55.105.20/32
   seq 1100 permit 65.55.105.41/32
   seq 1110 permit 65.55.105.54/32
   seq 1120 permit 65.55.105.64/32
   seq 1130 permit 65.55.105.104/32
   seq 1140 permit 65.55.105.123/32
   seq 1150 permit 65.55.105.224/32
   seq 1160 permit 65.55.105.226/32
   seq 1170 permit 65.55.105.227/32
   seq 1180 permit 65.55.105.229/32
   seq 1190 permit 65.55.105.247/32
   seq 1200 permit 65.55.105.254/32
   seq 1210 permit 65.55.106.18/32
   seq 1220 permit 65.55.106.58/32
   seq 1230 permit 65.55.106.106/32
   seq 1240 permit 65.55.106.139/32
   seq 1250 permit 65.55.106.179/32
   seq 1260 permit 65.55.106.218/32
   seq 1270 permit 65.55.106.219/32
   seq 1280 permit 65.55.106.220/32
   seq 1290 permit 65.55.107.5/32
   seq 1300 permit 65.55.107.95/32
   seq 1310 permit 65.55.107.102/32
   seq 1320 permit 65.55.107.111/32
   seq 1330 permit 65.55.250.6/32
   seq 1340 permit 65.55.250.7/32
   seq 1350 permit 65.55.250.8/32
   seq 1360 permit 65.55.250.10/32
   seq 1370 permit 65.55.250.15/32
   seq 1380 permit 111.221.29.3/32
   seq 1390 permit 111.221.30.4/32
   seq 1400 permit 111.221.30.8/32
   seq 1410 permit 111.221.30.11/32
   seq 1420 permit 111.221.30.12/32
   seq 1430 permit 111.221.30.13/32
   seq 1440 permit 111.221.30.15/32
   seq 1450 permit 111.221.30.18/32
   seq 1460 permit 111.221.30.29/32
   seq 1470 permit 111.221.30.34/32
   seq 1480 permit 111.221.30.40/32
   seq 1490 permit 111.221.30.41/32
   seq 1500 permit 111.221.30.42/32
   seq 1510 permit 111.221.30.43/32
   seq 1520 permit 111.221.30.44/32
   seq 1530 permit 111.221.30.45/32
   seq 1540 permit 111.221.30.50/32
   seq 1550 permit 131.253.12.51/32
   seq 1560 permit 131.253.12.52/32
   seq 1570 permit 131.253.12.55/32
   seq 1580 permit 131.253.12.168/32
   seq 1590 permit 131.253.12.177/32
   seq 1600 permit 131.253.12.183/32
   seq 1610 permit 131.253.12.186/32
   seq 1620 permit 131.253.12.246/32
   seq 1630 permit 131.253.13.1/32
   seq 1640 permit 131.253.13.2/32
   seq 1650 permit 131.253.13.4/32
   seq 1660 permit 131.253.13.5/32
   seq 1670 permit 131.253.13.6/32
   seq 1680 permit 131.253.13.8/32
   seq 1690 permit 131.253.13.19/32
   seq 1700 permit 131.253.13.21/32
   seq 1710 permit 131.253.13.48/32
   seq 1720 permit 131.253.13.52/32
   seq 1730 permit 131.253.13.117/32
   seq 1740 permit 131.253.13.134/32
   seq 1750 permit 131.253.13.140/32
   seq 1760 permit 131.253.13.162/32
   seq 1770 permit 131.253.13.163/32
   seq 1780 permit 131.253.13.165/32
   seq 1790 permit 131.253.13.200/32
   seq 1800 permit 131.253.13.208/32
   seq 1810 permit 131.253.13.226/32
   seq 1820 permit 131.253.13.229/32
   seq 1830 permit 131.253.13.238/32
   seq 1840 permit 131.253.13.239/32
   seq 1850 permit 131.253.13.244/32
   seq 1860 permit 131.253.14.138/32
   seq 1870 permit 131.253.14.210/32
   seq 1880 permit 131.253.15.16/32
   seq 1890 permit 131.253.15.35/32
   seq 1900 permit 131.253.21.10/32
   seq 1910 permit 131.253.21.20/32
   seq 1920 permit 131.253.32.4/32
   seq 1930 permit 131.253.32.12/32
   seq 1940 permit 131.253.32.20/32
   seq 1950 permit 131.253.32.28/32
   seq 1960 permit 131.253.32.36/32
   seq 1970 permit 131.253.32.44/32
   seq 1980 permit 131.253.32.52/32
   seq 1990 permit 131.253.32.60/32
   seq 2000 permit 131.253.32.68/32
   seq 2010 permit 131.253.32.76/32
   seq 2020 permit 131.253.33.202/32
   seq 2030 permit 131.253.34.1/32
   seq 2040 permit 131.253.40.1/32
   seq 2050 permit 131.253.40.37/32
   seq 2060 permit 134.170.220.30/32
   seq 2070 permit 134.170.220.43/32
   seq 2080 permit 134.170.220.157/32
   seq 2090 permit 134.170.221.14/32
   seq 2100 permit 134.170.221.17/32
   seq 2110 permit 134.170.221.18/32
   seq 2120 permit 134.170.221.19/32
   seq 2130 permit 134.170.221.29/32
   seq 2140 permit 134.170.221.59/32
   seq 2150 permit 134.170.221.60/32
   seq 2160 permit 134.170.221.61/32
   seq 2170 permit 134.170.221.62/32
   seq 2180 permit 134.170.221.63/32
   seq 2190 permit 134.170.221.67/32
   seq 2200 permit 134.170.221.113/32
   seq 2210 permit 134.170.221.149/32
   seq 2220 permit 134.170.221.150/32
   seq 2230 permit 134.170.222.3/32
   seq 2240 permit 134.170.222.23/32
   seq 2250 permit 134.170.222.55/32
   seq 2260 permit 134.170.222.56/32
   seq 2270 permit 134.170.222.91/32
   seq 2280 permit 134.170.223.46/32
   seq 2290 permit 134.170.223.48/32
   seq 2300 permit 134.170.223.73/32
   seq 2310 permit 134.170.223.106/32
   seq 2320 permit 134.170.223.141/32
   seq 2330 permit 157.55.37.50/32
   seq 2340 permit 157.55.55.104/32
   seq 2350 permit 157.55.55.108/32
   seq 2360 permit 157.55.55.109/32
   seq 2370 permit 157.55.55.115/32
   seq 2380 permit 157.55.55.126/32
   seq 2390 permit 157.55.55.127/32
   seq 2400 permit 157.55.55.132/32
   seq 2410 permit 157.55.55.141/32
   seq 2420 permit 157.55.55.145/32
   seq 2430 permit 157.55.55.160/32
   seq 2440 permit 191.234.6.100/32
   seq 2450 permit 191.234.6.121/32
   seq 2460 permit 191.234.6.200/32
   seq 2470 permit 202.89.233.70/32
   seq 2480 permit 204.79.197.10/32
   seq 2490 permit 204.79.197.20/32
   seq 2500 permit 204.79.197.200/32
   seq 2510 permit 204.79.197.201/32
   seq 2520 permit 207.46.194.1/32
   seq 2530 permit 207.68.174.4/32
   seq 2540 permit 207.68.174.9/32
   seq 2550 permit 207.68.174.11/32
   seq 2560 permit 207.68.174.39/32
   seq 2570 permit 207.68.174.49/32
   seq 2580 permit 207.68.174.81/32
   seq 2590 permit 207.68.174.84/32
   seq 2600 permit 207.68.174.91/32
   seq 2610 permit 207.68.174.93/32
   seq 2620 permit 207.68.174.97/32
   seq 2630 permit 207.68.174.99/32
   seq 2640 permit 207.68.174.102/32
   seq 2650 permit 207.68.174.130/32
   seq 2660 permit 207.68.174.140/32
   seq 2670 permit 207.68.174.141/32
   seq 2680 permit 207.68.174.148/32
   seq 2690 permit 207.68.174.163/32
   seq 2700 permit 207.68.174.169/32
   seq 2710 permit 207.68.174.170/32
   seq 2720 permit 207.68.174.171/32
   seq 2730 permit 207.68.174.174/32
   seq 2740 permit 207.68.174.179/32
   seq 2750 permit 207.68.174.180/32
   seq 2760 permit 207.68.174.227/32
   seq 2770 permit 213.199.169.7/32
!
ip prefix-list bmp-station
   seq 10 permit 10.52.180.177/32
!
ip prefix-list deny_connected_bgp
!
ip prefix-list deny_static_bgp
!
ip prefix-list from_ixia
!
ip prefix-list overlapp-blocks
   seq 10 permit 10.244.0.0/25
   seq 20 permit 10.244.0.128/26
   seq 30 permit 65.55.80.8/30
   seq 40 permit 131.253.61.64/29
   seq 50 permit 131.253.61.80/29
   seq 60 permit 131.253.61.96/29
!
ip prefix-list permit_connected_bgp_exceptions
   seq 10 permit 10.12.97.128/26
   seq 20 permit 10.20.81.64/26
   seq 30 permit 66.119.150.0/26
   seq 40 permit 66.119.150.64/26
   seq 50 permit 207.46.33.32/28
!
ip prefix-list permit_static_bgp
   seq 10 permit 100.127.0.0/16
!
ip prefix-list permit_static_bgp_anchor
!
ip prefix-list prefix-snmpx
   seq 10 permit 10.20.6.32/27
   seq 20 permit 10.20.6.64/27
   seq 30 permit 10.20.6.192/27
   seq 40 permit 10.20.17.160/27
   seq 50 permit 10.20.17.224/27
!
ip prefix-list prefix-windows-update
   seq 10 permit 13.107.4.50/32
   seq 20 permit 13.107.4.54/32
   seq 30 permit 13.107.12.54/32
   seq 40 permit 13.107.246.11/32
   seq 50 permit 13.107.253.10/32
   seq 60 permit 13.107.253.254/32
   seq 70 permit 40.77.226.72/32
   seq 80 permit 40.77.226.181/32
   seq 90 permit 40.77.228.30/32
   seq 100 permit 40.77.232.59/32
   seq 110 permit 131.253.33.50/32
!
ip prefix-list provisioning-list
   seq 10 permit 10.8.184.0/25
!
ip prefix-list ssh-list
   seq 10 permit 10.20.0.0/18
   seq 20 permit 10.20.192.0/18
   seq 30 permit 10.41.192.0/18
   seq 40 permit 10.64.0.0/18
   seq 50 permit 25.66.128.0/17
   seq 60 permit 40.90.144.235/32
   seq 70 permit 40.90.146.191/32
   seq 80 permit 40.90.147.119/32
   seq 90 permit 40.90.155.26/32
   seq 100 permit 70.37.160.97/32
   seq 110 permit 70.37.161.124/32
   seq 120 permit 168.62.208.162/32
   seq 130 permit 168.62.209.95/32
!
ip prefix-list ssh-list-er
   seq 10 permit 13.65.91.57/32
   seq 20 permit 13.78.188.33/32
   seq 30 permit 13.85.74.21/32
   seq 40 permit 13.91.249.235/32
   seq 50 permit 13.91.254.232/32
   seq 60 permit 13.92.84.128/32
   seq 70 permit 23.97.0.100/32
   seq 80 permit 23.97.3.89/32
   seq 90 permit 23.97.18.212/32
   seq 100 permit 23.97.18.229/32
   seq 110 permit 23.101.173.90/32
   seq 120 permit 52.138.70.115/32
   seq 130 permit 52.138.71.153/32
   seq 140 permit 52.161.28.251/32
   seq 150 permit 52.165.221.72/32
   seq 160 permit 52.173.250.124/32
   seq 170 permit 52.177.204.204/32
   seq 180 permit 52.177.207.219/32
   seq 190 permit 52.179.10.142/32
   seq 200 permit 52.180.178.35/32
   seq 210 permit 52.180.178.191/32
   seq 220 permit 52.181.177.232/32
   seq 230 permit 52.181.182.81/32
   seq 240 permit 52.182.49.196/32
   seq 250 permit 52.182.53.156/32
   seq 260 permit 52.191.140.123/32
   seq 270 permit 52.191.170.38/32
   seq 280 permit 52.237.24.145/32
   seq 290 permit 52.237.30.255/32
   seq 300 permit 52.238.73.235/32
   seq 310 permit 52.238.78.237/32
   seq 320 permit 52.242.17.200/32
   seq 330 permit 52.242.28.83/32
   seq 340 permit 52.244.66.114/32
   seq 350 permit 52.244.66.116/32
   seq 360 permit 168.62.104.154/32
!
ip prefix-list tools-list
   seq 10 permit 10.20.0.0/18
   seq 20 permit 10.41.192.0/18
!
ipv6 prefix-list AGGREGATES-V6
   seq 10 permit 2603:10b0:a07:8200::/56
   seq 20 permit 2603:10b0:a07:8300::/56
   seq 30 permit 2603:10b0:a07:9200::/56
   seq 40 permit 2603:10b0:a07:9300::/56
!
ipv6 prefix-list BOGON-V6
   seq 10 permit ::/8 ge 8
   seq 20 permit ::/128 ge 128
   seq 40 permit ::1/128 ge 128
   seq 50 permit ::ffff:0.0.0.0/96 ge 96
   seq 60 permit 100::/8 ge 8
   seq 70 permit 100::/64 ge 64
   seq 80 permit 200::/7 ge 7
   seq 90 permit 400::/6 ge 6
   seq 100 permit 800::/5 ge 5
   seq 110 permit 1000::/4 ge 4
   seq 120 permit 2001:10::/28 ge 28
   seq 130 permit 2001:db8::/32 ge 32
   seq 140 permit 2002::/24 ge 24
   seq 150 permit 2002:a00::/24 ge 24
   seq 160 permit 2002:7f00::/24 ge 24
   seq 170 permit 2002:a9fe::/32 ge 32
   seq 180 permit 2002:ac10::/28 ge 28
   seq 190 permit 2002:c0a8::/32 ge 32
   seq 200 permit 2002:e000::/20 ge 20
   seq 210 permit 2002:f000::/24 ge 24
   seq 220 permit 3ffe::/16 ge 16
   seq 230 permit 4000::/3 ge 3
   seq 240 permit 5f00::/8 ge 8
   seq 250 permit 6000::/3 ge 3
   seq 260 permit 8000::/3 ge 3
   seq 270 permit a000::/3 ge 3
   seq 280 permit c000::/3 ge 3
   seq 290 permit e000::/4 ge 4
   seq 300 permit f000::/5 ge 5
   seq 310 permit f800::/6 ge 6
   seq 320 permit fc00::/7 ge 7
   seq 330 permit fe00::/9 ge 9
   seq 340 permit fe80::/10 ge 10
   seq 350 permit fec0::/10 ge 10
   seq 360 permit ff00::/8 ge 8
!
ipv6 prefix-list BYOIP-V6
   seq 10 permit 2404:f800::/128 ge 128
   seq 20 permit 2602:fd5e:4::/48 ge 48
!
ipv6 prefix-list DEFAULT_IPV6
   seq 5 permit ::/0
!
ipv6 prefix-list EDGE-AZURE-V6
   seq 10 permit 2a01:111:f100::/47
!
ipv6 prefix-list GLOBAL-CUST-DEFAULT-OUT-V6
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-ALLOW-CONNECTED-LENGTH-RANGE
   seq 10 permit 2000::/3 ge 126 le 127
!
ipv6 prefix-list IPV6-ALLOW-GOOD-BGP
   seq 10 permit 2000::/3 ge 3 le 128
   seq 20 permit e000::/3 ge 3 le 128
!
ipv6 prefix-list IPV6-ANYCAST-IP-SPACE
!
ipv6 prefix-list IPV6-ANYCAST-IP-SPACE-LP-HIGH
   seq 10 permit 2620:0:30::/45
   seq 20 permit 2620:0:30::/64
   seq 30 permit 2620:0:30::53/128
   seq 40 permit 2620:0:32::/64
   seq 50 permit 2620:0:32::53/128
   seq 60 permit 2620:0:34::/64
   seq 70 permit 2620:0:34::53/128
   seq 80 permit 2620:0:37::/64
   seq 90 permit 2620:0:37::53/128
   seq 100 permit 2620:1ec::/36
!
ipv6 prefix-list IPV6-ANYCAST-IP-SPACE-ORLONGER
!
ipv6 prefix-list IPV6-BGP-NATIVE-ALLOW-GOOD-BGP
   seq 10 permit 2000::/3
!
ipv6 prefix-list IPV6-DENY-FROM-SWAN
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-DENY-TO-SWAN
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-GLOBAL-BOGON-FILTER-ALLOW
   seq 10 permit 2001::/32
   seq 20 permit 2002::/16
   seq 30 permit 2000::/3 ge 3 le 48
!
ipv6 prefix-list IPV6-GLOBAL-BOGON-FILTER-ALLOWTO48
   seq 10 permit 2000::/3 ge 3 le 48
!
ipv6 prefix-list IPV6-GLOBAL-BOGON-FILTER-BLOCK
   seq 10 permit ::/0
   seq 20 permit ::/96
   seq 30 permit 2001:db8::/32 ge 32 le 128
   seq 40 permit 3ffe::/16 ge 16 le 128
   seq 50 permit 5f00::/8 ge 8 le 128
   seq 60 permit 2001:10::/28 ge 28 le 128
   seq 70 permit 2001::/32 ge 32 le 128
   seq 80 permit 2002::/16 ge 16 le 128
   seq 90 permit fc00::/7 ge 7 le 128
   seq 100 permit fe80::/10 ge 10 le 128
   seq 110 permit fec0::/10 ge 10 le 128
   seq 120 permit ff00::/8 ge 8 le 128
!
ipv6 prefix-list IPV6-GLOBAL-CUST-DEFAULT-OUT
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-GLOBAL-EGRESS-SPACE
   seq 10 permit 2001:df0:7::/48
   seq 20 permit 2001:df0:d7::/48
   seq 30 permit 2001:df0:d8::/48
   seq 40 permit 2001:df0:d9::/48
   seq 50 permit 2001:4898::/32
   seq 60 permit 2001:489a:2000::/35
   seq 70 permit 2001:489a:4000::/35
   seq 80 permit 2404:f800::/32
   seq 90 permit 2404:f801::/32
   seq 100 permit 2603:1000::/25
   seq 110 permit 2620:0:30::/45
   seq 120 permit 2620:1ec::/36
   seq 130 permit 2801:80:1d0::/48
   seq 140 permit 2a01:110::/32
   seq 150 permit 2a01:111::/32
   seq 160 permit 61:100::/64
!
ipv6 prefix-list IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
   seq 10 permit 2404:f800::/32
   seq 20 permit 2a01:110::/32
   seq 30 permit 2a01:111::/32
   seq 40 permit 2001:4898::/32
   seq 50 permit 2001:4899::/32
   seq 60 permit 2620:0:30::/45
   seq 70 permit 2001:df0:7::/48
   seq 80 permit 2801:80:1d0::/48
   seq 90 permit 2404:f801::/32
   seq 100 permit 2001:df0:d7::/48
   seq 110 permit 2603:1000::/25
   seq 120 permit 2620:1ec::/36
   seq 130 permit 2001:489a:2000::/35
   seq 140 permit 2001:489a:4000::/35
   seq 150 permit 2001:df0:d8::/48
   seq 160 permit 2001:df0:d9::/48
!
ipv6 prefix-list IPV6-MICROSOFT-PRIVATE-ROUTES
   seq 10 permit 2001:506:28::/48
   seq 20 permit 2001:489a::/35
   seq 30 permit 2603:1080::/25
   seq 40 permit 2a01:111::/36
   seq 50 permit 2a01:111:e000::/36
   seq 60 permit 3000:2:2:1::/64
   seq 70 permit 3013:16::/64
!
ipv6 prefix-list IPV6-REJECT-BAD-BGP
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-SEND-DEFAULT-ONLY
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6-STD-PARTNER-IN
   seq 10 permit ::/0
!
ipv6 prefix-list IPV6_64_ONLY
   !! ONLY APPLIED WHEN TRAFFIC DRAIN IS NEEDED !!!
   !! ONLY APPLIED WHEN TRAFFIC DRAIN IS NEEDED !!!
   !! ONLY APPLIED WHEN TRAFFIC DRAIN IS NEEDED !!!
   !! ONLY APPLIED WHEN TRAFFIC DRAIN IS NEEDED !!!
   seq 5 permit ::/0 eq 64
!
ipv6 prefix-list IPV6_64_OR_LONGER
   seq 10 permit ::/0 ge 64 le 128
!
ipv6 prefix-list IPV6_65_OR_LONGER
   seq 10 permit ::/0 ge 65 le 128
!
ipv6 prefix-list IPV6_PREFIXES_TRANSITEDGE
   seq 1 deny ::/0 le 128
!
ipv6 prefix-list IPV6_SEND_DEFAULT_ONLY
   seq 10 permit ::/0
!
ipv6 prefix-list LOOPBACK0-V6
   seq 10 permit 2a01:111:2000::f000:5e/128
!
ipv6 prefix-list LOOPBACK0-v6
   seq 10 permit 2a01:111:2000::f000:5e/128
!
ipv6 prefix-list LOOPBACK99-V6
   seq 10 permit 2a01:111:2000::f000:5e/128
!
ipv6 prefix-list LOOPBACK99-v6
   seq 10 permit 2a01:111:e210:1:10:3:159:175/128
!
ipv6 prefix-list MSFT-WHITE-LIST-V6
   seq 10 permit 2001:4898:8000::/33
   seq 20 permit 2404:f801:8000::/33
   seq 30 permit 2a01:110:8000::/33
   seq 40 permit 2a01:111:f003::/48
   seq 50 permit 2a01:111:f006::/48
!
ipv6 prefix-list TRANSITEDGE_LOOPBACK-V6
!
ipv6 prefix-list TRANSITEDGE_PREFIXES-V6
   seq 1 deny ::/0 le 128
!
ipv6 prefix-list V6_ANY
   seq 10 permit ::/0 le 128
!
ipv6 prefix-list ipv6-prefix-windows-update
   seq 10 permit 2620:1ec:5::54/128
   seq 20 permit 2620:1ec:29::10/128
   seq 30 permit 2620:1ec:29::254/128
   seq 40 permit 2620:1ec:bdf::11/128
   seq 50 permit 2a01:111:2003::50/128
   seq 60 permit 2a01:111:2003::54/128
   seq 70 permit 2a01:111:202c::50/128
!
ipv6 prefix-list ipv6-ssh-list
   seq 10 permit 2001:506:28::/52
   seq 20 permit 2001:506:28:6000::/52
!
ipv6 prefix-list ipv6_deny_connected_bgp
!
ipv6 prefix-list ipv6_deny_static_bgp
!
ipv6 prefix-list ipv6_permit_aggregate_bgp
!
ipv6 prefix-list ipv6_permit_pullup_bgp
!
ipv6 prefix-list ipv6_permit_static_bgp
!
ipv6 prefix-list ipv6_permit_static_bgp_anchor
!
ipv6 unicast-routing
ipv6 hardware fib optimize vrf tms-l3vrf prefix-length 128
ipv6 hardware fib optimize vrf tms-l3vrf prefixes minimum count 50000
ipv6 unicast-routing vrf ITEpremium
ipv6 unicast-routing vrf VRF_DDOS
ipv6 unicast-routing vrf tms-bypass-l3vrf
ipv6 unicast-routing vrf tms-l3vrf
!
system control-plane
   ip access-group ROUTER-PROTECT in
   ip access-group MGMT-BLOCK vrf MGMT in
   ipv6 access-group ROUTER-PROTECT-V6 in
   ipv6 access-group ROUTER-PROTECT-V6 vrf MGMT in
!
monitor session et3_9_1_tx source Ethernet3/9/1
monitor session et3_9_1_tx destination Cpu
monitor session eth3_36_1 source Ethernet3/36/1 rx
monitor session eth3_36_1 destination Cpu
monitor session po132_tx source Port-Channel132 tx
monitor session po132_tx destination Cpu
monitor session rwa_po141_rx source Port-Channel141
monitor session rwa_po141_rx destination Cpu
!
ip route 0.0.0.0/0 10.3.151.1
ip route 10.41.192.0/18 Null0 tag 200
ip route 10.64.0.0/18 Null0 tag 200
ip route 25.64.0.0/10 Null0
ip route 100.126.0.0/16 Null0 tag 200
ip route 100.127.0.0/16 Null0 tag 200
ip route 100.127.64.0/18 Null0 tag 200
ip route 192.168.200.100/32 172.20.132.0
ip route vrf MGMT 0.0.0.0/0 10.3.151.1
!
ipv6 route 100::/64 Null0
ipv6 route 2001:506:28:9000:ffff:ffff:ffff:ffff/128 Null0
ipv6 route 2603:10b0:a07:8200::/56 Null0 tag 9119
ipv6 route 2603:10b0:a07:8300::/56 Null0 tag 9119
ipv6 route 2603:10b0:a07:9200::/56 Null0 tag 9119
ipv6 route 2603:10b0:a07:9300::/56 Null0 tag 9119
!
mpls ip
!
mpls ldp
   router-id interface Loopback0
   transport-address interface Loopback0
   authentication index 1 password 7 $PASS$
   neighbor 10.3.159.14 targeted
   neighbor 10.3.159.130 targeted
   neighbor 207.46.35.138 targeted
   fec filter prefix-list LO0-IN-LDP
   no shutdown
!
mpls icmp fragmentation-needed tunneling
mpls icmp ttl-exceeded tunneling
!
mpls label range dynamic 100000 800000
mpls label range isis-sr 16000 8000
mpls label range static 24000 76000
!
ip http client local-interface Management0
ip tftp client source-interface Management0
!
ntp local-interface vrf MGMT Management0
ntp server vrf MGMT 10.20.8.129
ntp server vrf MGMT 10.20.8.130 prefer
!
policy-map type pbr POLICY_ITEPREMIUM
   10 class ITEpremium_v4
      set nexthop 6.6.6.1
!
no service config verification qos
qos map dscp 0 2 3 4 5 6 7 16 17 19 20 21 22 23 24 26 27 28 29 30 31 32 33 35 36 37 38 39 40 41 42 43 44 45 47 49 50 51 52 53 54 55 57 58 59 60 61 62 63 to traffic-class 0
qos map dscp 10 to traffic-class 1
qos map dscp 18 to traffic-class 4
qos map dscp 56 to traffic-class 6
qos map exp 0 to traffic-class 0
qos map exp 1 to traffic-class 1
qos map traffic-class 0 to exp 0
qos map traffic-class 1 to exp 1
!
route-map DDOS-GEO-IN permit 10
   description accept-continental
   match community COMM_FUNC_DONTADV_ALL
   set extcommunity extcommunity-list COMM_RT_TMS_GEO
!
route-map DDOS-GEO-IN permit 20
   description accept-irr
   match community COMM_ROUTE_DDOS_IRR
   set extcommunity extcommunity-list COMM_RT_TMS_IRR
!
route-map DDOS-GEO-IN permit 30
   description accept-rest
   set extcommunity extcommunity-list COMM_RT_TMS_GLOBAL
!
route-map EXPORT-TO-ISIS permit 10
   description allow-gil
   match ip address prefix-list ALLOW-GIL-V4
   match source-protocol static
   match tag 200
   set tag 2000
!
route-map IPV6-AGGREGATE-ROUTE-TAG-9119 permit 10
   set extcommunity color 9119 additive
   set tag 9119
!
route-map ITEPREMIUM-IMPORT permit 10
   description advertise_global
   match extcommunity COMM_RT_ITE_PREMIUM_GLOBAL
!
route-map LEAK-INTO-TMS-BYPASS-L3VRF permit 10
   match source-protocol connected
!
route-map LEAK-INTO-TMS-BYPASS-L3VRF permit 20
   match tag 9111
!
route-map LEAK-INTO-TMS-L3VRF permit 10
   match source-protocol connected
!
route-map LP_460 permit 10
   set local-preference 460
!
route-map PERMITTED-AGGREGATE-CONTRIBUTOR permit 10
   description match RH prefixes as contributors
   match tag 9111
   match route-type external
!
route-map TAG_9119 permit 10
   description tag Aggregate routes
   match ipv6 address prefix-list AGGREGATES-V6
   set local-preference 500
   set tag 9119
!
route-map TMS-EXPORT permit 10
   description "implement-overload, Default: no local-preference, Overload: set local-preference 10"
   continue 
!
route-map TMS-IMPORT permit 10
   description "Import globally scoped prefixes"
   match extcommunity COMM_RT_TMS_GLOBAL
!
route-map TMS-IMPORT permit 20
   description "Import continental scoped mitigation prefixes"
   match extcommunity COMM_RT_TMS_GEO
!
route-map TMS-IMPORT permit 30
   description Import IRR region scoped mitigation prefixes
   match extcommunity COMM_RT_TMS_IRR
!
route-map TMS-IMPORT permit 40
   description "Import site level scoped mitigation prefixes"
   match extcommunity COMM_RT_TMS_SITE
!
route-map TMS-IMPORT deny 100
   description reject
!
route-map local_lp permit 10
   set local-preference 400
!
route-map set_LP_500 permit 10
   set local-preference 500
!
router bfd
   session stats snapshot interval 30
   !
   sbfd
      local-interface Loopback0 ipv4 ipv6
!
router bgp 8075
   router-id 10.3.159.175
   graceful-restart restart-time 300
   bgp cluster-id 10.3.159.175
   graceful-restart
   bgp always-compare-med
   maximum-paths 128 ecmp 128
   bgp listen range 2a01:111:e210:b::/64 peer-group BGP-MONITOR remote-as 8075
   bgp bestpath skip peer type ebgp ibgp
   bgp advertise-inactive
   neighbor BGP-LS peer group
   neighbor BGP-LS remote-as 8075
   neighbor BGP-LS update-source Ethernet3/12/1
   neighbor BGP-LS description BGP-LS-PeerGroup
   neighbor BGP-MONITOR peer group
   neighbor BGP-MONITOR remote-as 8075
   neighbor BGP-MONITOR update-source Loopback0
   neighbor BGP-MONITOR auto-local-addr
   neighbor BGP-MONITOR description BGPMonitor_V6
   neighbor BGP-MONITOR route-reflector-client
   neighbor BGP-MONITOR additional-paths send any
   neighbor BGP-MONITOR send-community standard extended
   neighbor BGP-MONITOR maximum-routes 0
   neighbor BGPMON peer group
   neighbor BGPMON maximum-routes 1500000 warning-only
   neighbor CUST-CIS-BGP-DDOS peer group
   neighbor CUST-CIS-BGP-DDOS remote-as 64991
   neighbor CUST-CIS-BGP-DDOS route-map DDOS-GEO-IN in
   neighbor CUST-CIS-BGP-DDOS route-map DENY-ALL out
   neighbor CUST-CIS-BGP-DDOS maximum-routes 4000
   neighbor CUST-DCFX-BGP-GROUP peer group
   neighbor CUST-DCFX-BGP-GROUP description CUST:DCFX:gnssrch@microsoft.com
   neighbor CUST-DCFX-BGP-GROUP maximum-routes 1500000 warning-only
   neighbor CUST-FABRIC-RNG-BGP-GROUP peer group
   neighbor CUST-FABRIC-RNG-BGP-GROUP description CUST:FABRIC:apnetesc@microsoft.com
   neighbor CUST-FABRIC-RNG-BGP-GROUP maximum-routes 1500000 warning-only
   neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA peer group
   neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA description CUST:FABRIC:apnetesc@microsoft.com
   neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA send-community standard extended
   neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA maximum-routes 1500000 warning-only
   neighbor CUST-MGFX-BGP-GROUP peer group
   neighbor CUST-MGFX-BGP-GROUP description CUST:MGFX:apnetesc@microsoft.com
   neighbor CUST-MGFX-BGP-GROUP maximum-routes 1500000 warning-only
   neighbor DDOS_VRF_V4 peer group
   neighbor DDOS_VRF_V4 remote-as 64915
   neighbor DDOS_VRF_V4 route-map TO_DDOS_V4 out
   neighbor DDOS_VRF_V4 maximum-routes 1000
   neighbor DDOS_VRF_V6 peer group
   neighbor DDOS_VRF_V6 remote-as 64915
   neighbor DDOS_VRF_V6 route-map TO_DDOS_V6 out
   neighbor DDOS_VRF_V6 maximum-routes 1000
   neighbor EWA-CLIENTS-IPV4-FAST peer group
   neighbor EWA-CLIENTS-IPV4-FAST remote-as 8075
   neighbor EWA-CLIENTS-IPV4-FAST update-source Loopback55
   neighbor EWA-CLIENTS-IPV4-FAST description "Anchor BGP session"
   neighbor EWA-CLIENTS-IPV4-FAST route-reflector-client
   neighbor EWA-CLIENTS-IPV4-FAST timers 3 9
   neighbor EWA-CLIENTS-IPV4-FAST send-community standard extended
   neighbor EWA-CLIENTS-IPV4-FAST maximum-routes 0
   neighbor EWA-CLIENTS-IPV6-FAST peer group
   neighbor EWA-CLIENTS-IPV6-FAST remote-as 8075
   neighbor EWA-CLIENTS-IPV6-FAST update-source Loopback55
   neighbor EWA-CLIENTS-IPV6-FAST description "Anchor BGP session"
   neighbor EWA-CLIENTS-IPV6-FAST route-reflector-client
   neighbor EWA-CLIENTS-IPV6-FAST timers 3 9
   neighbor EWA-CLIENTS-IPV6-FAST send-community standard extended
   neighbor EWA-CLIENTS-IPV6-FAST maximum-routes 0
   neighbor GLOBAL-EBGP-AR peer group
   neighbor GLOBAL-EBGP-AR maximum-routes 1500000 warning-only
   neighbor IER-CLIENTS-IPV4 peer group
   neighbor IER-CLIENTS-IPV4 remote-as 8075
   neighbor IER-CLIENTS-IPV4 update-source Loopback0
   neighbor IER-CLIENTS-IPV4 description BGP Group for all read only bgp monitoring tools
   neighbor IER-CLIENTS-IPV4 route-reflector-client
   neighbor IER-CLIENTS-IPV4 send-community standard extended
   neighbor IER-CLIENTS-IPV4 maximum-routes 1500000 warning-only
   neighbor IER-CLIENTS-IPV4-ANCHOR peer group
   neighbor IER-CLIENTS-IPV4-ANCHOR remote-as 8075
   neighbor IER-CLIENTS-IPV4-ANCHOR local-v4-addr 10.3.159.175
   neighbor IER-CLIENTS-IPV4-ANCHOR description "Anchor BGP session"
   neighbor IER-CLIENTS-IPV4-ANCHOR route-reflector-client
   neighbor IER-CLIENTS-IPV4-ANCHOR timers 3 9
   neighbor IER-CLIENTS-IPV4-ANCHOR send-community standard extended
   neighbor IER-CLIENTS-IPV4-ANCHOR maximum-routes 0
   neighbor IER-CLIENTS-IPV6 peer group
   neighbor IER-CLIENTS-IPV6 remote-as 8075
   neighbor IER-CLIENTS-IPV6 update-source Loopback0
   neighbor IER-CLIENTS-IPV6 description BGP Group for all read only bgp monitoring tools
   neighbor IER-CLIENTS-IPV6 route-reflector-client
   neighbor IER-CLIENTS-IPV6 send-community standard extended
   neighbor IER-CLIENTS-IPV6 maximum-routes 1500000 warning-only
   neighbor IER-CLIENTS-IPV6-ANCHOR peer group
   neighbor IER-CLIENTS-IPV6-ANCHOR remote-as 8075
   neighbor IER-CLIENTS-IPV6-ANCHOR local-v6-addr 2a01:111:e210:1:10:3:159:175
   neighbor IER-CLIENTS-IPV6-ANCHOR description "Anchor BGP session"
   neighbor IER-CLIENTS-IPV6-ANCHOR route-reflector-client
   neighbor IER-CLIENTS-IPV6-ANCHOR timers 3 9
   neighbor IER-CLIENTS-IPV6-ANCHOR send-community standard extended
   neighbor IER-CLIENTS-IPV6-ANCHOR maximum-routes 0
   neighbor IPV6-CUST-CIS-BGP-DDOS peer group
   neighbor IPV6-CUST-CIS-BGP-DDOS remote-as 64991
   neighbor IPV6-CUST-CIS-BGP-DDOS route-map DDOS-GEO-IN in
   neighbor IPV6-CUST-CIS-BGP-DDOS route-map DENY-ALL out
   neighbor IPV6-CUST-CIS-BGP-DDOS maximum-routes 4000
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP peer group
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP description CUST:FABRIC:apnetesc@microsoft.com
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP maximum-routes 1500000 warning-only
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA peer group
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA description CUST:FABRIC:apnetesc@microsoft.com
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA send-community standard extended
   neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA maximum-routes 1500000 warning-only
   neighbor IPV6-CUST-MGFX-BGP-GROUP peer group
   neighbor IPV6-CUST-MGFX-BGP-GROUP description CUST:MGFX:apnetesc@microsoft.com
   neighbor IPV6-CUST-MGFX-BGP-GROUP maximum-routes 1500000 warning-only
   neighbor IPV6-GLOBAL-EBGP-AR peer group
   neighbor IPV6-GLOBAL-EBGP-AR maximum-routes 1500000 warning-only
   neighbor IPV6-RWA-SWAN peer group
   neighbor IPV6-RWA-SWAN remote-as 8074
   neighbor IPV6-RWA-SWAN remove-private-as all
   neighbor IPV6-RWA-SWAN local-as 4221600001 no-prepend replace-as
   neighbor IPV6-RWA-SWAN description INFRA:RWA-SER eBGP
   neighbor IPV6-RWA-SWAN send-community standard extended
   neighbor IPV6-RWA-SWAN maximum-routes 0
   neighbor IRR-MESH-IPV4 peer group
   neighbor IRR-MESH-IPV4 remote-as 8075
   neighbor IRR-MESH-IPV4 update-source Loopback0
   neighbor IRR-MESH-IPV4 send-community standard extended
   neighbor IRR-MESH-IPV4 maximum-routes 1500000 warning-only
   neighbor IRR-MESH-IPV6 peer group
   neighbor IRR-MESH-IPV6 remote-as 8075
   neighbor IRR-MESH-IPV6 update-source Loopback0
   neighbor IRR-MESH-IPV6 send-community standard extended
   neighbor IRR-MESH-IPV6 maximum-routes 1500000 warning-only
   neighbor RWA-SWAN peer group
   neighbor RWA-SWAN remote-as 8074
   neighbor RWA-SWAN remove-private-as all
   neighbor RWA-SWAN local-as 4221600001 no-prepend replace-as
   neighbor RWA-SWAN description INFRA:RWA-SER eBGP
   neighbor RWA-SWAN send-community standard extended
   neighbor RWA-SWAN maximum-routes 0
   neighbor RegionalAggregator_V4 peer group
   neighbor RegionalAggregator_V4 shutdown
   neighbor RegionalAggregator_V6 peer group
   neighbor RegionalAggregator_V6 shutdown
   neighbor TRANSITEDGE_V4 peer group
   neighbor TRANSITEDGE_V4 passive
   neighbor TRANSITEDGE_V4 timers 60 180
   neighbor TRANSITEDGE_V4 send-community standard extended
   neighbor TRANSITEDGE_V4 maximum-routes 2
   neighbor TRANSITEDGE_V6 peer group
   neighbor TRANSITEDGE_V6 passive
   neighbor TRANSITEDGE_V6 timers 60 180
   neighbor TRANSITEDGE_V6 send-community standard extended
   neighbor TRANSITEDGE_V6 maximum-routes 2
   neighbor VPNV4-VPNV6-SERVER peer group
   neighbor VPNV4-VPNV6-SERVER remote-as 8075
   neighbor VPNV4-VPNV6-SERVER update-source Loopback55
   neighbor VPNV4-VPNV6-SERVER description VPNv4 and VPNv6 Clients
   neighbor VPNV4-VPNV6-SERVER send-community extended
   neighbor VPNV4-VPNV6-SERVER maximum-routes 1500000 warning-only
   neighbor ixia-ebgp-64603 peer group
   neighbor ixia-ebgp-64603 remote-as 64603
   neighbor ixia-ebgp-64603 next-hop-self
   neighbor ixia-ebgp-64603 route-map PERMITTED-AGGREGATE-CONTRIBUTOR in
   neighbor ixia-ebgp-64603 send-community standard extended
   neighbor ixia-ebgp-64603 maximum-routes 0
   neighbor ixia-ebgp-ipv6-64603 peer group
   neighbor ixia-ebgp-ipv6-64603 remote-as 64603
   neighbor ixia-ebgp-ipv6-64603 send-community standard extended
   neighbor ixia-ebgp-ipv6-64603 maximum-routes 0
   neighbor ixia_ipv6_24_LC1P6 peer group
   neighbor owr04.str01 peer group
   neighbor owr04.str01 remote-as 8074
   neighbor owr04.str01 maximum-routes 0
   neighbor 1.1.1.1 remote-as 1
   neighbor 2.2.2.2 remote-as 2
   neighbor 5.5.5.5 remote-as 5
   neighbor 6.6.6.6 remote-as 6
   neighbor 10.0.13.153 remote-as 64539
   neighbor 10.0.13.153 description xzr01.lon50
   neighbor 10.3.159.14 peer group IRR-MESH-IPV4
   neighbor 10.3.159.14 remote-as 8075
   neighbor 10.3.159.14 description rwa01.str05
   neighbor 10.3.159.15 peer group IRR-MESH-IPV4
   neighbor 10.3.159.15 description rwa01.str04
   neighbor 10.3.159.43 peer group IER-CLIENTS-IPV4
   neighbor 10.3.159.43 description ewa01.str40
   neighbor 10.3.159.75 peer group EWA-CLIENTS-IPV4-FAST
   neighbor 10.3.159.75 remote-as 8075
   neighbor 10.3.159.75 description ewa04.str40_anchor
   neighbor 10.3.159.85 peer group IER-CLIENTS-IPV4
   no neighbor 10.3.159.85 shutdown
   neighbor 10.3.159.85 description ier01.str50
   neighbor 10.3.159.90 peer group IRR-MESH-IPV4
   neighbor 10.3.159.90 description ear02.str07
   neighbor 10.3.159.125 peer group EWA-CLIENTS-IPV4-FAST
   no neighbor 10.3.159.125 shutdown
   neighbor 10.3.159.125 description ewa03.str40
   neighbor 10.3.159.130 peer group IRR-MESH-IPV4
   neighbor 10.3.159.130 description rwa01.str15
   neighbor 10.3.159.145 peer group EWA-CLIENTS-IPV4-FAST
   neighbor 10.3.159.145 description ewa02.str40
   neighbor 10.3.159.178 peer group IRR-MESH-IPV4
   neighbor 10.3.159.178 description ear01.str06
   neighbor 10.3.159.184 peer group EWA-CLIENTS-IPV4-FAST
   neighbor 10.3.159.184 description ewa02.str40
   neighbor 10.30.159.130 peer group VPNV4-VPNV6-SERVER
   neighbor 17.17.17.1 remote-as 64915
   neighbor 17.17.17.1 description IXIA:10.3.145.24:12/5
   neighbor 17.17.17.1 send-community standard extended
   neighbor 17.17.17.1 maximum-routes 1500000 warning-only
   neighbor 18.18.18.1 remote-as 64915
   neighbor 18.18.18.1 description IXIA:10.3.145.24:8/7
   neighbor 18.18.18.1 send-community standard extended
   neighbor 18.18.18.1 maximum-routes 1500000 warning-only
   neighbor 20.20.20.2 remote-as 64915
   neighbor 20.20.20.2 description IXIA:10.3.145.24:9/5
   neighbor 20.20.20.2 route-map set_LP_500 in
   neighbor 20.20.20.2 send-community standard extended
   neighbor 20.20.20.2 maximum-routes 0
   neighbor 21.21.21.2 remote-as 64915
   neighbor 21.21.21.2 description IXIA:10.3.145.24:4/5
   neighbor 21.21.21.2 send-community standard extended
   neighbor 21.21.21.2 maximum-routes 0
   neighbor 61.100.0.5 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 61.100.0.5 remote-as 64603
   neighbor 61.100.0.5 update-source 61.100.0.4
   neighbor 61.100.0.5 description IXIA.24-LC1P6::wan_auto_test::RESERVED
   neighbor 61.100.0.55 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 61.100.0.55 remote-as 64654
   neighbor 61.100.0.55 update-source 61.100.0.54
   neighbor 61.100.0.55 description IXIA.36:8/4::wan_auto_test::RESERVED
   neighbor 76.1.0.1 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 76.1.0.1 remote-as 64915
   neighbor 76.1.0.1 description ixia-rohit
   neighbor 97.1.0.1 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 97.1.0.1 remote-as 64915
   neighbor 97.1.0.1 description ixia 2/7
   neighbor 100.3.151.52 peer group IRR-MESH-IPV4
   neighbor 100.3.151.52 description irr01.str05
   neighbor 100.3.151.54 peer group IRR-MESH-IPV4
   neighbor 100.100.47.2 peer group BGP-LS
   neighbor 100.100.47.2 description BGP_LS_MW2PPF50A02A390
   neighbor 100.100.47.3 peer group BGP-LS
   neighbor 100.100.47.3 description BGP_LS_MW2PPF831036637
   neighbor 172.17.152.2 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 172.17.152.2 remote-as 64915
   neighbor 172.17.152.2 description ixia 3/1
   neighbor 172.18.150.2 peer group ixia-ebgp-64603
   neighbor 172.18.150.2 remote-as 64603
   neighbor 172.18.150.2 description ixia_24_LC1P6
   neighbor 172.20.141.0 peer group RWA-SWAN
   neighbor 172.20.141.0 description owr02.str15
   neighbor 192.168.100.2 peer group BGP-LS
   neighbor 192.168.100.2 remote-as 8075
   neighbor 192.168.100.2 description BGP-LS_MWHEEEAP0000AEB
   neighbor 192.168.100.3 peer group BGP-LS
   neighbor 192.168.100.3 description BGP-LS_MWHEEEAP0000AEC
   neighbor 192.168.100.4 peer group BGP-LS
   neighbor 192.168.100.4 description BGP-LS_MWHEEEAP0000AED
   neighbor 192.168.100.5 peer group BGP-LS
   neighbor 192.168.100.5 description BGP-LS_MWHEEEAP0000AEE
   neighbor 192.168.100.5 send-community extended
   neighbor 192.168.254.100 peer group ixia-ebgp-64603
   neighbor 2603:10b0:a07:8100::2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2603:10b0:a07:8100::2 remote-as 64915
   neighbor 2603:10b0:a07:8100::2 description ixia 3/1
   neighbor 2608:10b0:a07:8101::2 peer group ixia-ebgp-ipv6-64603
   neighbor 2608:10b0:a07:8101::2 remote-as 64603
   neighbor 2608:10b0:a07:8101::2 description ixia_ipv6_24_LC1P6
   neighbor 2a01:111:e210:0:17:17:17:2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2a01:111:e210:0:17:17:17:2 remote-as 64915
   neighbor 2a01:111:e210:0:17:17:17:2 description IXIA:10.3.145.24:12/5
   neighbor 2a01:111:e210:0:18:18:18:2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2a01:111:e210:0:18:18:18:2 remote-as 64915
   neighbor 2a01:111:e210:0:18:18:18:2 description IXIA:10.3.145.24:8/7
   neighbor 2a01:111:e210:0:20:20:20:2 remote-as 64915
   neighbor 2a01:111:e210:0:20:20:20:2 description IXIA:10.3.145.24:9/5
   neighbor 2a01:111:e210:0:20:20:20:2 send-community standard extended
   neighbor 2a01:111:e210:0:20:20:20:2 maximum-routes 1500000 warning-only
   neighbor 2a01:111:e210:0:21:21:21:2 remote-as 64915
   neighbor 2a01:111:e210:0:21:21:21:2 description IXIA:10.3.145.24:4/5
   neighbor 2a01:111:e210:0:21:21:21:2 send-community standard extended
   neighbor 2a01:111:e210:0:21:21:21:2 maximum-routes 1500000 warning-only
   neighbor 2a01:111:e210:0:172:20:141:1 peer group IPV6-RWA-SWAN
   neighbor 2a01:111:e210:0:172:20:141:1 remote-as 8074
   neighbor 2a01:111:e210:0:172:20:141:1 description owr02.str15
   neighbor 2a01:111:e210:1:10:3:159:14 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:1:10:3:159:14 description rwa01.str05
   neighbor 2a01:111:e210:1:10:3:159:15 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:1:10:3:159:15 description rwa01.str04
   neighbor 2a01:111:e210:1:10:3:159:75 peer group EWA-CLIENTS-IPV6-FAST
   neighbor 2a01:111:e210:1:10:3:159:75 description ewa04.str40.ipv6
   neighbor 2a01:111:e210:1:10:3:159:85 peer group IER-CLIENTS-IPV6
   neighbor 2a01:111:e210:1:10:3:159:85 description ier01.str50
   neighbor 2a01:111:e210:1:10:3:159:90 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:1:10:3:159:90 description ear02.str07
   neighbor 2a01:111:e210:1:10:3:159:125 peer group EWA-CLIENTS-IPV6-FAST
   no neighbor 2a01:111:e210:1:10:3:159:125 shutdown
   neighbor 2a01:111:e210:1:10:3:159:125 description ewa03.str40
   neighbor 2a01:111:e210:1:10:3:159:130 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:1:10:3:159:130 description rwa01.str15
   neighbor 2a01:111:e210:1:10:3:159:145 peer group EWA-CLIENTS-IPV6-FAST
   neighbor 2a01:111:e210:1:10:3:159:145 description ewa02.str40
   neighbor 2a01:111:e210:1:10:3:159:178 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:1:10:3:159:178 description ear01.str06
   neighbor 2a01:111:e210:1:10:3:159:184 peer group EWA-CLIENTS-IPV6-FAST
   neighbor 2a01:111:e210:1:10:3:159:184 description ewa01.str40
   neighbor 2a01:111:e210:b::54 peer group IRR-MESH-IPV6
   neighbor 2a01:111:e210:b::159:43 peer group IER-CLIENTS-IPV6
   neighbor 2a01:111:e210:b::159:43 description ewa02.str40
   neighbor 2a61:100:15::2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2a61:100:15::2 remote-as 64603
   neighbor 2a61:100:15::2 description IXIA.24-LC1P6::wan_auto_test::RESERVED
   neighbor 2a76::2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2a76::2 remote-as 64915
   neighbor 2a76::2 description Ixia-Rohit
   neighbor 2a97::2 peer group IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA
   neighbor 2a97::2 remote-as 64915
   neighbor 2a97::2 description ixia 2/7
   aggregate-address 2a01:111:4004::/56 summary-only attribute-map IPV6-AGGREGATE-ROUTE-TAG-9119
   redistribute connected
   !
   address-family ipv4
      next-hop resolution ribs tunnel-rib system-tunnel-rib system-unicast-rib
      neighbor BGP-LS activate
      neighbor BGP-MONITOR activate
      neighbor BGP-MONITOR rcf in BGP_MONITOR_IMPORT()
      neighbor BGP-MONITOR rcf out BGP_MONITOR_EXPORT()
      neighbor BGPMON activate
      neighbor BGPMON rcf in BGP_MONITOR_IMPORT()
      neighbor BGPMON rcf out BGP_MONITOR_EXPORT()
      neighbor CUST-FABRIC-RNG-BGP-GROUP activate
      neighbor CUST-FABRIC-RNG-BGP-GROUP rcf in CUST_FABRIC_RNG_BGP_GROUP_IMPORT()
      neighbor CUST-FABRIC-RNG-BGP-GROUP rcf out CUST_FABRIC_RNG_BGP_GROUP_EXPORT()
      neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA activate
      neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA rcf in CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT()
      neighbor CUST-FABRIC-RNG-BGP-GROUP-RWA rcf out CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT()
      neighbor CUST-MGFX-BGP-GROUP activate
      neighbor CUST-MGFX-BGP-GROUP rcf in CUST_MGFX_BGP_GROUP_IMPORT()
      neighbor CUST-MGFX-BGP-GROUP rcf out CUST_MGFX_BGP_GROUP_EXPORT()
      neighbor DDOS_VRF_V4 activate
      neighbor EWA-CLIENTS-IPV4-FAST activate
      neighbor EWA-CLIENTS-IPV4-FAST rcf in EWA_CLIENTS_IPV4_FAST_IN()
      neighbor EWA-CLIENTS-IPV4-FAST rcf out IER_CLIENTS_ANCHOR_EXPORT_V4()
      neighbor GLOBAL-EBGP-AR activate
      neighbor GLOBAL-EBGP-AR rcf in GLOBAL_EBGP_AR_IMPORT()
      neighbor GLOBAL-EBGP-AR rcf out GLOBAL_EBGP_AR_EXPORT()
      neighbor IER-CLIENTS-IPV4 activate
      neighbor IER-CLIENTS-IPV4 rcf in IER_CLIENTS_IPV4_IMPORT()
      neighbor IER-CLIENTS-IPV4 rcf out IER_CLIENTS_IPV4_EXPORT()
      neighbor IER-CLIENTS-IPV4-ANCHOR activate
      neighbor IER-CLIENTS-IPV4-ANCHOR rcf in DENY_ALL()
      neighbor IER-CLIENTS-IPV4-ANCHOR rcf out IER_CLIENTS_ANCHOR_EXPORT_V4()
      neighbor IRR-MESH-IPV4 activate
      neighbor IRR-MESH-IPV4 rcf in IRR_MESH_IPV4_IMPORT()
      neighbor IRR-MESH-IPV4 rcf out IRR_MESH_IPV4_EXPORT()
      neighbor RWA-SWAN activate
      neighbor RWA-SWAN rcf in RWA_SWAN_IMPORT()
      neighbor RWA-SWAN rcf out RWA_SWAN_EXPORT()
      neighbor TRANSITEDGE_V4 rcf in TRANSITEDGE_V4_IMPORT()
      neighbor TRANSITEDGE_V4 rcf out TRANSITEDGE_V4_EXPORT()
      neighbor ixia-ebgp-64603 activate
      neighbor owr04.str01 activate
      neighbor 10.3.159.14 activate
      neighbor 10.3.159.90 activate
      neighbor 21.21.21.2 activate
      network 20.20.20.0/24
   !
   address-family ipv6
      neighbor BGP-MONITOR activate
      neighbor BGP-MONITOR rcf in BGP_MONITOR_IMPORT()
      neighbor BGP-MONITOR rcf out BGP_MONITOR_EXPORT()
      neighbor BGPMON activate
      neighbor BGPMON rcf in BGP_MONITOR_IMPORT()
      neighbor BGPMON rcf out BGP_MONITOR_EXPORT()
      neighbor DDOS_VRF_V6 activate
      neighbor EWA-CLIENTS-IPV4-FAST rcf in EWA_CLIENTS_IPV6_FAST_IN()
      neighbor EWA-CLIENTS-IPV6-FAST activate
      neighbor EWA-CLIENTS-IPV6-FAST rcf in DENY_ALL()
      neighbor EWA-CLIENTS-IPV6-FAST rcf out IER_CLIENTS_ANCHOR_EXPORT_V6()
      neighbor IER-CLIENTS-IPV6 activate
      neighbor IER-CLIENTS-IPV6 rcf in IER_CLIENTS_IPV6_IMPORT()
      neighbor IER-CLIENTS-IPV6 rcf out IER_CLIENTS_IPV6_EXPORT()
      neighbor IER-CLIENTS-IPV6-ANCHOR activate
      neighbor IER-CLIENTS-IPV6-ANCHOR rcf in DENY_ALL()
      neighbor IER-CLIENTS-IPV6-ANCHOR rcf out IER_CLIENTS_ANCHOR_EXPORT_V6()
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP activate
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP rcf in IPV6_CUST_FABRIC_RNG_BGP_GROUP_IMPORT()
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP rcf out IPV6_CUST_FABRIC_RNG_BGP_GROUP_EXPORT()
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA activate
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA rcf in IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT()
      neighbor IPV6-CUST-FABRIC-RNG-BGP-GROUP-RWA rcf out IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT()
      neighbor IPV6-CUST-MGFX-BGP-GROUP activate
      neighbor IPV6-CUST-MGFX-BGP-GROUP rcf in IPV6_CUST_MGFX_BGP_GROUP_IMPORT()
      neighbor IPV6-CUST-MGFX-BGP-GROUP rcf out IPV6_CUST_MGFX_BGP_GROUP_EXPORT()
      neighbor IPV6-GLOBAL-EBGP-AR activate
      neighbor IPV6-GLOBAL-EBGP-AR rcf in IPV6_GLOBAL_EBGP_AR_IMPORT()
      neighbor IPV6-GLOBAL-EBGP-AR rcf out IPV6_GLOBAL_EBGP_AR_EXPORT()
      neighbor IPV6-RWA-SWAN activate
      neighbor IPV6-RWA-SWAN rcf in IPV6_RWA_SWAN_IMPORT()
      neighbor IPV6-RWA-SWAN rcf out IPV6_RWA_SWAN_EXPORT()
      neighbor IRR-MESH-IPV6 activate
      neighbor IRR-MESH-IPV6 rcf in IRR_MESH_IPV6_IMPORT()
      neighbor IRR-MESH-IPV6 rcf out IRR_MESH_IPV6_EXPORT()
      neighbor TRANSITEDGE_V6 activate
      neighbor TRANSITEDGE_V6 rcf in TRANSITEDGE_IPV6_IMPORT()
      neighbor TRANSITEDGE_V6 rcf out TRANSITEDGE_IPV6_IMPORT()
      neighbor ixia-ebgp-ipv6-64603 activate
      neighbor 2a01:111:e210:0:20:20:20:2 activate
      neighbor 2a01:111:e210:0:21:21:21:2 activate
   !
   address-family link-state
      neighbor BGP-LS activate
      neighbor 192.168.100.2 activate
      isis instance 1
   !
   address-family vpn-ipv4
      neighbor 10.11.187.4 activate
      neighbor 10.11.187.7 activate
      neighbor 10.30.159.130 activate
      neighbor default encapsulation mpls next-hop-self source-interface Loopback55
   !
   address-family vpn-ipv6
      neighbor 10.11.187.4 activate
      neighbor 10.11.187.7 activate
      neighbor default encapsulation mpls next-hop-self source-interface Loopback55
   !
   vrf ITEpremium
      rd 8075:30000
      route-target import vpn-ipv4 8075:30000
      route-target export vpn-ipv4 8075:30000
      route-target import vpn-ipv4 route-map ITEPREMIUM-EXPORT
      route-target export vpn-ipv4 route-map ITEPREMIUM-EXPORT
      router-id 10.30.159.175
   !
   vrf MGMT
      router-id 10.3.151.175
      neighbor 10.45.243.182 remote-as 8075
      neighbor 10.45.243.182 dont-capability-negotiate
   !
   vrf VRF_DDOS
      neighbor 76.1.0.1 peer group DDOS_VRF_V4
      neighbor 76.1.0.1 description FL1
      neighbor 76.1.0.3 peer group DDOS_VRF_V4
      neighbor 76.1.0.3 description FL2
      neighbor 76.1.0.5 peer group DDOS_VRF_V4
      neighbor 76.1.0.5 description FL3
      neighbor 76.1.0.7 peer group DDOS_VRF_V4
      neighbor 76.1.0.7 description FL4
      neighbor 2176::1 peer group DDOS_VRF_V6
      neighbor 2176::1 description FL1
      neighbor 2176::3 peer group DDOS_VRF_V6
      neighbor 2176::3 description FL2
      neighbor 2176::5 peer group DDOS_VRF_V6
      neighbor 2176::5 description FL3
      neighbor 2176::7 peer group DDOS_VRF_V6
      neighbor 2176::7 description FL4
   !
   vrf tms-bypass-l3vrf
      rd 10.3.159.175:10500
      router-id 10.3.159.175
   !
   vrf tms-l3vrf
      rd 10.3.159.175:10101
      route-target import vpn-ipv4 route-map TMS-IMPORT
      route-target import vpn-ipv6 route-map TMS-IMPORT
      router-id 10.3.159.175
      neighbor 10.106.0.163 peer group CUST-CIS-BGP-DDOS
      neighbor 10.106.0.163 remote-as 64991
      neighbor 10.106.0.163 description PHX10-0100-0100-01FL:DDOS
      neighbor 10.106.0.171 peer group CUST-CIS-BGP-DDOS
      neighbor 10.106.0.171 remote-as 64991
      neighbor 10.106.0.171 description PHX10-0100-0100-02FL:DDOS
      neighbor 10.106.0.179 peer group CUST-CIS-BGP-DDOS
      neighbor 10.106.0.179 remote-as 64991
      neighbor 10.106.0.179 description PHX10-0100-0100-03FL:DDOS
      neighbor 10.106.0.187 peer group CUST-CIS-BGP-DDOS
      neighbor 10.106.0.187 remote-as 64991
      neighbor 10.106.0.187 description PHX10-0100-0100-04FL:DDOS
      neighbor 61.100.0.5 peer group CUST-FABRIC-RNG-BGP-GROUP-RWA
      neighbor 61.100.0.5 remote-as 64603
      neighbor 61.100.0.5 update-source 61.100.0.4
      neighbor 61.100.0.5 description IXIA.24-LC1P6::wan_auto_test::RESERVED
      neighbor 2603:10b0:a08:30::a peer group IPV6-CUST-CIS-BGP-DDOS
      neighbor 2603:10b0:a08:30::a remote-as 64991
      neighbor 2603:10b0:a08:30::a description PHX10-0100-0100-01FL:DDOS
      neighbor 2603:10b0:a08:31::a peer group IPV6-CUST-CIS-BGP-DDOS
      neighbor 2603:10b0:a08:31::a remote-as 64991
      neighbor 2603:10b0:a08:31::a description PHX10-0100-0100-02FL:DDOS
      neighbor 2603:10b0:a08:32::a peer group IPV6-CUST-CIS-BGP-DDOS
      neighbor 2603:10b0:a08:32::a remote-as 64991
      neighbor 2603:10b0:a08:32::a description PHX10-0100-0100-03FL:DDOS
      neighbor 2603:10b0:a08:33::a peer group IPV6-CUST-CIS-BGP-DDOS
      neighbor 2603:10b0:a08:33::a remote-as 64991
      neighbor 2603:10b0:a08:33::a description PHX10-0100-0100-04FL:DDOS
      !
      address-family ipv4
         route-target import 8075:3000101
         route-target import vpn-ipv4 8075:3000101
!
router general
   control-functions
      code unit ADVERTISE_OOB_SPECIFICS
            function ADVERTISE_OOB_SPECIFICS()
            {
             @OVERLOAD_KNOB
               {
            	ext_community add ext_community_list BGP_OVERLOAD;
            	@allow_oob_specifics_overload
            		{
            		if source_protocol is BGP and
            			ext_community match ext_community_list COLOR_10293 and
            			prefix match_covered prefix_list_v4 OOB-SPECIFICS-V4
            			{
            			as_path prepend 8075 8075 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
            			return true;
            			}
            		}
            	}
            	@allow_oob_specifics
            	{
            		if source_protocol is BGP and
            			prefix match_covered prefix_list_v4 OOB-SPECIFICS-V4
            		{
            			ext_community remove ext_community_list BGP_OVERLOAD;
            			return true;
            		}
            	}
            }
      EOF
      code unit AZURE_IP_REUSE_SUBREGIONAL
               function AZURE_IP_REUSE_SUBREGIONAL()
               {
                  @match_azure_reuse_blocks
                  {
                     if prefix match_covered prefix_list_v4 AZURE-IP-REUSE-SPACE
                     {
                        community remove community_list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY;
                        community add community_list AZURE_SUBREGIONAL_LOCALREGION;
                        return unknown;   # Move to next policy
                     }
                     @match_azure_subregional_routing
                     {
                        if community match community_list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY
                        {
                          community remove community_list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY;
                          community add community_list AZURE_SUBREGIONAL_LOCALREGION;
                          return unknown;   # Move to next policy
                        }
                     }
                  }
               }
      EOF
      code unit BGP_MONITOR_EXPORT
               function BGP_MONITOR_EXPORT()
               {
                  return CONN_TO_BGP_RWA() ?? STATIC_TO_BGP_RWA() ?? true;
               }
      EOF
      code unit BGP_MONITOR_IMPORT
               function BGP_MONITOR_IMPORT()
               {
                  DENY_ALL();
               }
      EOF
      code unit CONN_TO_BGP_RWA
               function CONN_TO_BGP_RWA()
               {
                  @allow_ntp_overload
                  {
                     if source_protocol is CONNECTED and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 ALLOW-NTP
                     {
                        local_preference = 10;
                        return true;
                     }
                  }
                  @allow_ntp
                  {
                     if source_protocol is CONNECTED and
                        prefix match prefix_list_v4 ALLOW-NTP
                     {
                        local_preference = 400;
                        return true;
                     }
                  }
                  @deny_loopback
                  {
                     if source_protocol is CONNECTED and
                        prefix match prefix_list_v4 LOOPBACK99-V4
                     {
                        return false;
                     }
                  }
                  @deny_azure_reuse_blocks
                  {
                     if source_protocol is CONNECTED and
                        prefix match_covered prefix_list_v4 AZURE-IP-REUSE-SPACE
                     {
                        return false;
                     }
                  }
                  @allow_connect_p2p_overload
                  {
                     if source_protocol is CONNECTED and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 ALLOW-CONNECT-P2P
                     {
                        local_preference = 10;
                        return true;
                     }
                  }
                  @allow_connect_p2p
                  {
                     if source_protocol is CONNECTED and
                        prefix match prefix_list_v4 ALLOW-CONNECT-P2P
                     {
                        local_preference = 400;
                        return true;
                     }
                  }
                  @allow_exception_overload
                  {
                     if source_protocol is CONNECTED and
                     ext_community match ext_community_list COLOR_10293 and
                     prefix match prefix_list_v4 permit_connected_bgp_exceptions
                     {
                        local_preference = 10;
                        return true;
                     }
                  }
                  @allow_exception
                  {
                     if source_protocol is CONNECTED and
                        prefix match prefix_list_v4 permit_connected_bgp_exceptions
                     {
                        local_preference = 400;
                        return true;
                     }
                  }
                  @REJECT_default
                  {
                     if source_protocol is CONNECTED
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit CUST_DCFX_LEAK_COMM_OUT
               function CUST_DCFX_LEAK_COMM_OUT()
               {
                  @send_leaked_routes_overload
                  {
                     if community match community_list DCFX_LEAK_COMM and
                        ext_community match ext_community_list COLOR_10293
                     {
                        @OVERLOAD_KNOB
                              {
                                 ext_community add ext_community_list BGP_OVERLOAD;
                                 as_path prepend 8075 8075 8075;
            					 ext_community remove ext_community_list BGP_OVERLOAD;
                                 return true;
                              }
                     }
                  }
                  @send_leaked_routes
                  {
                     if community match community_list DCFX_LEAK_COMM
                     {
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
               }
      EOF
      code unit CUST_DEFAULT_OUT
               function CUST_DEFAULT_OUT()
               {
                     @OVERLOAD_KNOB
                     {
                        ext_community add ext_community_list BGP_OVERLOAD;
                        @pass_default_overload
                        {
                           if (source_protocol is STATIC or source_protocol is BGP) and
                              ext_community match ext_community_list COLOR_10293 and
                              prefix match prefix_list_v4 CUST-DEFAULT-OUT
                           {
                              community add community_list COMM_OVERLOAD;
                              as_path prepend 8075 8075 8075;
            				  ext_community remove ext_community_list BGP_OVERLOAD;
                              return true;
                           }
                        }
                     }
                     @pass_default
                     {
                        if (source_protocol is STATIC or
                           source_protocol is BGP) and
                           prefix match prefix_list_v4 CUST-DEFAULT-OUT
                        {
            			   as_path prepend 8075;
            			   ext_community remove ext_community_list BGP_OVERLOAD;
                           return true;
                        }
                     }
                     @REJECT
                     {
                        return false;
                     }
               }
      EOF
      code unit CUST_DEFAULT_OUT_FL
            
                     function CUST_DEFAULT_OUT_FL()
            
                     {
            
                           @OVERLOAD_KNOB
            
                           {
            
                              ext_community add ext_community_list BGP_OVERLOAD;
            
                              @pass_default_overload
            
                              {
            
                                 if (source_protocol is STATIC or source_protocol is BGP) and
            
                                    ext_community match ext_community_list COLOR_10293 and
            
                                    prefix match prefix_list_v4 CUST-DEFAULT-OUT
            
                                 {
            
                                    community add community_list COMM_OVERLOAD;
            
                                    as_path prepend 8075 8075 8075;
            
                                    ext_community remove ext_community_list BGP_OVERLOAD;
            
                                    return true;
            
                                 }
            
                              }
            
                           }
            
                           @pass_default
            
                           {
            
                              if (source_protocol is STATIC or
            
                                 source_protocol is BGP) and
            
                                 prefix match prefix_list_v4 CUST-DEFAULT-OUT
            
                              {
            
                                 ext_community remove ext_community_list BGP_OVERLOAD;
            
                                 return true;
            
                              }
            
                           }
            
                           @REJECT
            
                           {
            
                              return false;
            
                           }
            
                     }
            
      EOF
      code unit CUST_EBGP_AR_IN
               function CUST_EBGP_AR_IN() {
                  @ADD_ORIGIN_CODE
                  {
                     community add community_list COMM_ORIGIN_PROPERTY_AR;
                     return unknown;  # Move to next policy
                  }
               }
      EOF
      code unit CUST_FABRIC_IN
               function CUST_FABRIC_IN()
               {
                  @ADD_ORIGIN_CODE
                  {
                     community add community_list COMM_ORIGIN_PROPERTY_FABRIC;
                  }
                  @PERMIT_12076_SPECIFICS
                  {
                     if as_path match as_path_list AS12076 and
                        prefix match_covered prefix_list_v4 ER-LOOPBACKS
                     {
                        return unknown; # Move to next policy
                     }
                  }
                  @DENY_12076_PREFIXES
                  {
                     if as_path match as_path_list AS12076
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit CUST_FABRIC_IN_RWA
               function CUST_FABRIC_IN_RWA()
               {
                  @SET_DEFAULT_LP
                  {
                     local_preference = 500;
                  }
                  @SET_TAG
                  {
                  igp.tag = 9111;
                  }
                  @PERMIT_12076_SPECIFICS
                  {
                     if as_path match as_path_list AS12076 and
                        prefix match_covered prefix_list_v4 ER-LOOPBACKS
                     {
                        return unknown;   # Move to next policy
                     }
                  }
                  @ADD_ORIGIN_CODE
                  {
                  community add community_list COMM_ORIGIN_PROPERTY_FABRIC;
                  }
                  @DENY_12076_PREFIXES
                  {
                     if as_path match as_path_list AS12076
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit CUST_FABRIC_RNG_BGP_GROUP_EXPORT
            
                     function CUST_FABRIC_RNG_BGP_GROUP_EXPORT()
            
                     {
            
                        return SET_NEXT_HOP_SELF() ?? CUST_FABRIC_RNG_LEAK_COMM_OUT() ?? CUST_DEFAULT_OUT_FL() ?? true;
            
                     }
            
      EOF
      code unit CUST_FABRIC_RNG_BGP_GROUP_IMPORT
               function CUST_FABRIC_RNG_BGP_GROUP_IMPORT()
               {
                  return AZURE_IP_REUSE_SUBREGIONAL() ?? STD_CUST_EBGP_IN() ?? CUST_FABRIC_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
               }
      EOF
      code unit CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT
               function CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT()
               {
                  return SET_NEXT_HOP_SELF() ?? CUST_FABRIC_RNG_LEAK_COMM_OUT() ?? CUST_FABRIC_SWAN_LEAK_COMM_OUT() ?? EXPORT_LOOPBACK99_TO_FABRIC() ?? CUST_DEFAULT_OUT() ?? true;
               }
      EOF
      code unit CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT
               function CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT()
               {
                  return STD_CUST_EBGP_IN_FABRIC_RWA() ?? AZURE_IP_REUSE_SUBREGIONAL() ?? CUST_FABRIC_IN_RWA() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
               }
      EOF
      code unit CUST_FABRIC_RNG_LEAK_COMM_OUT
               function CUST_FABRIC_RNG_LEAK_COMM_OUT()
               {
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @send_leaked_routes_overload
                  {
                     if community match community_list COMM_FUNC_LEAK_FABRIC and
                        ext_community match ext_community_list COLOR_10293
                     {
                        community add community_list COMM_OVERLOAD;
            			as_path prepend 8075 8075 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @send_leaked_routes
                  {
                     if community match community_list COMM_FUNC_LEAK_FABRIC
                     {
            		    as_path prepend 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
               }
      EOF
      code unit CUST_FABRIC_SWAN_LEAK_COMM_OUT
               function CUST_FABRIC_SWAN_LEAK_COMM_OUT()
               {
                  @OVERLOAD_KNOB
                  {
                  ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @send_swan_leaked_routes_overload
                  {
                     if community match community_list SWAN_LEAK_COMMUNITY and
                        ext_community match ext_community_list COLOR_10293
                     {
                        community add community_list COMM_OVERLOAD;
            			as_path prepend 8075 8075 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @send_swan_leaked_routes
                  {
                     if community match community_list SWAN_LEAK_COMMUNITY
                     {
            		    as_path prepend 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
               }
      EOF
      code unit CUST_MGFX_BGP_GROUP_EXPORT
            
               function CUST_MGFX_BGP_GROUP_EXPORT()
            
               {
            
                  return GLOBAL_CUST_DEFAULT_OUT() ?? true;
            
               }
            
      EOF
      code unit CUST_MGFX_BGP_GROUP_IMPORT
               function CUST_MGFX_BGP_GROUP_IMPORT()
               {
                    return STD_CUST_EBGP_IN() ?? AZURE_IP_REUSE_SUBREGIONAL() ?? CUST_FABRIC_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
               }
      EOF
      code unit DENY_ALL
               function DENY_ALL()
               {
                  return false;
               }
      EOF
      code unit DENY_FROM_SWAN
               function DENY_FROM_SWAN()
               {
                  @DENY_DEFAULT
                  {
                     if prefix match prefix_list_v4 DENY-FROM-SWAN
                     {
                        return false;
                     }
                  }
                  @DENY_REUSE
                  {
                     if prefix match_covered prefix_list_v4 AZURE-IP-REUSE-SPACE
                     {
                        return false;
                     }
                  }
                  @DENY_REUSE_COMMUNITY
                  {
                     if community match community_list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY or
                        community match community_list AZURE_SUBREGIONAL_LOCALREGION
                     {
                        return false;
                     }
                  }
                  @DENY_LEAK
                  {
                     if community match community_list COMM_FUNC_LEAK_FABRIC
                     {
                        return false;
                     }
                  }
                  @DENY_8072
                  {
                     if as_path match as_path_list AS8072
                     {
                        return false;
                     }
                  }
                  @DENY_8075
                  {
                     if as_path match as_path_list CONTAINS-AS8075
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit DENY_SWAN
               function DENY_SWAN()
               {
                  @ASPATH_8074
                  {
                     if as_path match as_path_list FROM-AS8074
                     {
                        return false;
                     }
                  }
                  @TAG_8074
                  {
                     if igp.tag is 8074
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit DENY_TO_SWAN
               function DENY_TO_SWAN()
               {
                  @DENY_DEFAULT
                  {
                     if prefix match prefix_list_v4 DENY-TO-SWAN
                     {
                        return false;
                     }
                  }
                  @DENY_REUSE
                  {
                     if prefix match_covered prefix_list_v4 AZURE-IP-REUSE-SPACE
                     {
                        return false;
                     }
                  }
                  @DENY_REUSE_COMMUNITY
                  {
                     if community match community_list AZURE_SUBREGIONAL_CUSTOMER_COMMUNITY or 
            		    community match community_list AZURE_SUBREGIONAL_LOCALREGION
                     {
                        return false;
                     }
                  }
                  @DENY_LEAK
                  {
                     if community match community_list COMM_FUNC_LEAK_FABRIC
                     {
                        return false;
                     }
                  }
                  @DENY_8072
                  {
                     if as_path match as_path_list AS8072
                     {
                        return false;
                     }
                  }
                  @DENY_8075
                  {
                     if as_path match as_path_list FROM-AS8075
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit EWA_CLIENTS_IPV4_FAST_IN
      		function EWA_CLIENTS_IPV4_FAST_IN()
      		{ 
      			return SUBREGIONAL_ROUTING() ?? true; 
      		} 
      EOF
      code unit EWA_CLIENTS_IPV6_FAST_IN
      	function EWA_CLIENTS_IPV6_FAST_IN() 
      	{  
      		return SUBREGIONAL_ROUTING() ?? true; 
      	}
      EOF
      code unit EXPORT_LOOPBACK99_TO_FABRIC
               function EXPORT_LOOPBACK99_TO_FABRIC()
               {
                  if source_protocol is CONNECTED and prefix match prefix_list_v4 LOOPBACK99-V4
                  {
                     return true;
                  }
               }
      EOF
      code unit FABRIC_PREFIXES_FROM_SWAN
               function FABRIC_PREFIXES_FROM_SWAN()
               {
                  @SWAN-ACCEPT
                     {
                     igp.tag = 8074;
                     local_preference = 450;
                     return true;
                     }
                  @SET_LP_450
                     {
                     local_preference = 450;
                     return true;
                     }
                  @SET_TAG_8074
                     {
                     igp.tag = 8074;
                     return true;
                     }
               }
      EOF
      code unit FABRIC_PREFIXES_TO_SWAN
               function FABRIC_PREFIXES_TO_SWAN()
               {
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @AGGREGATES_OVERLOAD
                  {
                     if bgp.aggregate is true and igp.tag is 9119 and
                        ext_community match ext_community_list COLOR_10293
                     {
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return false;
                     }
                  }
                  @AGGREGATES
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119
                     {
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @OTHER_AGGREGATE_CONTRIBUTORS
                  {
                     if bgp.aggregate_contributor is true
                     {
                        return false;
                     }
                  }
                  @FABRIC_NON_AGGREGATES_OVERLOAD
                  {
                     if igp.tag is 9111 and
                        ext_community match ext_community_list COLOR_10293
                     {
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return false;
                     }
                  }
                  @FABRIC_NON_AGGREGATES
                  {
                     if igp.tag is 9111
                     {
                        ext_community remove ext_community_list BGP_OVERLOAD;		 
                        return true;
                     }
                  }
                  @REJECT
                  {
                     return false;
                  }
               }
      EOF
      code unit FILTER_ANCHOR_ACCEPT_V4
            
                   function FILTER_ANCHOR_ACCEPT_V4()
            
                   {
            
                       @DEFAULT_PHANTOM_ACCEPT
            
                       {
            
                           if PERMIT_DEFAULT_PHANTOM_V4()
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @ANCHOR_ACCEPT_V4
            
                       {
            
                           if community match community_list GLOBAL-SEND-TO-PEERS and 
            
                           as_path match as_path_list ASPATH-MICROSOFT and
            
                           prefix match_covered prefix_list_v4 GLOBAL-EGRESS-IP-SPACE
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @REJECT
            
                       {
            
                           return false;
            
                       }
            
                   }
            
      EOF
      code unit FILTER_ANCHOR_ACCEPT_V6
            
                   function FILTER_ANCHOR_ACCEPT_V6()
            
                   {
            
                       @DEFAULT_PHANTOM_ACCEPT
            
                       {
            
                           if PERMIT_DEFAULT_PHANTOM_V6()
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @ANCHOR_ACCEPT_V6
            
                       {
            
                           if community match community_list GLOBAL-SEND-TO-PEERS and 
            
                           as_path match as_path_list ASPATH-MICROSOFT and
            
                           prefix match_covered prefix_list_v6 IPV6-GLOBAL-EGRESS-SPACE
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @REJECT
            
                       {
            
                           return false;
            
                       }
            
                   }
            
      EOF
      code unit FROM_TRANSITEDGE_V4
               function FROM_TRANSITEDGE_V4()
               {
                  @implement_FROM_TRANSITEDGE_V4
            	  {
            	  if prefix match_covered prefix_list_v4 TRANSITEDGE_LOOPBACK-V4
                    {
            		        community add community_list COMM_FUNC_DONTADV_ALL;
                              return true; # Move to next policy
                    }
                    else
                    {
                      return false; # Reject rest all
                    }  
                  }
            	  }
      EOF
      code unit FROM_TRANSITEDGE_V6
               function FROM_TRANSITEDGE_V6()
               {
                  @implement_FROM_TRANSITEDGE_V6
            	  {
            	  if prefix match_covered prefix_list_v6 TRANSITEDGE_LOOPBACK-V6
                    {
            		        community add community_list COMM_FUNC_DONTADV_ALL;
                              return true; # Move to next policy
                    }
                    else
                    {
                      return false; # Reject rest all
                    }  
                  }
                }
      EOF
      code unit GLOBAL_CUST_DEFAULT_OUT
               function GLOBAL_CUST_DEFAULT_OUT()
               {
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @default_overload
                  {
                     if (source_protocol is BGP or
                        source_protocol is STATIC) and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 GLOBAL-CUST-DEFAULT-OUT
                     {
                        as_path prepend 8075 8075 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @default
                  {
                     if (source_protocol is BGP or
                        source_protocol is STATIC) and
                        prefix match prefix_list_v4 GLOBAL-CUST-DEFAULT-OUT
                     {
            			   ext_community remove ext_community_list BGP_OVERLOAD;
                           return true;
                     }
                  }
                  @REJECT
                  {
                     return false;
                  }
               }
      EOF
      code unit GLOBAL_EBGP_AR_EXPORT
               function GLOBAL_EBGP_AR_EXPORT()
               {
                  return ADVERTISE_OOB_SPECIFICS() ?? GLOBAL_CUST_DEFAULT_OUT() ?? true;
               }
      EOF
      code unit GLOBAL_EBGP_AR_IMPORT
               function GLOBAL_EBGP_AR_IMPORT()
               {
                  return STD_CUST_EBGP_IN() ?? CUST_EBGP_AR_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
               }
      EOF
      code unit IER_CLIENTS_ANCHOR_EXPORT_V4
            
                   function IER_CLIENTS_ANCHOR_EXPORT_V4()
            
                   {
            
                       return SET_OVERLOAD_LOCAL_PREF() ?? FILTER_ANCHOR_ACCEPT_V4() ?? true;
            
                   }
            
      EOF
      code unit IER_CLIENTS_ANCHOR_EXPORT_V6
            
                   function IER_CLIENTS_ANCHOR_EXPORT_V6()
            
                   {
            
                       return SET_OVERLOAD_LOCAL_PREF() ?? FILTER_ANCHOR_ACCEPT_V6() ?? true;
            
                   }
            
      EOF
      code unit IER_CLIENTS_IPV4_EXPORT
             function IER_CLIENTS_IPV4_EXPORT()
             {
               return SET_NEXT_HOP_SELF() ?? CONN_TO_BGP_RWA() ?? ITE_IBGP_V4() ?? SET_OVERLOAD_LOCAL_PREF() ?? true;
             }
      EOF
      code unit IER_CLIENTS_IPV4_IMPORT
               function IER_CLIENTS_IPV4_IMPORT()
               {
                  return SUBREGIONAL_ROUTING() ?? true;
               }
      EOF
      code unit IER_CLIENTS_IPV6_EXPORT
               function IER_CLIENTS_IPV6_EXPORT()
               {
                  return IPV6_SET_NEXT_HOP_SELF() ?? IPV6_TO_BGP_NATIVE_RWA() ?? ITE_IBGP_V6() ?? SET_OVERLOAD_LOCAL_PREF() ?? true;
               }
      EOF
      code unit IER_CLIENTS_IPV6_IMPORT
               function IER_CLIENTS_IPV6_IMPORT()
               {
                  return SUBREGIONAL_ROUTING() ?? true;
               }
      EOF
      code unit IPV6_CUST_FABRIC_RNG_BGP_GROUP_EXPORT
            
                     function IPV6_CUST_FABRIC_RNG_BGP_GROUP_EXPORT()
            
                     {
            
                        return IPV6_SET_NEXT_HOP_SELF() ?? CUST_FABRIC_RNG_LEAK_COMM_OUT() ?? IPV6_GLOBAL_CUST_DEFAULT_OUT_FL() ?? true;
            
                     }
            
      EOF
      code unit IPV6_CUST_FABRIC_RNG_BGP_GROUP_IMPORT
              function IPV6_CUST_FABRIC_RNG_BGP_GROUP_IMPORT()
              {
              return AZURE_IP_REUSE_SUBREGIONAL() ?? IPV6_STD_CUST_EBGP_IN() ?? CUST_FABRIC_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
              }
      EOF
      code unit IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT
              function IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_EXPORT()
              {
              return IPV6_SET_NEXT_HOP_SELF() ?? CUST_FABRIC_RNG_LEAK_COMM_OUT() ?? CUST_FABRIC_SWAN_LEAK_COMM_OUT() ?? IPV6_EXPORT_LOOPBACK99_TO_FABRIC() ?? IPV6_GLOBAL_CUST_DEFAULT_OUT() ?? true;
              }
      EOF
      code unit IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT
              function IPV6_CUST_FABRIC_RNG_BGP_GROUP_RWA_IMPORT()
              {
              return IPV6_STD_CUST_EBGP_IN_FABRIC_RWA() ?? AZURE_IP_REUSE_SUBREGIONAL() ?? CUST_FABRIC_IN_RWA() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
              }
      EOF
      code unit IPV6_CUST_MGFX_BGP_GROUP_EXPORT
            
             function IPV6_CUST_MGFX_BGP_GROUP_EXPORT()
            
             {
            
              return IPV6_GLOBAL_CUST_DEFAULT_OUT() ?? true ;
            
             }
            
      EOF
      code unit IPV6_CUST_MGFX_BGP_GROUP_IMPORT
              function IPV6_CUST_MGFX_BGP_GROUP_IMPORT()
              {
              return IPV6_STD_CUST_EBGP_IN() ?? AZURE_IP_REUSE_SUBREGIONAL() ?? CUST_FABRIC_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
              }
      EOF
      code unit IPV6_DENY_FROM_SWAN
               function IPV6_DENY_FROM_SWAN()
               {
                  @DENY_DEFAULT
                  {
                     if prefix match prefix_list_v6 IPV6-DENY-FROM-SWAN
                     {
                        return false;
                     }
                  }
                  @DENY_LEAK
                  {
                     if community match community_list COMM_FUNC_LEAK_FABRIC
                     {
                        return false;
                     }
                  }
                  @DENY_8072
                  {
                     if as_path match as_path_list AS8072
                     {
                        return false;
                     }
                  }
                  @DENY_8075
                  {
                     if as_path match as_path_list CONTAINS-AS8075
                     {
                        return false;
                     }
                  }
                  @IPV6_65_OR_LONGER
                  {
                     if prefix match prefix_list_v6 IPV6_65_OR_LONGER
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit IPV6_DENY_TO_SWAN
      function IPV6_DENY_TO_SWAN()
      {
         @DENY-DEFAULT
         {
            if prefix match prefix_list_v6 IPV6-DENY-FROM-SWAN
            {
               return false;
            }
         }
         @DENY_LEAK
         {
            if community match community_list COMM_FUNC_LEAK_FABRIC
            {
               return false;
            }
         }
         @DENY_8072
         {
            if as_path match as_path_list AS8072
            {
               return false;
            }
         }
         @DENY_8075
         {
            if as_path match as_path_list FROM-AS8075
            {
               return false;
            }
         }
         @IPV6_65_OR_LONGER
         {
            if prefix match prefix_list_v6 IPV6_65_OR_LONGER
            {
               return false;
            }
         }
      }
      EOF
      code unit IPV6_EXPORT_LOOPBACK99_TO_FABRIC
               function IPV6_EXPORT_LOOPBACK99_TO_FABRIC()
               {
                  if source_protocol is CONNECTED and
                     prefix match prefix_list_v6 LOOPBACK99-v6
                  {
                     return true;
                  }
               }
      EOF
      code unit IPV6_FABRIC_PREFIXES_TO_SWAN
      
               function IPV6_FABRIC_PREFIXES_TO_SWAN()
      
               {
      
                  @OVERLOAD_KNOB
      
                  {
      
                     ext_community add ext_community_list BGP_OVERLOAD;
      
                  }
      
                  @AGGREGATES_OVERLOAD
      
                  {
      
                     if bgp.aggregate is true and
      
                        igp.tag is 9119 and
      
                        ext_community match ext_community_list COLOR_10293
      
                     {
      
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
      
                        community add community_list COMM_LOCALREGION;
      
                        ext_community remove ext_community_list BGP_OVERLOAD;
      
                        return false;
      
                     }
      
                  }
      
                  @AGGREGATES
      
                  {
      
                     if bgp.aggregate is true and
      
                        igp.tag is 9119
      
                     {
      
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
      
                        community add community_list COMM_LOCALREGION;
      
                        ext_community remove ext_community_list BGP_OVERLOAD;
      
                        return true;
      
                     }
      
                  }
      
                  @OTHER_AGGREGATE_CONTRIBUTORS
      
                  {
      
                     if bgp.aggregate_contributor is true
      
                     {
      
                        return true;
      
                     }
      
                  }
      
                  @FABRIC_NON_AGGREGATES_OVERLOAD
      
                  {
      
                     if igp.tag is 9111 and
      
                        ext_community match ext_community_list COLOR_10293
      
                     {
      
                        ext_community remove ext_community_list BGP_OVERLOAD;
      
                        return false;
      
                     }
      
                  }
      
                  @FABRIC_NON_AGGREGATES
      
                  {
      
                     if igp.tag is 9111
      
                     {
      
                        ext_community remove ext_community_list BGP_OVERLOAD;
      
                        return true;
      
                     }
      
                  }
      
                  @REJECT
      
                  {
      
                     return false;
      
                  }
      
               }
      
      EOF
      code unit IPV6_GLOBAL_CUST_DEFAULT_OUT
               function IPV6_GLOBAL_CUST_DEFAULT_OUT()
               {
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @default_overload
                  {
                     if ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v6 GLOBAL-CUST-DEFAULT-OUT-V6
                     {
                        as_path prepend 8075 8075 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @default
                  {
                     if prefix match prefix_list_v6 GLOBAL-CUST-DEFAULT-OUT-V6
                     {
            		    as_path prepend 8075;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @REJECT
                  {
                     return false;
                  }
               }
      EOF
      code unit IPV6_GLOBAL_CUST_DEFAULT_OUT_FL
            
                     function IPV6_GLOBAL_CUST_DEFAULT_OUT_FL()
            
                     {
            
                        @OVERLOAD_KNOB
            
                        {
            
                           ext_community add ext_community_list BGP_OVERLOAD;
            
                        }
            
                        @default_overload
            
                        {
            
                           if ext_community match ext_community_list COLOR_10293 and
            
                              prefix match prefix_list_v6 GLOBAL-CUST-DEFAULT-OUT-V6
            
                           {
            
                              as_path prepend 8075 8075 8075;
            
                              ext_community remove ext_community_list BGP_OVERLOAD;
            
                              return true;
            
                           }
            
                        }
            
                        @default
            
                        {
            
                           if prefix match prefix_list_v6 GLOBAL-CUST-DEFAULT-OUT-V6
            
                           {
            
                              ext_community remove ext_community_list BGP_OVERLOAD;
            
                              return true;
            
                           }
            
                        }
            
                        @REJECT
            
                        {
            
                           return false;
            
                        }
            
                     }
            
      EOF
      code unit IPV6_GLOBAL_EBGP_AR_EXPORT
              function IPV6_GLOBAL_EBGP_AR_EXPORT()
              {
              return IPV6_SEND_DEFAULT_ONLY() ?? true;
              }
      EOF
      code unit IPV6_GLOBAL_EBGP_AR_IMPORT
              function IPV6_GLOBAL_EBGP_AR_IMPORT()
              {
              return IPV6_STD_CUST_EBGP_IN() ?? CUST_EBGP_AR_IN() ?? TRANSLATE_CUSTOMER_COMMS() ?? true;
              }
      EOF
      code unit IPV6_GLOBAL_EGRESS_SPACE_SPECIFICS
               function IPV6_GLOBAL_EGRESS_SPACE_SPECIFICS()
               {
                  @IPV6_GLOBAL_EGRESS_SPACE_SPECIFICS
                  {
                     if prefix match_covered prefix_list_v6 IPV6-GLOBAL-EGRESS-SPACE-SPECIFICS
                     {
                        return true;
                     }
                  }
                  @REJECT
                  {
                     return false;
                  }
               }
      EOF
      code unit IPV6_RWA_SWAN_EXPORT
           function IPV6_RWA_SWAN_EXPORT()
           {
           return IPV6_DENY_TO_SWAN() ?? IPV6_FABRIC_PREFIXES_TO_SWAN() ?? true;
           }
      EOF
      code unit IPV6_RWA_SWAN_IMPORT
              function IPV6_RWA_SWAN_IMPORT()
              {
              return IPV6_DENY_FROM_SWAN() ?? SWAN_LEAK() ?? FABRIC_PREFIXES_FROM_SWAN() ?? true ;
              }
      EOF
      code unit IPV6_SEND_DEFAULT_ONLY
               function IPV6_SEND_DEFAULT_ONLY()
               {
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @ipv6_send_default_overload
                  {
                     if ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v6 IPV6-SEND-DEFAULT-ONLY
                     {
                        med = 65000;
                        # next-hop self
                        set_next_hop_self();
                        return true;
                     }
                  }
                  @ipv6_send_default
                  {
                     if prefix match prefix_list_v6 IPV6-SEND-DEFAULT-ONLY
                     {
                        # next-hop self
                        set_next_hop_self();
                        return true;
                     }
                  }
                  @REJECT_REST
                  {
                     return false;
                  }
               }
      EOF
      code unit IPV6_SET_NEXT_HOP_SELF
               function IPV6_SET_NEXT_HOP_SELF()
               {
                  @match_color20
                  {
                     if source_protocol is BGP and
                        ext_community match ext_community_list COLOR_20
                     {  
                        set_next_hop_self();
                        return unknown; # Move to next policy
                     }
                  }
                  @match_color30
                  {
                     if source_protocol is BGP and
                             ext_community match ext_community_list COLOR_30
                     {
                        local_preference -= 1;
                        set_next_hop_self();
                        return unknown; # Move to next policy
                     }
                  }
                  @match_type
                  {
                     if source_protocol is BGP and
                        bgp.route_source is EBGP
                     {
                        set_next_hop_self();
                        return unknown; # Move to next policy
                     }
                  }
                  @match_comm
                  {
                     if source_protocol is BGP and
                        community match community_list COMM_ORIGIN_PROPERTY_AR
                     {
                        set_next_hop_self();
                        return unknown; # Move to next policy
                     }
                  }
               }
      EOF
      code unit IPV6_STD_CUST_EBGP_IN
               function IPV6_STD_CUST_EBGP_IN()
               {
                  @REJECT_LONG_AS
                  {
                     if as_path.length >= 75
                     {
                        return false;
                     }
                  }
                  @SET_DEFAULT_LP
                  {
                     local_preference = 400;
                  }
                  @CUST_DEPREF
                  {
                     if community match community_list COMM_CUST_DEPREF
                     {
                        local_preference = 390;
                     }
                  }
                  @CUST_OVERLOAD
                  {
                     if community match community_list COMM_OVERLOAD
                     {
                        local_preference = 10;
                     }
                  }
                  @REMOVE_NON_STD_COMM
                  {
                     community remove community_list COMM_NON_CUST;
                  }
                  @SET_ORIGIN_COMM
                  {
                     community add community_list COMM_ORIGIN_LOCATION;
                     community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                  }
                  @ALLOW_IPV6_ANYCAST
                  {
                     if prefix match_covered prefix_list_v6 IPV6-ANYCAST-IP-SPACE
                     {
                        community add community_list COMM_ROUTE_PUBLIC_ANYCAST;
                     }
                  }
                  @ALLOW_IPV6_MSFT_PRIVATE
                  {
                     if prefix match_covered prefix_list_v6 IPV6-MICROSOFT-PRIVATE-ROUTES
                     {
                        community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_IPV6_MSFT_PUBLIC
                  {
                     if prefix match_covered prefix_list_v6 IPV6-GLOBAL-EGRESS-SPACE
                     {
                        community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
                        return unknown; # Move to next policy
                     }
                  }
                  @REJECT_REST
                  {
                     return false;
                  }
               }
      EOF
      code unit IPV6_STD_CUST_EBGP_IN_FABRIC_RWA
            
                  function IPV6_STD_CUST_EBGP_IN_FABRIC_RWA()
            
                  {
            
                     @REJECT_LONG_AS
            
                     {
            
                        if as_path.length >= 75
            
                        {
            
                           return false;
            
                        }
            
                     }
            
                     @SET_DEFAULT_LP
            
                     {
            
                         local_preference = 500;
            
                     }
            
                     @CUST_DEPREF
            
                     {
            
                        if community match community_list COMM_CUST_DEPREF
            
                        {
            
                           local_preference = 390;
            
                        }
            
                     }
            
                     @CUST_OVERLOAD
            
                     {
            
                        if community match community_list COMM_OVERLOAD
            
                        {
            
                           local_preference = 10;
            
                        }
            
                     }
            
                     @REMOVE_NON_STD_COMM
            
                     {
            
                        community remove community_list COMM_NON_CUST;
            
                     }
            
                     @SET_ORIGIN_COMM
            
                     {
            
                        community add community_list COMM_ORIGIN_LOCATION;
            
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
            
                     }
            
                     @ALLOW_IPV6_ANYCAST
            
                     {
            
                        if prefix match_covered prefix_list_v6 IPV6-ANYCAST-IP-SPACE
            
                        {
            
                           community add community_list COMM_ROUTE_PUBLIC_ANYCAST;
            
                        }
            
                     }
            
                     @ALLOW_IPV6_MSFT_PRIVATE
            
                     {
            
                        if prefix match_covered prefix_list_v6 IPV6-MICROSOFT-PRIVATE-ROUTES
            
                        {
            
                            community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
            
                            return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @ALLOW_IPV6_MSFT_PUBLIC
            
                     {
            
                        if prefix match_covered prefix_list_v6 IPV6-GLOBAL-EGRESS-SPACE
            
                        {
            
                            community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            
                            return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @PERMIT-BYOIP
            
                     {
            
                        if  prefix match_covered prefix_list_v6 BYOIP-V6
            
                        {
            
                            local_preference = 425;
            
                            community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            
                            community add community_list COMM_FUNC_FABRIC_BYOIP;
            
                            return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @REJECT_REST
            
                     {
            
                        return false;
            
                     }
            
                  }
            
      EOF
      code unit IPV6_TO_BGP_NATIVE
               function IPV6_TO_BGP_NATIVE()
               {
                  @REJECT_LOOPBACK
                  {
                     if source_protocol is CONNECTED and
                        connected.interface is Loopback99 and
                        prefix match prefix_list_v6 LOOPBACK99-V6
                     {
                        return false;
                     }
                  }
                  @ALLOW_PUBLIC_PULLUPS
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 100 and
                        prefix match prefix_list_v6 ipv6_permit_static_bgp_anchor
                     {
                        local_preference = 400;
                        community add community_list ANCHOR;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_PRIVATE_PULLUPS
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 200 and
                        prefix match prefix_list_v6 ipv6_permit_static_bgp
                     {
                        local_preference = 400;
                        community add community_list LEAK_SPECIFICS;
                        return unknown; # Move to next policy
                     }
                  }
                  @CHECK_PRIVATE_SPECIFICS
                  {
                     if ( source_protocol is CONNECTED or
                            source_protocol is STATIC or
                            bgp.aggregate is true ) and
                            prefix match_covered prefix_list_v6 IPV6-MICROSOFT-PRIVATE-ROUTES
                     {
                            community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CORE;
                     }
                  }
                  @CHECK_PUBLIC_SPECIFICS
                  {
                     if ( source_protocol is CONNECTED or
                          source_protocol is STATIC or
                          bgp.aggregate is true ) and
                          IPV6_GLOBAL_EGRESS_SPACE_SPECIFICS()
                     {
                          community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CORE;
                     }
                  }
                  @ALLOW_CONNECTED
                  {
                     if source_protocol is CONNECTED and
                          prefix match prefix_list_v6 IPV6-ALLOW-CONNECTED-LENGTH-RANGE
                     {
                        local_preference = 400;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_STATIC_ROUTES
                  {
                     if ( source_protocol is STATIC or
                       bgp.aggregate is true ) and
                       prefix match prefix_list_v6 ipv6_permit_static_bgp
                     {
                       local_preference = 400;
                       set_next_hop_self();
                       return unknown; # Move to next policy
                     }
                 }
                 @ALLOW_GOOD_BGP
                 {
                    if source_protocol is BGP and
                       prefix match prefix_list_v6 IPV6-BGP-NATIVE-ALLOW-GOOD-BGP
                    {
                       return unknown; # Move to next policy
                    }
                 }
                 @REJECT_REST
                 {
                    return false;
                 }
               }
      EOF
      code unit IPV6_TO_BGP_NATIVE_RWA
               function IPV6_TO_BGP_NATIVE_RWA()
               {
                  @REJECT_LOOPBACK
                  {
                     if source_protocol is CONNECTED and
                        prefix match prefix_list_v6 LOOPBACK99-v6
                     {
                        return false;
                     }
                  }
                  @ALLOW_PUBLIC_PULLUPS
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 100 and
                        prefix match prefix_list_v6 ipv6_permit_static_bgp_anchor
                     {
                        local_preference = 400;
                        community add community_list ANCHOR;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_PRIVATE_PULLUPS
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 200 and
                        prefix match prefix_list_v6 ipv6_permit_static_bgp
                     {
                        local_preference = 400;
                        community add community_list LEAK_SPECIFICS;
                        return unknown; # Move to next policy
                     }
                  }
                  @CHECK_PRIVATE_SPECIFICS
                  {
                     if ( source_protocol is CONNECTED or
                            source_protocol is STATIC or
                            bgp.aggregate is true ) and
                            prefix match_covered prefix_list_v6 IPV6-MICROSOFT-PRIVATE-ROUTES
                     {
                            community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CORE;
                     }
                  }
                  @CHECK_PUBLIC_SPECIFICS
                  {
                     if ( source_protocol is CONNECTED or
                          source_protocol is STATIC or
                          bgp.aggregate is true ) and
                          IPV6_GLOBAL_EGRESS_SPACE_SPECIFICS()
                     {
                          community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CORE;
                     }
                  }
                  @ALLOW_CONNECTED
                  {
                     if source_protocol is CONNECTED and
                          prefix match prefix_list_v6 IPV6-ALLOW-CONNECTED-LENGTH-RANGE
                     {
                        local_preference = 400;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_STATIC_ROUTES
                  {
                     if ( source_protocol is STATIC or
                       bgp.aggregate is true ) and
                       prefix match prefix_list_v6 ipv6_permit_static_bgp
                     {
                       local_preference = 400;
                       set_next_hop_self();
                       return unknown; # Move to next policy
                     }
                 }
                  @FABRIC_AGGREGATES_PRIVATE
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119 and
                        prefix match_covered prefix_list_v6 IPV6-MICROSOFT-PRIVATE-ROUTES
                     {
                        local_preference = 400;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
            			community add community_list COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE;
                        return unknown; # Move to next policy
                     }
                  }
                  @FABRIC_AGGREGATES_PUBLIC
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119 and
                        prefix match_covered prefix_list_v6 IPV6-GLOBAL-EGRESS-SPACE
                     {
                        local_preference = 400;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            			community add community_list COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE;
                        return unknown; # Move to next policy
                     }
                  }
                  @OTHER_AGGREGATE_CONTRIBUTORS_FABRIC
                  {
                     if afi is IPv6 and 
                        bgp.aggregate_contributor is true and
                        igp.tag is 9111
                     {
                        local_preference = 400;
                        community add community_list AZURE_SUBREGIONAL_LOCALREGION;
                        return unknown; # Move to next policy
                     }
                  }
                  @FABRIC_NON_AGGREGATES
                  {
                     if igp.tag is 9111
                     {
                        local_preference = 400;
                        return unknown; # Move to next policy
                     }
            	  }
                     @ALLOW_GOOD_BGP
                     {
                        if source_protocol is BGP
                        {
                           return unknown; # Move to next policy
                        }
                     }
                     @REJECT_REST
                     {
                        return false;
                     }
                  }
      EOF
      code unit IRR_MESH_IPV4_EXPORT
               function IRR_MESH_IPV4_EXPORT()
               {
                  return DENY_SWAN() ?? SET_NEXT_HOP_SELF() ?? STATIC_TO_BGP_RWA() ?? CONN_TO_BGP_RWA() ?? SET_OVERLOAD_LOCAL_PREF() ?? true;
               }
      EOF
      code unit IRR_MESH_IPV4_IMPORT
               function IRR_MESH_IPV4_IMPORT()
               {
                  return SUBREGIONAL_ROUTING() ?? NEXTHOP_REWRITE_IPV4() ?? true;
               }
      EOF
      code unit IRR_MESH_IPV6_EXPORT
              function IRR_MESH_IPV6_EXPORT()
              {
              return DENY_SWAN() ?? IPV6_SET_NEXT_HOP_SELF() ?? IPV6_TO_BGP_NATIVE_RWA() ?? SET_OVERLOAD_LOCAL_PREF() ?? true;
              }
      EOF
      code unit IRR_MESH_IPV6_IMPORT
              function IRR_MESH_IPV6_IMPORT()
              {
              return SUBREGIONAL_ROUTING() ?? NEXTHOP_REWRITE_IPV6() ?? true;
              }
      EOF
      code unit ITE_IBGP_V4
             function ITE_IBGP_V4()
             {
               @PERMIT-ITE-BYOIP
               {
            	if community match community_list COMM_FUNC_ITE_BYOIP and
            	prefix match_covered prefix_list_v4 BYOIP-V4
            		{
            			return unknown;   # Move to next policy
            		}
            	}
            	@PERMIT-FABRIC-BYOIP
            	{
            		if as_path match as_path_list ASPATH-PRIVATE and
            		community match community_list COMM_FUNC_FABRIC_BYOIP and
            		prefix match_covered prefix_list_v4 BYOIP-V4
            		{
            			local_preference = 375;
            			return unknown;   # Move to next policy
            		}
            	}
            	@NEXT
            	{
            		return unknown;   # Move to next policy
            	}
            }
      EOF
      code unit ITE_IBGP_V6
             function ITE_IBGP_V6()
             {
               @PERMIT-ITE-BYOIP
               {
            	if community match community_list COMM_FUNC_ITE_BYOIP and
            	prefix match_covered prefix_list_v6 BYOIP-V6
            		{
            			return unknown;   # Move to next policy
            		}
            	}
            	@PERMIT-FABRIC-BYOIP
            	{
            		if as_path match as_path_list ASPATH-PRIVATE and
            		community match community_list COMM_FUNC_FABRIC_BYOIP and
            		prefix match_covered prefix_list_v6 BYOIP-V6
            		{
            			local_preference = 375;
            			return unknown;   # Move to next policy
            		}
            	}
            	@NEXT
            	{
            		return unknown;   # Move to next policy
            	}
            }
      EOF
      code unit NEXTHOP_REWRITE_IPV4
               function NEXTHOP_REWRITE_IPV4()
               {
                  @REWRITE_ANCHORS
                  {
                     if community match community_list COMM_ROUTE_PUBLIC_ANCHOR_CORE or
                        community match community_list COMM_ROUTE_PRIVATE_ANCHOR_CORE or
                        community match community_list COMM_DEFAULT_ROUTE_ANCHOR
                     {
                        next_hop = 207.46.32.255;
                        return unknown; # Move to next policy
                     }
                  }
                  @REWRITE_RTBH
                  {
                     if community match community_list COMM_ROUTE_RTBH
                     {
                        next_hop = 192.0.2.66;
                        return unknown; # Move to next policy
                     }
                  }
               }
      EOF
      code unit NEXTHOP_REWRITE_IPV6
               function NEXTHOP_REWRITE_IPV6()
               {
                  @REWRITE-ANCHORS
                  {
                     if community match community_list COMM_ROUTE_PUBLIC_ANCHOR_CORE or
                        community match community_list COMM_ROUTE_PRIVATE_ANCHOR_CORE or
                        community match community_list COMM_DEFAULT_ROUTE_ANCHOR
                     {
                        next_hop = 2001:506:28:9000:ffff:ffff:ffff:ffff;
                        return unknown; # Move to next policy
                     }
                  }
                  @REWRITE_RTBH
                  {
                     if community match community_list COMM_ROUTE_RTBH
                     {
                        next_hop = 100::6666:6666:6666:6666;
                        return unknown; # Move to next policy
                     }
                  }
               }
      EOF
      code unit PERMIT_DEFAULT_PHANTOM_V4
            
                   function PERMIT_DEFAULT_PHANTOM_V4()
            
                   {
            
                       @default_accept
            
                       {
            
                           if prefix is 0.0.0.0/0
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @phantom_accept
            
                       {
            
                           if prefix is 207.46.33.255/32
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @next_policy
            
                       {
            
                           return unknown;
            
                       }
            
                   }
            
      EOF
      code unit PERMIT_DEFAULT_PHANTOM_V6
            
                   function PERMIT_DEFAULT_PHANTOM_V6()
            
                   {
            
                       @default_accept
            
                       {
            
                           if prefix is ::/0
            
                               {
            
                               return true;
            
                               }
            
                       }
            
                       @phantom_accept
            
                       {
            
                           if prefix is 2001:506:28:9000:ffff:ffff:ffff:eeee/128
            
                           {
            
                               return true;
            
                           }
            
                       }
            
                       @next_policy
            
                       {
            
                           return unknown;
            
                       }
            
                   }
            
      EOF
      code unit RWA_SWAN_EXPORT
               function RWA_SWAN_EXPORT()
               {
                  return DENY_TO_SWAN() ?? FABRIC_PREFIXES_TO_SWAN() ?? true;
               }
      EOF
      code unit RWA_SWAN_IMPORT
               function RWA_SWAN_IMPORT()
               {
                  return DENY_FROM_SWAN() ?? SWAN_LEAK() ?? FABRIC_PREFIXES_FROM_SWAN() ?? true;
               }
      EOF
      code unit SET_NEXT_HOP_SELF
               function SET_NEXT_HOP_SELF()
               {
                  @match_color30
                  {
                     if source_protocol is BGP and
                        ext_community match ext_community_list COLOR_30
                     {
                        local_preference -= 1;
                        set_next_hop_self();
            			return unknown;   # Move to next policy
                     }
                  }
                  @match_type
                  {
                     if source_protocol is BGP and
                        bgp.route_source is EBGP
                     {
                        set_next_hop_self();
                        return unknown;   # Move to next policy
                     }
                  }
               }
      EOF
      code unit SET_OVERLOAD_LOCAL_PREF
      function SET_OVERLOAD_LOCAL_PREF()
      {@implement_overload
      {
      return unknown;
      }
      }
      EOF
      code unit STATIC_TO_BGP
               function STATIC_TO_BGP()
               {
                  @deny_disallowed
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        prefix match prefix_list_v4 deny_static_bgp
                     {
                        return false;
                     }
                  }
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                     @allow_intended_pullups_overload
                     {
                        if ( source_protocol is STATIC or
                           bgp.aggregate is true ) and
                           igp.tag is 100 and
                           ext_community match ext_community_list COLOR_10293 and
                           prefix match prefix_list_v4 permit_static_bgp_anchor
                        {
                           local_preference = 10;
                           community add community_list ANCHOR;
                           ext_community remove ext_community_list BGP_OVERLOAD;
                           return true;
                        }
                     }
                  }
                  @allow_intended_pullups
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 100 and
                        prefix match prefix_list_v4 permit_static_bgp_anchor
                     {
                        local_preference = 400;
                        community add community_list ANCHOR;
                        ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @aggregate_localpref_400
                  {
                     if bgp.aggregate is true and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 400;
                        ext_community remove ext_community_list BGP_OVERLOAD;
                     }
                  }
                  @allow_intended_specifics_overload
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 200 and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 10;
                        community add community_list LEAK_SPECIFICS;
                        ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_specifics
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 200 and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        community add community_list LEAK_SPECIFICS;
                        ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_rest_overload
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 10;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_rest
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 400;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @REJECT_default
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true )
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit STATIC_TO_BGP_RWA
               function STATIC_TO_BGP_RWA()
               {
                  @deny_disallowed
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        prefix match prefix_list_v4 deny_static_bgp
                     {
                        return false;
                     }
                  }
                  @OVERLOAD_KNOB
                  {
                     ext_community add ext_community_list BGP_OVERLOAD;
                  }
                  @allow_intended_pullups_overload
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 100 and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 permit_static_bgp_anchor
                     {
                        local_preference = 10;
                        community add community_list ANCHOR;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_pullups
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 100 and
                        prefix match prefix_list_v4 permit_static_bgp_anchor
                     {
                        local_preference = 400;
                        community add community_list ANCHOR;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @aggregate_localpref_400
                  {
                     if ( bgp.aggregate is true ) and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 400;
                        ext_community remove ext_community_list BGP_OVERLOAD;
                     }
                  }
                  @allow_intended_specifics_overload
                  {
                     if ( source_protocol is STATIC or
                       bgp.aggregate is true ) and
                       igp.tag is 200 and
                       ext_community match ext_community_list COLOR_10293 and
                       prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 10;
                        community add community_list LEAK_SPECIFICS;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_specifics
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        igp.tag is 200 and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        community add community_list LEAK_SPECIFICS;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_rest_overload
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 10;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @allow_intended_rest
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true ) and
                        prefix match prefix_list_v4 permit_static_bgp
                     {
                        local_preference = 400;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_AGGREGATES_PRIVATE_OVERLOAD
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119 and
                        ext_community match ext_community_list COLOR_10293 and
                        ( prefix match_covered prefix_list_v4 PRIVATE-IP-SPACE or
                        prefix match_covered prefix_list_v4 MICROSOFT-PRIVATE-ROUTES )
                     {
                        local_preference = 10;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
            			community add community_list COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_AGGREGATES_PRIVATE
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119 and
                        ( prefix match_covered prefix_list_v4 PRIVATE-IP-SPACE or
                        prefix match_covered prefix_list_v4 MICROSOFT-PRIVATE-ROUTES )
                     {
                        local_preference = 400;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
            			community add community_list COMM_ROUTE_PRIVATE_FABRIC_AGGREGATE;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_AGGREGATES_PUBLIC_OVERLOAD
                  {
                     if bgp.aggregate is true and
                        igp.tag is 9119 and
                        ext_community match ext_community_list COLOR_10293 and
                        prefix match_covered prefix_list_v4 GLOBAL-EGRESS-IP-SPACE
                     {
                        local_preference = 10;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            			community add community_list COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_AGGREGATES_PUBLIC
                  {   if bgp.aggregate is true and
                        igp.tag is 9119 and
                        prefix match_covered prefix_list_v4 GLOBAL-EGRESS-IP-SPACE
                     {
                        local_preference = 400;
                        community = community_list COMM_ORIGIN_PROPERTY_FABRIC;
                        community add community_list COMM_ORIGIN_LOCATION;
                        community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                        community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
                        community add community_list COMM_ROUTE_PUBLIC_FABRIC_AGGREGATE;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @OTHER_AGGREGATE_CONTRIBUTORS_FABRIC_OVERLOAD
                  {
                     if bgp.aggregate_contributor is true and
                        igp.tag is 9111 and
                        ext_community match ext_community_list COLOR_10293
                     {
                        local_preference = 10;
                        community add community_list AZURE_SUBREGIONAL_LOCALREGION;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @OTHER_AGGREGATE_CONTRIBUTORS_FABRIC
                  {
                     if bgp.aggregate_contributor is true and
                        igp.tag is 9111
                     {
                        local_preference = 400;
                        community add community_list AZURE_SUBREGIONAL_LOCALREGION;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_NON_AGGREGATES_OVERLOAD
                  {
                     if igp.tag is 9111 and
                        ext_community match ext_community_list COLOR_10293
                     {
                        local_preference = 10;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @FABRIC_NON_AGGREGATES
                  {
                     if igp.tag is 9111
                     {
                        local_preference = 400;
            			ext_community remove ext_community_list BGP_OVERLOAD;
                        return true;
                     }
                  }
                  @REJECT_default
                  {
                     if ( source_protocol is STATIC or
                        bgp.aggregate is true )
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit STD_CUST_EBGP_IN
               function STD_CUST_EBGP_IN()
               {
                  @REJECT_LONG_AS
                  {
                     if as_path.length >= 75
                     {
                        return false;
                     }
                  }
                  @SET_DEFAULT_LP
                  {
                     local_preference = 400;
                  }
                  @CUST_DEPREF
                  {
                     if community match community_list COMM_CUST_DEPREF
                     {
                        local_preference = 390;
                     }
                  }
                  @CUST_OVERLOAD
                  {
                     if community match community_list COMM_OVERLOAD
                     {
                        local_preference = 10;
                     }
                  }
                  @REMOVE_NON_STD_COMM
                  {
                     community remove community_list COMM_NON_CUST;
                  }
                  @SET_ORIGIN_COMM
                  {
                     community add community_list COMM_ORIGIN_LOCATION;
                     community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
                  }
                  @ALLOW_ANYCAST
                  {
                     if prefix match_covered prefix_list_v4 ANYCAST-IP-SPACE
                     {
                        community add community_list COMM_ROUTE_PUBLIC_ANYCAST;
                     }
                  }
                  @ALLOW_MSFT_PRIVATE
                  {
                     if prefix match_covered prefix_list_v4 PRIVATE-IP-SPACE or
                        prefix match_covered prefix_list_v4 MICROSOFT-PRIVATE-ROUTES
                     {
                        community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
                        return unknown; # Move to next policy
                     }
                  }
                  @ALLOW_MSFT_PUBLIC
                  {
                     if prefix match_covered prefix_list_v4 GLOBAL-EGRESS-IP-SPACE
                     {
                        community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
                        return unknown; # Move to next policy
                     }
                  }
                  @REJECT_REST
                  {
                     return false;
                  }
               }
      EOF
      code unit STD_CUST_EBGP_IN_FABRIC_RWA
            
                  function STD_CUST_EBGP_IN_FABRIC_RWA()
            
                  {
            
                     @REJECT_LONG_AS
            
                     {
            
                        if as_path.length >= 75
            
                        {
            
                           return false;
            
                        }
            
                     }
            
                     @SET_DEFAULT_LP
            
                     {
            
                           local_preference = 500;
            
                     }
            
                     @CUST_DEPREF
            
                     {
            
                        if community match community_list COMM_CUST_DEPREF
            
                        {
            
                           local_preference = 390;
            
                        }
            
                     }
            
                     @CUST_OVERLOAD
            
                     {
            
                        if community match community_list COMM_OVERLOAD
            
                        {
            
                           local_preference = 10;
            
                        }
            
                     }
            
                     @REMOVE_NON_STD_COMM
            
                     {
            
                           community remove community_list COMM_NON_CUST;
            
                     }
            
                     @SET_ORIGIN_COMM
            
                     {
            
                           community add community_list COMM_ORIGIN_LOCATION;
            
                           community add community_list GLOBAL-EXT-CUSTOMER-COMMUNITY;
            
                     }
            
                     @ALLOW_ANYCAST
            
                     {
            
                        if prefix match_covered prefix_list_v4 ANYCAST-IP-SPACE
            
                        {
            
                           community add community_list COMM_ROUTE_PUBLIC_ANYCAST;
            
                        }
            
                     }
            
                     @ALLOW_MSFT_PRIVATE
            
                     {
            
                        if prefix match_covered prefix_list_v4 PRIVATE-IP-SPACE or
            
                           prefix match_covered prefix_list_v4 MICROSOFT-PRIVATE-ROUTES
            
                        {
            
                           community add community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
            
                           return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @ALLOW_MSFT_PUBLIC
            
                     {
            
                        if prefix match_covered prefix_list_v4 GLOBAL-EGRESS-IP-SPACE
            
                        {
            
                           community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            
                           return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @PERMIT-BYOIP
            
                     {
            
                        if  prefix match_covered prefix_list_v4 BYOIP-V4
            
                        {
            
                           local_preference = 425;
            
                           community add community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
            
                           community add community_list COMM_FUNC_FABRIC_BYOIP;
            
                           return unknown; # Move to next policy
            
                        }
            
                     }
            
                     @REJECT_REST
            
                     {
            
                     return false;
            
                     }
            
                  }
            
      EOF
      code unit SUBREGIONAL_ROUTING
               function SUBREGIONAL_ROUTING()
               {
                  @accept_routes_mysubregions
                  {
                     if community match community_list SUBREGIONAL-MYSUBREGIONS
                     {
                        return unknown; # Move to next policy
                     }
                  }
                  @DENY_AZURE_REUSE_BLOCKS
                  {
                     if prefix match_covered prefix_list_v4 AZURE-IP-REUSE-SPACE
                     {
                        return false;
                     }
                  }
                  @DENY_OTHER_SUBREGIONS
                  {
                     if community match community_list SUBREGIONAL-ROUTING
                     {
                        return false;
                     }
                  }
               }
      EOF
      code unit SWAN_LEAK
               function SWAN_LEAK()
               {
                  @ALLOW_SWAN_LEAK
                  {
                     if community match community_list SWAN_LEAK_COMMUNITY
                     {
                        igp.tag = 8074;
                        local_preference = 450;
                        return true;
                     }
                  }
               }
      EOF
      code unit TO_TRANSITEDGE_V4
               function TO_TRANSITEDGE_V4()
               {
                @implement_TO_TRANSITEDGE_V4
                 {
                    if prefix match_covered prefix_list_v4 TRANSITEDGE_PREFIXES-V4
                    {
                       return true; # Move to next policy
                    }
                    else
                    {
                      return false; # Reject rest all
                    }
                   }
                 }      
      EOF
      code unit TO_TRANSITEDGE_V6
               function TO_TRANSITEDGE_V6()
               {
            @implement_TO_TRANSITEDGE_V6
            {
                  if prefix match_covered prefix_list_v6 TRANSITEDGE_PREFIXES-V6
                    {
                       return true; # Move to next policy
                    }
                    else
                    {
                      return false; # Reject rest all
                    }
                  }
                 }
      EOF
      code unit TRANSITEDGE_V4_EXPORT
               function TRANSITEDGE_V4_EXPORT()
               {
                  return SET_OVERLOAD_LOCAL_PREF()?? TO_TRANSITEDGE_V4()?? true;
               }
      EOF
      code unit TRANSITEDGE_V4_IMPORT
               function TRANSITEDGE_V4_IMPORT()
               {
                  return SET_OVERLOAD_LOCAL_PREF()?? FROM_TRANSITEDGE_V4()?? true;
               }
      EOF
      code unit TRANSITEDGE_V6_EXPORT
               function TRANSITEDGE_V6_EXPORT()
               {
                  return SET_OVERLOAD_LOCAL_PREF()?? DENY_ALL()?? true;
               }
      EOF
      code unit TRANSITEDGE_V6_IMPORT
               function TRANSITEDGE_V6_IMPORT()
               {
                  return SET_OVERLOAD_LOCAL_PREF()?? DENY_ALL()?? true;
               } 
      EOF
      code unit TRANSLATE_CUSTOMER_COMMS
               function TRANSLATE_CUSTOMER_COMMS()
               {
            	  @BLOCK_EDGEZONE_VIP
                  {
                     if community match community_list COMM_CUST_NO_ACCEPT
                        {
                           return false;
                        }
                  }
                  @TRANSLATE_CUST_PUBLIC_ANCHOR
                  {
                     if community match community_list COMM_CUST_PUBLIC_ANCHOR
                     {
                        community remove community_list COMM_CUST_PUBLIC_ANCHOR;
                        community remove community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
                        community add community_list COMM_ROUTE_PUBLIC_ANCHOR_CUST;
                        community add community_list GLOBAL-SEND-TO-PEERS;
                     }
                  }
                  @TRANSLATE_CUST_PUBLIC_ANYCAST
                  {
                     if community match community_list COMM_CUST_PUBLIC_ANYCAST
                     {
                        community remove community_list COMM_CUST_PUBLIC_ANYCAST;
                        community remove community_list COMM_ROUTE_PUBLIC_SPECIFIC_CUST;
                        community add community_list COMM_ROUTE_PUBLIC_ANCHOR_CUST;
                        community add community_list COMM_ROUTE_PUBLIC_ANYCAST;
                        community add community_list GLOBAL-SEND-TO-PEERS;
                     }
                  }
                  @TRANSLATE_CUST-PRIVATE_ANCHOR
                  {
                     if community match community_list COMM_CUST_PRIVATE_ANCHOR
                     {
                        community remove community_list COMM_CUST_PRIVATE_ANCHOR;
                        community remove community_list COMM_ROUTE_PRIVATE_SPECIFIC_CUST;
                        community add community_list COMM_ROUTE_PRIVATE_ANCHOR_CUST;
                        community add community_list GLOBAL-NO-ADV-TO-PEERS;
                        community add community_list GLOBAL-SEND-TO-CUSTOMERS;
                     }
                  }
                  @TRANSLATE_CUST_DONTADV_ALL
                  {
                     if community match community_list COMM_CUST_DONTADV_ALL
                     {
                        community remove community_list COMM_CUST_DONTADV_ALL;
                        community add community_list COMM_FUNC_DONTADV_ALL;
                     }
                  }
                  @TRANSLATE_CUST_NOPEER_ALL
                  {
                     if community match community_list COMM_CUST_NOPEERS_ALL or
                        community match community_list COMM_NOPEER
                     {
                        community remove community_list COMM_CUST_NOPEERS_ALL;
                        community add community_list GLOBAL-NO-ADV-TO-PEERS;
                        community add community_list COMM_FUNC_NOPEERS_ALL;
                     }
                  }
                  @TRANSLATE_CUST_NO_EXPORT
                  {
                     if community match community_list COMM_CUST_NO_EXPORT
                     {
                        community remove community_list COMM_CUST_NO_EXPORT;
                        community add community_list COMM_NO_EXPORT;
                     }
                  }
                  @TRANSLATE_CUST_NO_ADVERTISE
                  {
                     if community match community_list COMM_CUST_NO_ADVERTISE
                     {
                        community remove community_list COMM_CUST_NO_ADVERTISE;
                        community add community_list COMM_NO_ADVERTISE;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_AR
                  {
                     if community match community_list COMM_CUST_LEAK_AR
                     {
                        community remove community_list COMM_CUST_LEAK_AR;
                        community add community_list COMM_FUNC_LEAK_AR;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_FABRIC
                  {
                     if community match community_list COMM_CUST_LEAK_FABRIC
                     {
                        community remove community_list COMM_CUST_LEAK_FABRIC;
                        community add community_list COMM_FUNC_LEAK_FABRIC;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_SEARCH
                  {
                     if community match community_list COMM_CUST_LEAK_SRCH
                     {
                        community remove community_list COMM_CUST_LEAK_SRCH;
                        community add community_list COMM_FUNC_LEAK_SRCH;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_CIS
                  {
                     if community match community_list COMM_CUST_LEAK_CIS
                     {
                        community remove community_list COMM_CUST_LEAK_CIS;
                        community add community_list COMM_FUNC_LEAK_CIS;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_XCG
                  {
                     if community match community_list COMM_CUST_LEAK_XCG
                     {
                        community remove community_list COMM_CUST_LEAK_XCG;
                        community add community_list COMM_FUNC_LEAK_XCG;
                     }
                  }
                  @TRANSLATE_CUST_LEAK_XCGD
                  {
                     if community match community_list COMM_CUST_LEAK_XCGD
                     {
                        community remove community_list COMM_CUST_LEAK_XCGD;
                        community add community_list COMM_FUNC_LEAK_XCGD;
                     }
                  }
            	 @CUST_RTBH
                 {
                    if community match community_list COMM_ROUTE_RTBH
                    {
                       community add community_list COMM_NO_EXPORT;
                       @CUST_RTBH_V4
                       {
                          if afi is IPv4
                          {
                             next_hop = 192.0.2.66;
                          }
                       }
                       @CUST_RTBH_V6
                       {
                          if afi is IPv6
                          {
                             next_hop = 100::6666:6666:6666:6666;
                          }
                       }
                    }
                 }
                 @CUST_DEPREF
                 {
                    if community match community_list COMM_CUST_DEPREF
                    {
                       local_preference = 390;
                    }
                 }
            }
      EOF
      code unit V4_ROUTE
               function V4_ROUTE()
               {
                  return prefix match prefix_list_v4 V4_ANY;
               }
      EOF
      code unit V6_ROUTE
               function V6_ROUTE()
               {
                  return prefix match prefix_list_v6 V6_ANY;
               }
      EOF
   !
   segment-routing
   rib fib fec ecmp ordered
   route forwarding label explicit-null tunnel af-mismatch
   software forwarding hardware offload mtu 9000
   !
   vrf tms-bypass-l3vrf
      leak routes source-vrf default subscribe-policy LEAK-INTO-TMS-BYPASS-L3VRF
   !
   vrf tms-l3vrf
      leak routes source-vrf default subscribe-policy LEAK-INTO-TMS-L3VRF
!
router traffic-engineering
   rsvp
      local-interface Loopback0
      optimization interval 900 seconds
      cspf ecmp tie-break random
      !
      path AFRICA dynamic
         administrative-group include any 1-2,7
      !
      path AFRICA_TRANSARABIA dynamic
         administrative-group include any 1-2,7,9
      !
      path AFRICA_TRANSARABIA_TRANSPACIFIC_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4-5,7,9
      !
      path AFRICA_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4,7
      !
      path AFRICA_TRANSATLANTIC_US-LATAM dynamic
         administrative-group include any 1-2,4,6-7
      !
      path CORE dynamic
         administrative-group include any 1-2
      !
      path NON-TE dynamic
         administrative-group include any 11
      !
      path OCEANIA_TRANSPACIFIC dynamic
         administrative-group include any 1-2,5,8
      !
      path OCEANIA_TRANSPACIFIC_US-LATAM dynamic
         administrative-group include any 1-2,5-6,8
      !
      path TRANSARABIA dynamic
         administrative-group include any 1-2,9
      !
      path TRANSARABIA_OCEANIA_AFRICA_TRANSPACIFIC_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4-5,7-9
      !
      path TRANSARABIA_OCEANIA_TRANSPACIFIC_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4-5,8-9
      !
      path TRANSARABIA_TRANSATLANTIC_TRANSPACIFIC_US-LATAM dynamic
         administrative-group include any 1-2,4-6,9
      !
      path TRANSARABIA_TRANSATLANTIC_US-LATAM dynamic
         administrative-group include any 1-2,4,6,9
      !
      path TRANSARABIA_TRANSPACIFIC_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4-5,9
      !
      path TRANSATLANTIC dynamic
         administrative-group include any 1-2,4
      !
      path US-LATAM dynamic
         administrative-group include any 1-2,6
      !
      path US-LATAM_TRANSATLANTIC dynamic
         administrative-group include any 1-2,4,6
      !
      tunnel TU.rwa02.str15.rwa01.str05.01
         destination ip 10.3.159.14
         metric 1500
         path CORE
         bandwidth auto min 64.00 kbps max 100.00 gbps sensitivity dynamic
         priority setup 0 hold 3
         tunneling ldp
         igp shortcut
         split-tunnel min 5.00 mbps max 5.00 gbps sub-tunnels limit 20 reduction-delay 24 hours
         no shutdown
      !
      tunnel TU.rwa02.str15.rwa01.str15.01
         destination ip 10.3.159.130
         alias endpoint 2a01:111:e210:1:10:3:159:130
         path CORE
         bandwidth auto min 64.00 kbps max 100.00 gbps sensitivity dynamic
         priority setup 3 hold 3
         tunneling ldp
         igp shortcut
         split-tunnel min 5.00 mbps max 5.00 gbps sub-tunnels limit 20 reduction-delay 24 hours
         no shutdown
   router-id ipv4 10.3.159.175
   router-id ipv6 2a01:111:e210:1:10:3:159:175
!
router isis 1
   net 49.0001.0100.0315.9175.00
   router-id ipv4 10.3.159.175
   is-type level-2
   log-adjacency-changes
   max-lsp-lifetime 65535
   set-overload-bit on-startup 1200
   spf-interval 2 100 200
   timers lsp out-delay 100
   authentication mode md5
   authentication key 7 $PASS$ level-2
   !
   address-family ipv4 unicast
      maximum-paths 16
   !
   address-family ipv6 unicast
      maximum-paths 16
      igp shortcut
   !
   segment-routing mpls
      router-id 10.3.159.175
      no shutdown
      adjacency-segment sid reuse timeout 900
   !
   traffic-engineering
      no shutdown
      is-type level-2
!
router kernel
   address-family ipv4
      software forwarding hardware offload route local interface Loopback99
      software forwarding hardware offload route lookup bgp
   !
   address-family ipv6
      software forwarding hardware offload route local interface Loopback99
      software forwarding hardware offload route lookup bgp
!
router multicast
   ipv4
      software-forwarding kernel
   !
   ipv6
      software-forwarding kernel
!
mpls rsvp
   refresh interval 180
   hello interval 3 multiplier 4
   authentication type md5
   authentication sequence-number window 8
   authentication index 1 password 7 $PASS$
   authentication index 1 active
   fast-reroute mode link-protection
   srlg strict
   label local-termination explicit-null
   preemption method hard
!
ip tacacs source-interface Management0
!
traffic-policies
   field-set ipv4 prefix APCA-SERVERS
      10.78.117.67/32
      except 10.173.156.12/32
   !
   field-set ipv4 prefix ITE-SRC-DST-SCAVENGER-DST
      192.0.0.9/32
   !
   field-set ipv4 prefix ITE-SRC-DST-SCAVENGER-SRC
      192.0.0.8/32
   !
   field-set ipv4 prefix SWAN-SVCS
      10.15.221.124/31 10.20.49.27/32 10.20.49.28/32 10.20.51.187/32 10.20.51.188/31 10.20.52.75/32 10.20.52.76/31 10.20.52.157/32 10.20.52.173/32 10.20.52.189/32 10.20.53.75/32 10.53.45.213/32 10.53.45.214/31 10.53.46.66/31 10.53.46.68/32 10.53.62.199/32 10.53.62.202/32 10.53.62.205/32 10.186.242.94/31 10.186.242.96/32 25.65.108.12/32 25.65.112.120/32 25.65.112.125/32 25.65.112.134/32 25.65.112.135/32 25.65.112.142/32 25.65.112.148/32 25.66.141.194/32 25.66.141.196/31 25.66.161.162/32 25.66.161.169/32 25.66.161.172/32 25.66.185.160/27 25.66.185.193/32 25.66.185.196/32 25.66.185.253/32 25.66.189.211/32 25.66.189.215/32 25.66.189.218/32 25.66.199.162/32 25.66.199.164/32 25.66.199.166/32 25.66.211.225/32 25.66.211.226/32 25.66.211.252/32 25.66.251.193/32 25.66.251.194/32 25.88.3.12/32 25.88.3.71/32 25.88.8.1/32 25.88.8.7/32 25.88.23.163/32 25.88.23.165/32 25.88.23.169/32 25.88.49.19/32 25.88.49.20/31 25.88.71.107/32 25.88.71.109/32 25.88.98.1/32 25.88.98.3/32 25.88.98.4/32 25.88.98.36/32 25.88.98.48/31 25.95.172.186/31 25.95.212.3/32 25.95.212.4/31 25.102.155.167/32 25.102.155.178/32 25.102.155.180/32 25.102.155.160/27 25.102.179.16/32 25.102.179.22/32 25.122.8.2/32 100.88.4.16/30 100.88.4.112/30 100.88.4.176/30 100.88.4.192/30 100.88.4.208/30 100.88.4.240/30 100.88.5.16/30 100.88.5.48/30 100.88.5.80/30 100.88.5.112/30 100.88.5.160/30 100.88.5.160/28 100.88.6.0/30 100.88.6.0/28 100.88.6.32/30 100.88.6.64/30 100.88.6.80/30 100.88.6.112/30 100.88.6.144/30 100.88.6.176/30 100.88.6.192/30 100.88.7.0/30 100.88.7.32/30 100.88.7.64/30 100.88.7.96/30 100.88.7.128/31 100.88.7.144/30 100.88.7.176/30 100.88.7.208/30
   update interface hitless strict
   !
   traffic-policy CONVERGED_SCAVENGER_RWA
      match ITE-SRC-DST-SCAVENGER ipv4
         source prefix field-set ITE-SRC-DST-SCAVENGER-SRC
         destination prefix field-set ITE-SRC-DST-SCAVENGER-DST
         !
         actions
            count
            set dscp 8
            set traffic class 1
      !
      match ipv4-all-default ipv4
      !
      match ipv6-all-default ipv6
   !
   traffic-policy ROUTER-PROTECT
      match APCA ipv4
         source prefix field-set APCA-SERVERS
         protocol tcp source port https destination port all
      !
      match BFDv6 ipv6
         protocol udp source port sbfd destination port sbfd-initiator
         protocol udp source port all destination port bfd multihop-bfd
         !
         actions
            count
      !
      match TRACEROUTE ipv4
         protocol udp source port all destination port 33434-33523
         !
         actions
            count
      !
      match TRACEROUTEV6 ipv6
         protocol udp source port all destination port 33434-33523
         !
         actions
            count
      !
      match ipv4-all-default ipv4
      !
      match ipv6-all-default ipv6
!
management ssh
   ip access-group test vrf MGMT in
   ip access-group test in
   idle-timeout 600
   authentication mode password
!
end

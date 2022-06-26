#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo "Start Update"
# update
cd /usr/bin

wget -O add-host "https://raw.githubusercontent.com/lesta-1/sc/main/add-host.sh"
wget -O about "https://raw.githubusercontent.com/lesta-1/sc/main/about.sh"
wget -O usernew "https://raw.githubusercontent.com/lesta-1/sc/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/lesta-1/sc/main/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/lesta-1/sc/main/hapus.sh"
wget -O member "https://raw.githubusercontent.com/lesta-1/sc/main/member.sh"
wget -O delete "https://raw.githubusercontent.com/lesta-1/sc/main/delete.sh"
wget -O cek "https://raw.githubusercontent.com/lesta-1/sc/main/cek.sh"
wget -O restart "https://raw.githubusercontent.com/lesta-1/sc/main/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/lesta-1/sc/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/lesta-1/sc/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/lesta-1/sc/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/lesta-1/sc/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/lesta-1/sc/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/lesta-1/sc/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/lesta-1/sc/main/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/lesta-1/sc/main/clear-log.sh"
wget -O change-port "https://raw.githubusercontent.com/lesta-1/sc/main/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/lesta-1/sc/main/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/lesta-1/sc/main/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/lesta-1/sc/main/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/lesta-1/sc/main/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/lesta-1/sc/main/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/lesta-1/sc/main/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/lesta-1/sc/main/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/lesta-1/sc/main/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/lesta-1/sc/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/lesta-1/sc/main/xp.sh"
wget -O swap "https://raw.githubusercontent.com/lesta-1/sc/main/swapkvm.sh"
wget -O bbr "https://raw.githubusercontent.com/lesta-1/sc/main/update/bbr.sh"
wget -O bannerku "https://raw.githubusercontent.com/lesta-1/sc/main/bannerku"
wget -O /usr/bin/user-limit https://raw.githubusercontent.com/lesta-1/sc/main/user-limit.sh && chmod +x /usr/bin/user-limit
wget -O cfd "https://raw.githubusercontent.com/lesta-1/sc/main/cfd.sh"
wget -O cff "https://raw.githubusercontent.com/lesta-1/sc/main/cff.sh"
wget -O cfh "https://raw.githubusercontent.com/lesta-1/sc/main/cfh.sh"
wget -O autoreboot "https://raw.githubusercontent.com/lesta-1/sc/main/autoreboot.sh"
chmod +x add-host
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x ram
chmod +x renew
chmod +x about
chmod +x autokill
chmod +x ceklim
chmod +x tendang
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-tr
chmod +x port-sstp
chmod +x port-squid
chmod +x port-ws
chmod +x wbmn
chmod +x xp
chmod +x swap
chmod +x menu
chmod +x l2tp
chmod +x ssh
chmod +x bbr
chmod +x bannerku
chmod +x cfd
chmod +x cff
chmod +x cfh
chmod +x autoreboot
wget -O /usr/bin/ssr https://https://raw.githubusercontent.com/lesta-1/sc/main/ssrmu.sh && chmod +x /usr/bin/ssr
wget -O /usr/bin/add-ssr https://https://raw.githubusercontent.com/lesta-1/sc/main/add-ssr.sh && chmod +x /usr/bin/add-ssr
wget -O /usr/bin/del-ssr https://https://raw.githubusercontent.com/lesta-1/sc/main/del-ssr.sh && chmod +x /usr/bin/del-ssr
wget -O /usr/bin/renew-ssr https://https://raw.githubusercontent.com/lesta-1/sc/main/renew-ssr.sh && chmod +x /usr/bin/renew-ssr
wget -O /usr/bin/add-sstp https://https://raw.githubusercontent.com/lesta-1/sc/main/add-sstp.sh && chmod +x /usr/bin/add-sstp
wget -O /usr/bin/del-sstp https://https://raw.githubusercontent.com/lesta-1/sc/main/del-sstp.sh && chmod +x /usr/bin/del-sstp
wget -O /usr/bin/cek-sstp https://https://raw.githubusercontent.com/lesta-1/sc/main/cek-sstp.sh && chmod +x /usr/bin/cek-sstp
wget -O /usr/bin/renew-sstp https://https://raw.githubusercontent.com/lesta-1/sc/main/renew-sstp.sh && chmod +x /usr/bin/renew-sstp
wget -O add-wg "https://raw.githubusercontent.com/lesta-1/sc/main/add-wg.sh"
wget -O del-wg "https://raw.githubusercontent.com/lesta-1/sc/main/del-wg.sh"
wget -O cek-wg "https://raw.githubusercontent.com/lesta-1/sc/main/cek-wg.sh"
wget -O renew-wg "https://raw.githubusercontent.com/lesta-1/sc/main/renew-wg.sh"
chmod +x add-wg
chmod +x del-wg
chmod +x cek-wg
chmod +x renew-wg
wget -O add-ss "https://raw.githubusercontent.com/lesta-1/sc/main/add-ss.sh"
wget -O del-ss "https://raw.githubusercontent.com/lesta-1/sc/main/del-ss.sh"
wget -O cek-ss "https://raw.githubusercontent.com/lesta-1/sc/main/cek-ss.sh"
wget -O renew-ss "https://raw.githubusercontent.com/lesta-1/sc/main/renew-ss.sh"
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x renew-ss
wget -O add-ws "https://raw.githubusercontent.com/lesta-1/sc/main/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/lesta-1/sc/main/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/lesta-1/sc/main/add-tr.sh"
wget -O del-ws "https://raw.githubusercontent.com/lesta-1/sc/main/del-ws.sh"
wget -O del-vless "https://raw.githubusercontent.com/lesta-1/sc/main/del-vless.sh"
wget -O del-tr "https://raw.githubusercontent.com/lesta-1/sc/main/del-tr.sh"
wget -O cek-ws "https://raw.githubusercontent.com/lesta-1/sc/main/cek-ws.sh"
wget -O cek-vless "https://raw.githubusercontent.com/lesta-1/sc/main/cek-vless.sh"
wget -O cek-tr "https://raw.githubusercontent.com/lesta-1/sc/main/cek-tr.sh"
wget -O renew-ws "https://raw.githubusercontent.com/lesta-1/sc/main/renew-ws.sh"
wget -O renew-vless "https://raw.githubusercontent.com/lesta-1/sc/main/renew-vless.sh"
wget -O renew-tr "https://raw.githubusercontent.com/lesta-1/sc/main/renew-tr.sh"
wget -O certv2ray "https://raw.githubusercontent.com/lesta-1/sc/main/cert.sh"
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x certv2ray
wget -O /usr/bin/add-l2tp https://https://raw.githubusercontent.com/lesta-1/sc/main/add-l2tp.sh && chmod +x /usr/bin/add-l2tp
wget -O /usr/bin/del-l2tp https://https://raw.githubusercontent.com/lesta-1/sc/main/del-l2tp.sh && chmod +x /usr/bin/del-l2tp
wget -O /usr/bin/add-pptp https://https://raw.githubusercontent.com/lesta-1/sc/main/add-pptp.sh && chmod +x /usr/bin/add-pptp
wget -O /usr/bin/del-pptp https://https://raw.githubusercontent.com/lesta-1/sc/main/del-pptp.sh && chmod +x /usr/bin/del-pptp
wget -O /usr/bin/renew-pptp https://https://raw.githubusercontent.com/lesta-1/sc/main/renew-pptp.sh && chmod +x /usr/bin/renew-pptp
wget -O /usr/bin/renew-l2tp https://https://raw.githubusercontent.com/lesta-1/sc/main/renew-l2tp.sh && chmod +x /usr/bin/renew-l2tp
echo "done"

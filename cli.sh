#!/usr/bin/env bash
dap_ip=$(getent ahostsv4 dap | grep RAW | awk '{print $1}')
dap_host=$(curl -sk https://$dap_ip/info | jq -r .configuration.conjur.hostname)
echo "$dap_ip $dap_host" >> /etc/hosts
(sleep 1; echo "yes"; sleep 1; echo "yes"; sleep 1; echo "yes" ) |
	conjur init \
		-u "https://$dap_host" \
		-a "$(curl -sk https://$dap_host/info | jq -r .configuration.conjur.account)"
conjur authn login -u admin -p "CyberArk1234#"

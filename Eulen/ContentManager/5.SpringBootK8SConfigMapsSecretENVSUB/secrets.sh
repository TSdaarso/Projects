#!/bin/bash
export db_p="init0224"
export db_u="CONTENTMAN"
export ldap_u="adminCManager"
export ldap_p="Temporal.00"
envsubst < sc-cm-svc.yml > temp.yml

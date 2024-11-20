#!/usr/bin/env bash
###############################################################################
#
# Bash Remediation Script for CIS Red Hat Enterprise Linux 8 Benchmark for Level 1 - Server [CUSTOMIZED]
#
# Profile Description:
# This profile defines a baseline that aligns to the "Level 1 - Server"
# configuration from the Center for Internet Security® Red Hat Enterprise
# Linux 8 Benchmark™, v3.0.0, released 2023-10-30.
# This profile includes Center for Internet Security®
# Red Hat Enterprise Linux 8 CIS Benchmarks™ content.
#
# Profile ID:  xccdf_org.ssgproject.content_profile_cis_server_l1_customized
# Benchmark ID:  xccdf_org.ssgproject.content_benchmark_RHEL-8
# Benchmark Version:  0.1.72
# XCCDF Version:  1.2
#
# This file was generated by OpenSCAP 1.3.10 using:
# $ oscap xccdf generate fix --profile xccdf_org.ssgproject.content_profile_cis_server_l1_customized --fix-type bash xccdf-file.xml
#
# This Bash Remediation Script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this Bash Remediation Script:
# $ sudo ./remediation-script.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 4) for 'xccdf_org.ssgproject.content_rule_package_aide_installed'
###############################################################################
(>&2 echo "Remediating rule 1/4: 'xccdf_org.ssgproject.content_rule_package_aide_installed'"); (
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "aide" ; then
    yum install -y "aide"
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi

) # END fix for 'xccdf_org.ssgproject.content_rule_package_aide_installed'

###############################################################################
# BEGIN fix (2 / 4) for 'xccdf_org.ssgproject.content_rule_aide_build_database'
###############################################################################
(>&2 echo "Remediating rule 2/4: 'xccdf_org.ssgproject.content_rule_aide_build_database'"); (
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "aide" ; then
    yum install -y "aide"
fi

/usr/sbin/aide --init
/bin/cp -p /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi

) # END fix for 'xccdf_org.ssgproject.content_rule_aide_build_database'

###############################################################################
# BEGIN fix (3 / 4) for 'xccdf_org.ssgproject.content_rule_aide_check_audit_tools'
###############################################################################
(>&2 echo "Remediating rule 3/4: 'xccdf_org.ssgproject.content_rule_aide_check_audit_tools'"); (
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "aide" ; then
    yum install -y "aide"
fi










if grep -i '^.*/usr/sbin/auditctl.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/auditctl.*#/usr/sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/auditd.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/auditd.*#/usr/sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/ausearch.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/ausearch.*#/usr/sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/aureport.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/aureport.*#/usr/sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/autrace.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/autrace.*#/usr/sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/augenrules.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/augenrules.*#/usr/sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

if grep -i '^.*/usr/sbin/rsyslogd.*$' /etc/aide.conf; then
sed -i "s#.*/usr/sbin/rsyslogd.*#/usr/sbin/rsyslogd p+i+n+u+g+s+b+acl+xattrs+sha512#" /etc/aide.conf
else
echo "/usr/sbin/rsyslogd p+i+n+u+g+s+b+acl+xattrs+sha512" >> /etc/aide.conf
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi

) # END fix for 'xccdf_org.ssgproject.content_rule_aide_check_audit_tools'

###############################################################################
# BEGIN fix (4 / 4) for 'xccdf_org.ssgproject.content_rule_aide_periodic_cron_checking'
###############################################################################
(>&2 echo "Remediating rule 4/4: 'xccdf_org.ssgproject.content_rule_aide_periodic_cron_checking'"); (
# Remediation is applicable only in certain platforms
if [ ! -f /.dockerenv ] && [ ! -f /run/.containerenv ]; then

if ! rpm -q --quiet "aide" ; then
    yum install -y "aide"
fi

if ! grep -q "/usr/sbin/aide --check" /etc/crontab ; then
    echo "05 4 * * * root /usr/sbin/aide --check" >> /etc/crontab
else
    sed -i '\!^.* --check.*$!d' /etc/crontab
    echo "05 4 * * * root /usr/sbin/aide --check" >> /etc/crontab
fi

else
    >&2 echo 'Remediation is not applicable, nothing was done'
fi

) # END fix for 'xccdf_org.ssgproject.content_rule_aide_periodic_cron_checking'

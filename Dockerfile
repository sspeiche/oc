#
# This is a container just for running OpenShift Origin's 'oc' command.
# Why would you want this? Since the ability to run a Terminal from the Web
# Console, this gives a quick and easy way to access the CLI without download
# or installing it on a local machine.
#
# The standard name for this image is sspeiche/oc
#
FROM openshift/origin

MAINTAINER Steve Speicher <sspeiche@redhat.com>

RUN  rm -f /usr/bin/oadm \
    /usr/bin/origin /usr/bin/openshift-deploy \
    /usr/bin/openshift-recycle /usr/bin/openshift-router \
    /usr/bin/openshift-docker-build /usr/bin/openshift-f5-router

USER 1000

ENTRYPOINT ["/bin/busy"]

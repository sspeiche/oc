#
# This is a container just for running OpenShift Origin's 'oc' command.
# Why would you want this? Since the ability to run a Terminal from the Web
# Console, this gives a quick and easy way to access the CLI without download
# or installing it on a local machine.
#
# The standard name for this image is sspeiche/oc
#
FROM rhel


MAINTAINER Steve Speicher <sspeiche@redhat.com>
ADD bin/oc /bin/oc
RUN chmod 755 /bin/oc
ADD bin/busy /bin/busy
RUN chmod 755 /bin/busy
RUN mkdir /.kube
RUN chmod 777 /.kube

USER 1000

ENTRYPOINT ["/bin/busy"]

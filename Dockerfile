# Autogenerated by OCaml-Dockerfile scripts
FROM centos:centos6
MAINTAINER Anil Madhavapeddy <anil@recoil.org>
RUN yum update -y && \
  rpm --rebuilddb && yum install -y sudo passwd bzip2 gcc-c++ patch nano git && yum clean all && \
  rpm --rebuilddb && yum groupinstall -y "Development Tools" && yum clean all && \
  rpm --rebuilddb && yum install -y ocaml ocaml-camlp4-devel ocaml-ocamldoc && yum clean all
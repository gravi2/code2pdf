FROM ubuntu:20.04

RUN apt-get update -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y wkhtmltopdf python3-pygments
WORKDIR /opt/code2pdf/
COPY code2pdf.sh .
RUN chmod +x code2pdf.sh

FROM mcr.microsoft.com/windows/server:ltsc2022

LABEL org.opencontainers.image.source="https://github.com/simeononsecurity/windows-optimize-harden-debloat"
LABEL org.opencontainers.image.description="Test Image for SimeonOnSecurity"
LABEL org.opencontainers.image.authors="simeononsecurity"

ENV container docker
SHELL ["powershell.exe"]

RUN iwr -useb 'https://simeononsecurity.ch/scripts/windowsoptimizeandharden.ps1'|iex

ENTRYPOINT ENTRYPOINT [ "powershell.exe" ]

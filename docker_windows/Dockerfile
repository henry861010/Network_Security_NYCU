FROM mcr.microsoft.com/windows:20H2

RUN powershell -Command \
    $ErrorActionPreference = 'Stop'; \
    Invoke-WebRequest $('https://github.com/git-for-windows/git/releases/download/v2.17.1.windows.2/Git-2.17.1.2-64-bit.exe') -OutFile $('C:\git.exe'); \
    Start-Process $('C:\git.exe') -ArgumentList $('/VERYSILENT', '/NORESTART') -Wait; \
    Remove-Item $('C:\git.exe');

CMD [ "powershell" ]

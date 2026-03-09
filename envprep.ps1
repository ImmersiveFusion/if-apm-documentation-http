# This scripts should not be run directly. Use serve.ps1 instead

& python -m ensurepip --default-pip

& python -m pip install --upgrade pip

Write-Host Installing pinned dependencies from requirements.txt
& pip install -r requirements.txt

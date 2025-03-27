We need to follow the commands for installing dotnet on ubuntu and aslo build and deploy the project:

# 1Install required dependencies
sudo apt update && sudo apt install -y apt-transport-https ca-certificates

# Add Microsoft package repository
wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update

# Install .NET SDK 9.0
sudo apt install -y dotnet-sdk-9.0

# Verify installation
dotnet --version

# build the project

cd /src
dotnet build NopCommerce.sln --no-incremental -c Release

# Publish the project

cd /Presentation/Nop.Web

dotnet publish Nop.Web.csproj -c Release -o /app/published

# Start/Run the application on 0.0.0.0 for every one

dotnet Nop.Web.dll --urls "http://0.0.0.0:5000"



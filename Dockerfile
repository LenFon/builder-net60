FROM kubesphere/builder-base:v2.1.0
RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
RUN yum install -y dotnet-sdk-6.0 #此处可以换成其他版本，也可以同时安装多个版本sdk一步到位
RUN dotnet tool install --global dotnet-sonarscanner --version 5.0.4  #(可选)安装dotnet的sonar-scanner
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/sonar-scanner-3.3.0.1492-linux/bin:/root/.nuget/tools:/root/.dotnet/tools
CMD ["dotnet", "--version"]

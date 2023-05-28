FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-environment
WORKDIR /application
COPY . ./
RUN dotnet restore
RUN dotnet publish \
    --configuration Release \
    --output release

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /application
COPY --from=build-environment /application/release .
ENTRYPOINT ["./Dictionary.Gateway.Api"]

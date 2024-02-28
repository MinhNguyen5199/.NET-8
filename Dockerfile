# Use the .NET 8 SDK image as the base image for building
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the remaining source code
COPY . ./

# Build the application
RUN dotnet publish -c Release -o out

# Use the .NET 8 runtime image as the base image for running the application
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime

# Set the working directory in the container
WORKDIR /app

# Copy the published application to the container
COPY --from=build /app/out ./

# Expose port 80 for HTTP traffic
EXPOSE 80

# Define the command to run the application
CMD ["dotnet", "API.dll"]

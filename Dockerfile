# # Use official Go image
# FROM golang:1.21

# # Set working directory inside container
# WORKDIR /usr/src/app

# # Copy go.mod and go.sum (if exists) first for dependency caching
# COPY app/go.mod app/go.sum ./

# # Download dependencies
# RUN go mod download || true

# # Copy the rest of the app
# COPY app/ ./

# # Expose port for HTTP APIs later
# EXPOSE 8080

# # Default command
# CMD ["go", "run", "main.go"]

# Use official Go image
FROM golang:1.21

# Set working directory inside container
WORKDIR /usr/src/app

# Copy the app folder
COPY app/ ./

# Expose port for future HTTP servers
EXPOSE 8080

# Default command
CMD ["go", "run", "main.go"]

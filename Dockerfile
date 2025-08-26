FROM python:3.11

WORKDIR /Verba
COPY . /Verba

# Install Verba
RUN pip install '.'

# Expose port
EXPOSE 8000

# Set default environment variables for our Weaviate instance
ENV WEAVIATE_URL=https://http--weaviate--fjcrrxj2vps9.code.run
ENV WEAVIATE_API_KEY=""

# Start Verba
CMD ["verba", "start","--port","8000","--host","0.0.0.0"]

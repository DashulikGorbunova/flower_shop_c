FROM gcc:latest
WORKDIR /app
COPY . .
RUN g++ -std=c++11 server.cpp -o server
EXPOSE 8080
CMD ["./server"]
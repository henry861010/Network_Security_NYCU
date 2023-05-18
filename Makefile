part1: http_server.cpp
	g++ ./http_server.cpp -o ./http_server 
	g++ ./console.cpp -o ./console.cgi
part2: cgi_server.cpp
	g++ c:\Users\henry\Desktop\cgi_server.cpp -o C:\Users\henry\Desktop\cgi_server -lws2_32 -lwsock32 -std=c++17

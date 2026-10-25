import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('127.0.0.1', 9999))
s.listen(1)
print("Waiting for connection...")
conn, addr = s.accept()
print("Connected! Secret message received:", conn.recv(1024).decode())

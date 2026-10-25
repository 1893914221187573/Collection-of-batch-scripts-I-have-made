import socket
print("Type the message you want to send to the listener: ")
user_message = input()
c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
c.connect(('127.0.0.1', 9999))

# 3. Use .encode() to turn your variable into internet-ready bytes
c.send(user_message.encode('utf-8'))

# 4. Clean up and close the connection
c.close()
print("Message sent successfully!")

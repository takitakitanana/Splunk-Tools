with open('b.txt', 'r') as a:
    list_a = [line.strip() for line in a]

for server in list_a:
    print(server.split('=')[1].rstrip())

    with open('ar.txt', 'w') as c:
        c.write(str(server.split('=')[1].rstrip()) + "\n")
    


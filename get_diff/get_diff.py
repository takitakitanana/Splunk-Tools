
############################################# A
with open('aar.txt', 'r') as a:
    list_a = [line.strip() for line in a]

    print("List A has " + str(len(list_a)) + " servers with possible duplicates.")
    for server in list_a:
        #print(server)
        pass

############################################# B
with open('bar.txt', 'r') as b:
    list_b = [line.strip() for line in b]

    print("List B has " + str(len(list_b)) + " servers, with possible duplicates.")
    for server in list_b:
        #print(server)
        pass

############################################# C
with open('c.txt', 'w') as c:
    #list_c = set(list_a) ^ set(list_b)

    #print("Created - List C has " + str(len(list_c)) + " servers, with no duplicates.")
    for server in list_a:

        if server.strip() in list_b:
            print(server.strip())
            
        
            c.write(str(server.rstrip('\t\r\n\0')) + "\n")
        else:
            pass
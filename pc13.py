import xmlrpc.client

serverName = "http://www.pythonchallenge.com/pc/phonebook.php"
conn = xmlrpc.client.ServerProxy(serverName)
print(conn)
# <ServerProxy for www.pythonchallenge.com/pc/phonebook.php>
print(conn.system.listMethods())
# ['phone', 'system.listMethods', 'system.methodHelp', 'system.methodSignature', 'system.multicall', 'system.getCapabilities']

# print(conn.system.methodHelp("phone"))
print(conn.phone("Bert"))
# 555-ITALY
# italy

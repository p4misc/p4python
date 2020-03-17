from P4 import P4,P4Exception
p4 = P4()
p4.port="host.docker.internal:1666"
#p4.user="bruno"
#p4.client="bruno_ws"

try:
    p4.connect()
    info = p4.run("info")
    for key in info[0]:
        print(key, "=", info[0][key])
    p4.disconnect()
except P4Exception:
    for e in p4.errors:
        print(e)

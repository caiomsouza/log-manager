import json
import sys
from pprint import pprint

jdata = sys.stdin.read()

data = json.loads(jdata)

print "PublicIp"
print data["ip"][0]["PublicIp"]



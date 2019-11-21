import json
import sys
import pickle

FILE = open(sys.argv[1], 'rb')
DATA = pickle.load(FILE)
FILE.close()
JSON_DATA = json.loads(DATA.to_json(orient="table"))["data"]
print(json.dumps(JSON_DATA))

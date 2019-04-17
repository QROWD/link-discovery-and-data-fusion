import json
import pandas
import pickle
import sys
from shapely.geometry import Point

file = open(sys.argv[1], 'rb')
data = pickle.load(file)
file.close()
jsonData = json.loads(data.to_json(orient="table"))["data"]
for point in jsonData:
    point["wkt"] = Point(point["lng"], point["lat"]).wkt
print(json.dumps(jsonData))


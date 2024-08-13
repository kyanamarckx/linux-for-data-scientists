#!/usr/bin/python3
import matplotlib.pyplot as mp
import pandas as pd
import plotly.express as px

prgent = pd.read_csv('../transform/dataOostakker.csv').drop_duplicates()
prgent.head()
df = pd.DataFrame(prgent)

time = df['Timestamp']
total = df['Total']
available = df['Available']
longitude = df['Longitude']
latitude = df['Latitude']

fig, ax = mp.subplots(figsize = (20, 9))

ax.barh(time, available, color = 'lightgreen')

ax.set_title("P+R Oostakker")
ax.set_xlabel("Available spaces")
ax.set_ylabel("Timestamp")
ax.set_xlim(0, total[0])

ax.xaxis.set_tick_params(pad = 5)
ax.yaxis.set_tick_params(pad = 10)

for i in ax.patches:
	mp.text(i.get_width()+0.2, i.get_y()+0.5, str(round((i.get_width()), 2)), fontsize = 10, fontweight = 'bold', color = 'grey')

mp.savefig('../graphs/graphOostakker.png')
mp.clf()

map = px.scatter_mapbox(df, lat="Latitude", lon="Longitude", zoom=11, height=800, width=800)
map.update_layout(mapbox_style="open-street-map")
map.update_layout(margin={"r":0,"t":0,"l":0,"b":0})
map.update_traces(marker=dict(size=15))
map.write_image('../graphs/locationOostakker.png')

f = open('../descriptives/descriptivesOostakker.md', 'w')
f.write(prgent.describe().to_markdown())
f.close()

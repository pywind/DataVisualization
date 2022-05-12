import pandas as pd
def download_csv():
    url = 'https://raw.githubusercontent.com/pywind/DataVisualization/main/Data%20csv/sqllab_economic.csv'
    df = pd.read_csv(url)

    df.to_csv('economic.csv', index = False)
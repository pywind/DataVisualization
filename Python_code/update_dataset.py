import psycopg2
from read_csv_github import *

#re-download csv()

download_csv()

#connect to database
conn = psycopg2.connect(database="postgres",
                        user='postgres', password='superset',
                        host='127.0.0.1', port='5430'
)

conn.autocommit = True
cursor = conn.cursor()


sql = '''DELETE FROM sqllab_economic_csv;'''
cursor.execute(sql);

f = open(r'/home/ubuntu/environment/economic.csv', 'r')
copy = "COPY sqllab_economic_csv (emp_var_rate, cons_price_idx, cons_conf_idx, euribor3m, nr_employed) FROM stdin CSV HEADER;"
cursor.copy_expert(sql=copy, file=f)
f.close()
conn.commit()
conn.close()
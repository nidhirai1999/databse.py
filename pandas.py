import pandas as pd
from sqlalchemy import create_engine, text


engine = create_engine('mysql+pymysql://root:123456@localhost:3306/student')
query= '''select student.student_name, student.student_id
from student
order by student_id
'''
df = pd.read_sql_query(sql=text(query), con=engine.connect())
print(df)

import MySQLdb

try:
    db=MySQLdb.connect("localhost","root","","blogdb")
    if db:
        print("Connection Successful")
except:
    print("Error")

cursor=db.cursor()
sql = "CREATE TABLE IF NOT EXISTS STUDENT (roll_no INT, name VARCHAR(20), attendance INT, marks INT )"
cursor.execute(sql)

cursor.execute("INSERT INTO STUDENT VALUES(%s,%s,%s,%s)",(8688, 'VARAD', 90, 99))
cursor.execute("INSERT INTO STUDENT VALUES(%s,%s,%s,%s)",(8672, 'PRANAV', 90, 99))
cursor.execute("INSERT INTO STUDENT VALUES(%s,%s,%s,%s)",(8683, 'AAYUSH', 90, 99))
cursor.execute("INSERT INTO STUDENT VALUES(%s,%s,%s,%s)",(8702, 'AJAY', 90, 99))
cursor.execute("INSERT INTO STUDENT VALUES(%s,%s,%s,%s)",(8677, 'HRITHIK', 90, 99))

cursor.execute("SELECT * FROM STUDENT")
print("After Insertion \n",cursor.fetchall())

cursor.execute("UPDATE STUDENT SET marks = %s WHERE roll_no = %s",(101, 8688))
cursor.execute("SELECT * FROM STUDENT")
print("After updating \n",cursor.fetchall())

cursor.execute("DELETE FROM STUDENT WHERE roll_no = 8677")

cursor.execute("SELECT * FROM STUDENT")
print("After Deleting \n",cursor.fetchall())

try:
    db=db.close() 
    if not db:
        print("Connection Closed")
except:
    print("Error Occured while Closing Conn")



'''
OUTPUT:
Connection Successful
After Insertion 
 ((8688, 'VARAD', 90, 99), (8672, 'PRANAV', 90, 99), (8683, 'AAYUSH', 90, 99), (8702, 'AJAY', 90, 99), (8677, 'HRITHIK', 90, 99))
After updating 
 ((8688, 'VARAD', 90, 101), (8672, 'PRANAV', 90, 99), (8683, 'AAYUSH', 90, 99), (8702, 'AJAY', 90, 99), (8677, 'HRITHIK', 90, 99))
After Deleting 
 ((8688, 'VARAD', 90, 101), (8672, 'PRANAV', 90, 99), (8683, 'AAYUSH', 90, 99), (8702, 'AJAY', 90, 99))
Connection Closed
'''

import mysql.connector as connector


def db_connect():
    try:
        connection = connector.connect(user = 'root', password = "65748392", database = "LittleLemondb")
        print("Connection to the LittleLemondb database is established.")
    except connector.Error as e:
        print(e)
    
    return connection

connection = db_connect()
cursor = connection.cursor()
show_tables_query = "SHOW tables" 
cursor.execute(show_tables_query)
results = cursor.fetchall()
for result in results:
    print(result)
join_query = """ SELECT CustomerDetails.CustomerName, CustomerDetails.ContactNumber
                FROM Orders 
                INNER JOIN Bookings ON Orders.BookingID = Bookings.BookingID
                INNER JOIN CustomerDetails ON Bookings.CustomerID = CustomerDetails.CustomerID
                WHERE Orders.TotalCost > 16;
            """
cursor.execute(join_query)
columns = cursor.column_names
results = cursor.fetchall()
print(columns)
for result in results:
    print(result)
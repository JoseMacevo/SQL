import MySQLdb
db = MySQLdb.connect(
    host="localhost",
    user="root",
    passwd="SLSC4WLQL4MAN4",
    db="platziblog"
)

c = db.cursor()

customers = [
    ("Vázquez", "Israel", "Calle Famosa N1", "México"),
    ("Hernández", "Mónica", "Calle Reforma 232", "México"),
    ("Alanis", "Edgar", "Calle Central 1", "Monterrey")
]

c.executemany("insert into people values (null, %s, %s, %s, %s)", customers);

db.commit()
db.close()


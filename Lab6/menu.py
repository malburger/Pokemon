#LAB6 Python starter code
import MySQLdb
import _mysql

buffer = "true"
h="localhost"
u="root"
password="ma702507"
database="pokemon"

def oneQuery():
	db = _mysql.connect(host=h,user=u,passwd=password,db=database)
	db.query("""SELECT * FROM pokemon;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def twoQuery():
	db = _mysql.connect(host=h,user=u,passwd=password,db=database)
	db.query("""SELECT * FROM types;""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	db.close()

def threeQuery():
	db = _mysql.connect(host=h,user=u,passwd=password,db=database)
	#db.query("""SELECT * FROM vineyard WHERE vineyardID NOT IN (SELECT * FROM vineyard as a, funding AS b WHERE  
	#	a.vineyardID = b.vineyardID;)""")
	db.query("""SELECT * FROM pokemon WHERE type2ID=19""")
	r = db.store_result()
	nR = r.num_rows()
	while(nR > 0):
		print(r.fetch_row())
		nR = nR - 1
	if nR == 0:
		print("""all pokemon have 2 types""")
	db.close()
	
while buffer:
    print("""
    0.Exit
    1.See pokemon
    2.See types
    3.See if a pokemon has no second type
    """)
    buffer=int(input("what would you like to do? "))
    if buffer == 1:
        oneQuery()
    elif buffer == 2:
        twoQuery()
    elif buffer == 3:
        threeQuery()


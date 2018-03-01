import csv
import MySQLdb
from petl import fromcsv, look, todb, convert
from hockeySchema import create_awards_coaches_table_sql, create_awards_players_table_sql, create_coaches_table_sql, create_master_table_sql

# Database connection settings
config = {
  'user': 'root',
  'password': 'secrets',
  'host': 'localhost',
  'database': 'hockey',
  'charset': 'utf8'
}

class hockeyDataObject():
	'''
	A hockeyDataObject knows the path to its data in a local CSV file,
	the name of the table in the 'hockey' database where that data resides,
	and the query string to create the table if it does not yet exist.
	'''
	def __init__(self, csvPath, tableName, createTableSQL):
		'''Constructor
		Arguments:
		csvPath - string of local relative path to CSV file containing data
	  tableName - the name of the table in the 'hockey' database where data resides
	  createTableSQL - SQL comand to create table
    '''
		self.csvPath = csvPath
		self.tableName = tableName
		self.createTableSQL = createTableSQL

	def createTable(self):
		'''
		Create the table for the hockey data
		Checking for non-existent table is accomplished via the SQL comman
		'''
		cursor.execute(self.createTableSQL)

	def writeToDB(self):
		'''
		Retrive the hockey data from the CSV file,
		print snippet of the data to the console for visual feedback on progress,
		and write the data (with petl) to the hockey database.
		'''
		data = fromcsv(self.csvPath)
		print(look(data, style='minimal'))
		todb(data, connection, self.tableName)

#
#
#

# Create connection and cursor object.
# We assume 'hockey' table already exists.

try:
	connection = MySQLdb.connect(**config)
	cursor = connection.cursor()
	cursor.execute('SET SQL_MODE=ANSI_QUOTES')

	# Create an object for each data set
	master = hockeyDataObject('data/Master.csv', 'Master', create_master_table_sql)
	coaches = hockeyDataObject('data/Coaches.csv', 'Coaches', create_coaches_table_sql)
	awardsCoaches = hockeyDataObject('data/AwardsCoaches.csv', 'AwardsCoaches', create_awards_coaches_table_sql)
	awardsPlayers = hockeyDataObject('data/AwardsPlayers.csv', 'AwardsPlayers', create_awards_players_table_sql)

	# Create table for each data set.
	master.createTable()
	coaches.createTable()
	awardsCoaches.createTable()
	awardsPlayers.createTable()

	# Write each CSV data set to the hockey database
	master.writeToDB()
	coaches.writeToDB()
	awardsCoaches.writeToDB()
	awardsPlayers.writeToDB()

except Error as e:
	print(e)

finally:
	cursor.close()
	connection.close()


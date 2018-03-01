# Hockey Data

## What is This?

The scripts here make use of hockey statistics that live online at [opensourcesports.com](http://www.opensourcesports.com/hockey/). The files found in this repository are described below.

1. `data/*.csv` - The four CSV files from the aforementioned data set that are utilized by this script: Master, Coaches, AwardsPlayers, and AwardsCoaches.
2. `hockey.sql` - MySQL DB schema file for the four data files.
3. `importHockeyData.py` - Reads data from the CSV files listed above and stores it in a MySQL database by the name of `hockey`, but the name can be altered in the configuration at the top of this file.
4. `hockeySchema.py` - Contains string versions of the SQL commands used by Python to create the necessary tables.
5. `exercise3.sql`* - Contains a set of MySQL queries that performs the following functions.

	* Rank the coaches for each year by number of wins - as a MySQL query;
	* Rank the player for each year by number of awards - as a MySQL stored procedure; and
	* Get the details of a player who won the maximum number of awards for a year during which the coach for that team also has the maximum wins - as a MySQL query

\* *It should be noted that the latter of these three bullets is not yet complete.*

## Prerequisites

To run these scripts, you need a MySQL server up and running and the following the following Python packages are required:

* csv ([https://docs.python.org/2/library/csv.html](https://docs.python.org/2/library/csv.html))
* MySQLdb ([http://mysqlclient.readthedocs.io/](http://mysqlclient.readthedocs.io/))
* petl ([http://petl.readthedocs.io/en/latest/](http://petl.readthedocs.io/en/latest/))

The `csv` package is part of the standard library, but you may need to `pip install` the latter two.

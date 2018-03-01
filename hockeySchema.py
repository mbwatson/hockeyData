create_awards_coaches_table_sql = """CREATE TABLE IF NOT EXISTS `AwardsCoaches` (
`coachID` varchar(10) NOT NULL,
`award` varchar(20) DEFAULT NULL,
`year` int(4) UNSIGNED DEFAULT NULL,
`lgID` varchar(4) DEFAULT NULL,
`note` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;"""

create_awards_players_table_sql = """CREATE TABLE IF NOT EXISTS `AwardsPlayers` (
`playerID` varchar(10) NOT NULL,
`award` varchar(20) DEFAULT NULL,
`year` int(4) UNSIGNED DEFAULT NULL,
`lgID` varchar(4) DEFAULT NULL,
`note` varchar(25) DEFAULT NULL,
`pos` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;"""

create_coaches_table_sql = """CREATE TABLE IF NOT EXISTS `Coaches` (
`coachID` varchar(10) NOT NULL,
`year` int(4) UNSIGNED DEFAULT NULL,
`tmID` varchar(3) DEFAULT NULL,
`lgID` varchar(4) DEFAULT NULL,
`stint` int(1) UNSIGNED DEFAULT NULL,
`notes` varchar(25) DEFAULT NULL,
`g` int(3) UNSIGNED DEFAULT NULL,
`w` int(3) UNSIGNED DEFAULT NULL,
`l` int(3) UNSIGNED DEFAULT NULL,
`t` int(3) UNSIGNED DEFAULT NULL,
`postg` int(3) UNSIGNED DEFAULT NULL,
`postw` int(3) UNSIGNED DEFAULT NULL,
`postl` int(3) UNSIGNED DEFAULT NULL,
`postt` int(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;"""

create_master_table_sql = """CREATE TABLE IF NOT EXISTS `Master` (
`playerID` varchar(10) NOT NULL,
`coachID` varchar(10) DEFAULT NULL,
`hofID` varchar(10) DEFAULT NULL,
`firstName` varchar(20) DEFAULT NULL,
`lastName` varchar(20) DEFAULT NULL,
`nameNote` varchar(50) DEFAULT NULL,
`nameGiven` varchar(30) DEFAULT NULL,
`nameNick` varchar(40) DEFAULT NULL,
`height` int(2) UNSIGNED DEFAULT NULL,
`weight` int(3) UNSIGNED DEFAULT NULL,
`shootCatch` varchar(1) DEFAULT NULL,
`legendsID` varchar(10) DEFAULT NULL,
`ihdbID` varchar(10) DEFAULT NULL,
`hrefID` varchar(10) DEFAULT NULL,
`firstNHL` int(4) UNSIGNED DEFAULT NULL,
`lastNHL` int(4) UNSIGNED DEFAULT NULL,
`firstWHA` int(4) UNSIGNED DEFAULT NULL,
`lastWHA` int(4) UNSIGNED DEFAULT NULL,
`pos` varchar(3) DEFAULT NULL,
`birthYear` int(4) UNSIGNED DEFAULT NULL,
`birthMon` int(2) UNSIGNED DEFAULT NULL,
`birthDay` int(2) UNSIGNED DEFAULT NULL,
`birthCountry` varchar(20) DEFAULT NULL,
`birthState` varchar(15) DEFAULT NULL,
`birthCity` varchar(25) DEFAULT NULL,
`deathYear` int(4) UNSIGNED DEFAULT NULL,
`deathMon` int(2) UNSIGNED DEFAULT NULL,
`deathDay` int(2) UNSIGNED DEFAULT NULL,
`deathCountry` varchar(20) DEFAULT NULL,
`deathState` varchar(2) DEFAULT NULL,
`deathCity` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;"""

USE Game;

# Identify the values in the column containing platform from two tables

SELECT DISTINCT ign_platform FROM ign;
SELECT DISTINCT vgs_platform FROM vgsales;



# Change the value in the 'vgs_platform' column to be consistent with ign_platform

UPDATE vgsales 
SET vgs_platform='Nintendo 64' 
WHERE vgs_platform='N64';

UPDATE vgsales 
SET vgs_platform='PlayStation' 
WHERE vgs_platform='PS';

UPDATE vgsales 
SET vgs_platform='PlayStation 3' 
WHERE vgs_platform='PS3';

UPDATE vgsales 
SET vgs_platform='PlayStation 4' 
WHERE vgs_platform='PS4';

UPDATE vgsales 
SET vgs_platform='PlayStation Portable' 
WHERE vgs_platform='PSP';

UPDATE vgsales 
SET vgs_platform='PlayStation Vita' 
WHERE vgs_platform='PSV';

UPDATE vgsales 
SET vgs_platform='Wii U' 
WHERE vgs_platform='WiiU';

UPDATE vgsales 
SET vgs_platform='Xbox 360' 
WHERE vgs_platform='X360';

UPDATE vgsales 
SET vgs_platform='Nintendo 3DS' 
WHERE vgs_platform='3DS';

UPDATE vgsales 
SET vgs_platform='Nintendo DS' 
WHERE vgs_platform='DS';

UPDATE vgsales 
SET vgs_platform='Saturn' 
WHERE vgs_platform='SNES';


# Create a table by inner-joining two tables of ign and vgsales

CREATE TABLE game_inner AS SELECT * FROM vgsales INNER JOIN ign ON vgsales.vgs_Name = ign.ign_title 
AND vgsales.vgs_platform=ign.ign_platform;



# Drop redundant columns in the new table
 
ALTER TABLE game_inner
  DROP COLUMN vgs_Name,
  DROP COLUMN vgs_Year,
  DROP COLUMN ign_Genre,
  DROP COLUMN ign_number,
  DROP COLUMN ign_url,
  DROP COLUMN ign_platform;





USE CRM_DEV_SDK


-- Insert unique ID's into temp table from note table.
INSERT INTO USR_UA_DESIGNATIONNOTEEXT (ID, DESIGNATIONLEVELID, ADDEDBYID, CHANGEDBYID) 
SELECT DBO.DESIGNATIONLEVELNOTE.ID, DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID,
DBO.DESIGNATIONLEVELNOTE.ADDEDBYID,
DBO.DESIGNATIONLEVELNOTE.CHANGEDBYID FROM DBO.DESIGNATIONLEVELNOTE

-- Update temp table and set extended column 'status' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONSTATUS = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%status%'

-- Update temp table and set extended column 'stewardshipname' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.STEWARDSHIPNAME = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%stewardship name%'

-- Update temp table and set extended column 'preferred school' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.PREFERREDSCHOOL = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%preferred school%'

-- Update temp table and set extended column 'established by' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.ESTABLISHEDBY = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%established by%'

-- Update temp table and set extended column 'constituent type' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.CONSTITUENTTYPE = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%constituent type%'

-- Update temp table and set extended column 'fund restriction' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.FUNDRESTRICTION = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%fund restriction%'

-- Update temp table and set extended column 'MOA date' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.MOADATE = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%MOA Date%'

-- Update temp table and set extended column 'resolution date' to the designation level note title.
UPDATE USR_UA_DESIGNATIONNOTEEXT SET USR_UA_DESIGNATIONNOTEEXT.RESOLUTIONDATE = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%resolution%'

-- Update temp table and set extended column 'department' to the designation level note title.
--UPDATE #TEMP SET #TEMP.DEPARTMENT = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
--INNER JOIN #TEMP ON #TEMP.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
--WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%department%'

UPDATE USR_UA_DESIGNATIONNOTEEXT
SET USR_UA_DESIGNATIONNOTEEXT.ADDEDBYID = dbo.DESIGNATIONLEVELNOTE.ADDEDBYID 
FROM DBO.DESIGNATIONLEVELNOTE INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID

UPDATE USR_UA_DESIGNATIONNOTEEXT 
SET USR_UA_DESIGNATIONNOTEEXT.CHANGEDBYID = dbo.DESIGNATIONLEVELNOTE.CHANGEDBYID
FROM DBO.DESIGNATIONLEVELNOTE INNER JOIN USR_UA_DESIGNATIONNOTEEXT ON USR_UA_DESIGNATIONNOTEEXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID

SELECT * FROM USR_UA_DESIGNATIONNOTEEXT
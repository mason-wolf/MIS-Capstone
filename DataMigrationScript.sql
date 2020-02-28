USE CRM_DEV_SDK

-- Insert unique ID's into temp table from note table.
INSERT INTO USR_UA_DESIGNATIONLEVEL_EXT (ID, DESIGNATIONLEVELID, ADDEDBYID, CHANGEDBYID) 
SELECT DBO.DESIGNATIONLEVELNOTE.ID, DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID,
DBO.DESIGNATIONLEVELNOTE.ADDEDBYID,
DBO.DESIGNATIONLEVELNOTE.CHANGEDBYID FROM DBO.DESIGNATIONLEVELNOTE

-- Update temp table and set extended column 'status' to the designation level note title.
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONSTATUS = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%status%'

-- Update temp table and set extended column 'stewardshipname' to the designation level note title.
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.STEWARDSHIPNAME = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%stewardship name%'


-- Update temp table and set extended column 'preferred school' to the designation level note title.
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.PREFERREDSCHOOL = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%preferred school%'

-- Update temp table and set extended column 'established by' to the designation level note title.
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.ESTABLISHEDBY = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%established by%'

-- Update temp table and set extended column 'constituent type' to the designation level note title.
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.CONSTITUENTTYPE = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%constituent type%'


-- Update temp table and set extended column 'fund restriction' to the designation level note title.

UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.FUNDRESTRICTION = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%fund restriction%'

-- Update temp table and set extended column 'MOA date' to the designation level note title.

UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.MOADATE = dbo.DESIGNATIONLEVELNOTE.DATEENTERED FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%MOA Date%'

-- Update temp table and set extended column 'resolution date' to the designation level note title.

UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET USR_UA_DESIGNATIONLEVEL_EXT.RESOLUTIONDATE = dbo.DESIGNATIONLEVELNOTE.TEXTNOTE FROM DBO.DESIGNATIONLEVELNOTE 
INNER JOIN USR_UA_DESIGNATIONLEVEL_EXT ON USR_UA_DESIGNATIONLEVEL_EXT.DESIGNATIONLEVELID = DBO.DESIGNATIONLEVELNOTE.DESIGNATIONLEVELID
WHERE DBO.DESIGNATIONLEVELNOTE.TITLE LIKE '%resolution%'

-- Update preferred school ids
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'EA05FA54-B172-4805-B9FC-00097C1F6495' WHERE PREFERREDSCHOOL LIKE '%Academic Affairs%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '587E461F-BD66-4A4B-AEB1-CED8905EE363' WHERE PREFERREDSCHOOL LIKE '%Auxiliary Services%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'C36881E3-0A53-41C3-A90B-4DC94E1589D5' WHERE PREFERREDSCHOOL LIKE '%Capstone International%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'D4D8559A-1DE4-4A86-9306-3DEC85085F2F' WHERE PREFERREDSCHOOL LIKE '%A&S%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '10BC7D68-973F-419F-BC90-819F40057903' WHERE PREFERREDSCHOOL LIKE '%Accountancy%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'B37048DD-7A8A-439F-98E9-6C2A298DE727' WHERE PREFERREDSCHOOL LIKE '%MBA%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '06B9D1E4-8FA5-4409-B37D-12331ED0EC44' WHERE PREFERREDSCHOOL LIKE '%C&IS%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '6EFD0CEE-C542-495B-AC7F-380B19111BF8' WHERE PREFERREDSCHOOL LIKE '%CCHS%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'C1B25976-3D8A-4FF0-8CE7-4D4156E13BFC' WHERE PREFERREDSCHOOL LIKE '%Continuing Studies%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '895505ED-41EC-4BAA-8BE9-3E3BD4463875' WHERE PREFERREDSCHOOL LIKE '%Education%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'F6F8A8C5-8552-461A-9581-CE0B0B873A09' WHERE PREFERREDSCHOOL LIKE '%Engineering%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '7FFCFAB2-7F28-4A9B-B59B-D2CBE3BD8573' WHERE PREFERREDSCHOOL LIKE '%HES%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'B124A494-E224-4419-B0CD-220A0A296B01' WHERE PREFERREDSCHOOL LIKE '%Nursing%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '4D01C5F7-BF1F-404D-A569-A55E64D3DACE' WHERE PREFERREDSCHOOL LIKE '%Honors College%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'A1D50C2C-7EA8-49C3-A3C6-B500BE681498' WHERE PREFERREDSCHOOL LIKE '%Human Resources%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'E2A7FF3E-8F3B-488F-93BA-AF4D4731071C' WHERE PREFERREDSCHOOL LIKE '%Law School%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'E2A7FF3E-8F3B-488F-93BA-AF4D4731071C' WHERE PREFERREDSCHOOL LIKE '%Law%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '69E39305-1CBD-4CD1-B505-40E2B874DA0A' WHERE PREFERREDSCHOOL LIKE '%Military Science%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '6328256F-562D-4B4C-80FA-A863BBD4E7BE' WHERE PREFERREDSCHOOL LIKE '%New College%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '86BA1178-F948-4AD7-95B7-FDCC01A5B7ED' WHERE PREFERREDSCHOOL LIKE '%President%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '43099B11-B8CF-4B06-99BB-AE28C55F8382' WHERE PREFERREDSCHOOL LIKE '%Social Work%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '8B684E6C-46F2-4658-A286-FB99F2D23A89' WHERE PREFERREDSCHOOL LIKE '%SLIS%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '4E2FA7F5-EAD5-4F0D-A3C6-8156DB7C905D' WHERE PREFERREDSCHOOL LIKE '%Student Life%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '925C9C3A-466F-4E23-A927-1C0E15E3FB3D' WHERE PREFERREDSCHOOL LIKE '%Student Financial Aid%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '3BC8E80C-B527-4857-B16A-A360D1749CEB' WHERE PREFERREDSCHOOL LIKE '%Undergraduate Admissions%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '8E7ED9FF-EF25-4890-A902-216BEA97D312' WHERE PREFERREDSCHOOL LIKE '%University Advancement%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '112B1F26-6028-408B-8AC9-A9F0B36112E1' WHERE PREFERREDSCHOOL LIKE '%University Libraries%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '10C524D6-4369-4950-86B7-542632A5B981' WHERE PREFERREDSCHOOL LIKE '%University Museums%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'F20277A3-26C4-4C9B-A203-84C898EBF01F' WHERE PREFERREDSCHOOL LIKE '%C&BA%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= 'EEAF281A-4527-4D02-8DE2-356B863370D7' WHERE PREFERREDSCHOOL LIKE '%Intercollegiate Athletics%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '6EFD0CEE-C542-495B-AC7F-380B19111BF8' WHERE PREFERREDSCHOOL LIKE '%College of Community Health%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET PREFERREDSCHOOLCODEID= '3B8FCFBE-748B-40E7-B73D-3FE767CFA35B' WHERE PREFERREDSCHOOLCODEID IS NULL

-- Update designation status ids
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET DESIGNATIONSTATUSCODEID= '2223EAE5-A915-4E28-BE86-EDC6DD2CA0C5' WHERE DESIGNATIONSTATUSCODEID IS NULL
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET DESIGNATIONSTATUSCODEID='E54A6CA8-F129-41B1-B2F7-C446A928D23F' WHERE DESIGNATIONSTATUS LIKE '%Archived%';
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET DESIGNATIONSTATUSCODEID='62D58168-64AE-44B4-8F4A-4B638F2D1EBE' WHERE DESIGNATIONSTATUS LIKE '%In Progress%';
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET DESIGNATIONSTATUSCODEID='978C625D-939C-4632-91F8-1750E12391F7' WHERE DESIGNATIONSTATUS LIKE '%Stewarded%';
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET DESIGNATIONSTATUSCODEID='5C11F65E-3D3D-4771-A1EF-4FABF589A381' WHERE DESIGNATIONSTATUS LIKE '%Testamentary%';

-- Update constituent type codes
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= 'EBA5DCAD-DC57-4506-80FE-A3607898BF39' WHERE CONSTITUENTTYPE LIKE '%Annual Fund%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= '052C9C81-2ECA-4A5F-A779-A17095F89F73' WHERE CONSTITUENTTYPE LIKE '%Chair%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= '11DC1CC5-4AC1-40BB-B5B4-2B0A5C393481' WHERE CONSTITUENTTYPE LIKE '%Other Endowed Fund%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= '3E829B95-9850-4775-BB05-34DB83FC3F2B' WHERE CONSTITUENTTYPE LIKE '%Professorship%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= 'CB7FB1AE-D562-46C7-8824-6812FA6DC5DA' WHERE CONSTITUENTTYPE LIKE '%Scholarship%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= 'A5633EC1-CD7F-4DCF-8423-D2FFCEC0F266' WHERE CONSTITUENTTYPE LIKE '%Support Fund%'
UPDATE USR_UA_DESIGNATIONLEVEL_EXT SET CONSTITUENTTYPECODEID= '5F471205-8915-4FA0-B25E-D72AE1B3715C' WHERE CONSTITUENTTYPECODEID IS NULL

SELECT * FROM USR_UA_DESIGNATIONLEVEL_EXT

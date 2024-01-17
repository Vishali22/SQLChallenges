-- concept: Checking with Self join if a leaf or parent is present with Case statement in SQL.
-- If a value has no Parent --> then it is the 'root', if a value has both parent and child then it is 'Inner', if it has a parent and no child then it is 'leaf'

SELECT DISTINCT M.N, CASE
WHEN M.P IS NOT NULL THEN 
    CASE WHEN C.N IS NOT NULL THEN 'Inner'
    ELSE 'Leaf' END
ELSE 'Root' END
FROM BST AS C
RIGHT JOIN BST AS M
ON C.P = M.N
ORDER BY M.N;

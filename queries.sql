SELECT * FROM owners
 FULL JOIN vehicles ON vehicles.owner_id = owners.id;



SELECT first_name, last_name, COUNT(vehicles) FROM owners
 JOIN vehicles ON vehicles.owner_id = owners.id
  GROUP BY owners.id
   ORDER BY COUNT(vehicles);



SELECT first_name, last_name, AVG(price)::integer, COUNT(vehicles) FROM owners
 JOIN vehicles ON vehicles.owner_id = owners.id
  GROUP BY owners.id
   HAVING COUNT(vehicles) > 1 AND AVG(price) > 10000
    ORDER BY first_name DESC;
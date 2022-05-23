-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- Ejercicio 1*

function puntoEnElCirculo( cx, cy, rad, x, y )
	x = 1
	y = 1
	cx = 0
	cy = 1
	rad = 2

	if ((x - cx) * (x - cx) + (y - cy) * (y - cy) <= rad * rad) then -- formula
		print("Dentro", puntoEnElCirculo)
	else
		print("Fuera")
	end
end

-- Ejercicio 2 

-- Ejerccio 3*

function puntoEnElTriangulo( x1, y1, x2, y2, x3, y3 )
	return math.abs((x1*(y2-y3) + x2*(y3-y1) + x3(y1-y2))/2)

function adentro(x1, y1, x2, y2, x3, y3, x, y)
	A = area(x1, y1, x2, y2, x3, y3)
	A1 = area(x, y,x1, y1, x2, y2, x3, y3)
	A2 = area(x1, y1, x, y, x3, y3)
	A3 = area(x1, y1, x2, y2, x, y)

	return (A == A1 + A2 + A3)

	if(adentro(0,0,20,0,10,30,10,15))
		print("Adentro") then 
	else
		print("Afuera")
// This is a CodeQL query file.

// Import the tutorial library.
// See https://codeql.github.com/docs/writing-codeql-queries/ql-tutorials/#ql-tutorials.
import tutorial

/*
from Person p
select p
*/

//select "hello world"

/*
from int x, int y
where x=6 and y=7
select x*y
*/

//select 100.log().sqrt()

//select "lgtm".length()

/*
from string strLGTM
where strLGTM="lgtm"
select strLGTM.length()
*/

//sine of the minimum of 3^5 (3 raised to the power 5) and 245.6.
//select ((3.pow(5)).minimum(245.6)).sin()

/*
from boolean x
where x=false
select x.booleanNot()
*/

/*
from date x, date y
where x="10/06/2017".toDate() and y="28/09/2017".toDate()
select x.daysTo(y)
*/

//Pythagorean Triples
/*
from int x, int y, int z
where x in [1..10] and y in [1..10] and z in [1..10] and x*x + y*y = z*z
select x,y,z
*/

class SmallInt extends int{
    SmallInt(){this in [1..10]}
    int square(){result = this*this}
}

from SmallInt x, SmallInt y, SmallInt z
where x.square() + y.square() = z.square()
select x,y,z
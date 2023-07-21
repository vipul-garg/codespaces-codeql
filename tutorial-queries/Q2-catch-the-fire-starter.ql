// Solving the detective task of catch-the-fire-starter
import tutorial

predicate isSouthern(Person p){
    p.getLocation()="south"
}

predicate isBald(Person p){
    not exists(string c | p.getHairColor()=c)
}

class Southerner extends Person{
    Southerner(){isSouthern(this)}
}

class Child extends Person{
    //Characteristic predicate
    Child(){this.getAge()<10}
    //member predicate
    override predicate isAllowedIn(string region){
        region=this.getLocation()
    }
}

//Using predicate
/*
from Person p
where isSouthern(p)
select p
*/

//Using the class -- more efficient
/*
from Southerner s
select s
*/

from Southerner s
where s.isAllowedIn("north") and isBald(s)
select s,s.getAge()
// Solving the detective task of Finding the rightful Heir

import tutorial

//Find the parrent
/*
from Person p
select parentOf(p) + " is the parent of " + p
*/

//Find the Sibling of King Basil
/*
from Person p
where parentOf("King Basil")=parentOf(p) and
    not p="King Basil" and
    not p.isDeceased()
select p
*/
//==> None of the Sibling is alive

//Write a predicate to find the children of a person
Person childOf(Person p){
    p = parentOf(result)
}

//Write a predicate to find the ancestor of a person
// This is an example of 'recusrsion'
// parentOf is used twice, this is called 'transitive closure of operation'
Person ancestorOf(Person p){
    result = parentOf(p) or
    result = parentOf(ancestorOf(p))
}

//Find the relatives of a person
Person relativeOf(Person p){
    parentOf*(result)=parentOf*(p)
}

//Did the King's siblings have children
/*
from Person p
where parentOf("King Basil")=parentOf(p) and
    not p="King Basil"
select childOf(p)
//==>There are no children of the Kin's Siblings
*/

//Has a criminal record
predicate hasCriminalRecord(Person p){
    p = "Hester" or
    p = "Charlie" or
    p = "Hugh" 
}

//Find a relative who is alive
// A Person is a relative if they have a common ancestor
from Person p
where
    not p.isDeceased() and
    p = relativeOf("King Basil") and
    not hasCriminalRecord(p)
select p
//==> Clara
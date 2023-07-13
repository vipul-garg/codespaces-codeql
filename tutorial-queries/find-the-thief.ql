// Solving the detective task of find-the-thief
/**********
Question								                        Answer
--------------------------------------------------------------------------------
Is the thief taller than 150 cm?					                yes
Does the thief have blond hair?						                no
Is the thief bald?							                        no
Is the thief younger than 30?						                no
Does the thief live east of the castle?					            yes
Does the thief have black or brown hair?				            yes
Is the thief taller than 180cm and shorter than 190cm?			    no
Is the thief the oldest person in the village?				        no
Is the thief the tallest person in the village?				        no
Is the thief shorter than the average villager?				        yes
Is the thief the oldest person in the eastern part of the village?	yes
************/

import tutorial

from Person t
where 
    /*1*/t.getHeight() > 150 and
    /*2*/not t.getHairColor()="blond" and
    /*3*/exists (string c | t.getHairColor()=c) and
    /*4*/not t.getAge() <30 and
    /*5*/t.getLocation() ="east" and
    /*6*/(t.getHairColor()="black" or t.getHairColor()="brown") and
    /*7*/not (t.getHeight()>180 and t.getHeight()<190) and
    /*8*/exists (Person p | p.getAge() >t.getAge()) and
    /*9*/not t=max(Person p | | p order by p.getHeight()) and
    /*10*/ t.getHeight()<avg(Person p | | p.getHeight()) and
    /*11*/ t=max(Person p |p.getLocation()="east"|p order by p.getAge())
select "The thief is " + t + "!"
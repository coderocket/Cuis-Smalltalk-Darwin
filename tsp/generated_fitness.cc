{ 
rules[0].location = 217;
rules[0].weight = 1.0;
rules[0].score = 0;

rules[0].score += sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) { return 5; }); 
}

{ 
rules[1].location = 229;
rules[1].weight = 1.0;
rules[1].score = 0;

rules[1].score -= tour(an_instance, an_instance+GENIE_N_INSTANCES); 
}

{ 
rules[2].location = 253;
rules[2].weight = 2.0;
rules[2].score = 0;

rules[2].score -= cities(an_instance, an_instance+GENIE_N_INSTANCES); 
}

{ 
rules[3].location = 278;
rules[3].weight = 1.5;
rules[3].score = 0;

rules[3].score -= chain(an_instance, an_instance+GENIE_N_INSTANCES); 
}

{ 
rules[4].location = 302;
rules[4].weight = 0.08;
rules[4].score = 0;

rules[4].score -= eudistance(an_instance, an_instance+GENIE_N_INSTANCES); 
}

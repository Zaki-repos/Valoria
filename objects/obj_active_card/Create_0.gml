
first_contact = true;
collected = false;
is_on = false;

card_properties = getRandomActiveCard();

cardType = card_properties[0];
pop_up = card_properties[1];
imageIndex = card_properties[2];
cardIndex = card_properties[3];
cardAction = card_properties[4];
cooldown = 0 // card_properties[5] * 60 * global.cooldownReduction;



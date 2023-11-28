/// @description Insert description here
// You can write your code in this editor
//enum, string, index, func

first_contact = true;
second_visit = false;

card_properties = getRandomPassiveCard();

cardType = card_properties[0];
pop_up = card_properties[1];
imageIndex = card_properties[2];

curveAsset = CardAnim;
curvePos = 0;
curveSpeed = 0.02;
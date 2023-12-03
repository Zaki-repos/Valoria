/// @description Insert description here
// You can write your code in this editor
//enum, string, index, func

collected = false;

first_contact = true;

card_properties = getRandomPassiveCard();

cardType = card_properties[0];
pop_up = card_properties[1];
imageIndex = card_properties[2];

sprite_index = global.cardDesign[imageIndex];

curveAsset = CardAnim;
curvePos = 0;
curveSpeed = 0.02;
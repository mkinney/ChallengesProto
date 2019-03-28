var my_speed = 6;

if (challenge == 0) {
	// only move player if not in a challenge
	if (keyboard_check(vk_up)) {
		y = y - my_speed;
	}
	if (keyboard_check(vk_down)) {
		y = y + my_speed;
	}
	if (keyboard_check(vk_left)) {
		x = x - my_speed;
	}
	if (keyboard_check(vk_right)) {
		x = x + my_speed;
	}
} else {

	var last = keyboard_lastchar;
	var valid = false;

	switch (string_upper(last)) {
		// valid responses
		case "A":
		case "B":
		case "C":
		case "Q": // quit
		case "1":
		case "2":
		case "3":
			valid = true;
			break;
	}

	if (valid) {
		switch (challenge) {
			case 1:
				// there is probably a better way to find out which challenge we are in
				x = oChallenge1.x - 66;
				y = oChallenge1.y - 66;
				break;
			case 2:
				x = oChallenge2.x - 66;
				y = oChallenge2.y - 66;
				break;
		}
		
		// allow them to "quit" out of the challenge
		if (string_upper(last) != "Q") {
			responses[challenge - 1] = last;
		}

		challenge_solved();
		challenge = 0;
	}
}
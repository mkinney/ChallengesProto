for (var i = 0; i < oPlayer.total_challenges; i++) {
	var solved = 0;
	if (answers[i] == responses[i]) {
		solved = 1;
	}
	switch (i) {
		case 0: sChallenge1.image_index = solved; break;
		case 1: sChallenge2.image_index = solved; break;
	}
}
draw_self();

if (challenge >= 0) {
	xx = 20;
	yy = 20;
	b = c_yellow;
	draw_rectangle_color(xx, yy, 500, 300, b, b, b, b, false);
	t = c_black;
	var solved = "";
	if (answers[challenge] == responses[challenge]) {
		solved = " - SOLVED!";
	}
	draw_text_color(xx + 20, yy + 10, "Challenge " + string(challenge) + solved, t, t, t, t, true);
	draw_text_color(xx + 10, yy + 30, challenges[challenge], t, t, t, t, true);
}
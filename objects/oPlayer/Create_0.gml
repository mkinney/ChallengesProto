challenge = 0;
total_challenges = 3;

challenges = array_create(total_challenges, noone);
challenges[0] = "How many dozen is twelve?";
challenges[1] = "How many in a pair?";
challenges[2] = "What letter is associated with ALPHA?";

answers = array_create(total_challenges, noone);
answers[0] = "1";
answers[1] = "2";
answers[2] = "A";

responses = array_create(total_challenges, noone);
responses[0] = "";
responses[1] = "";
responses[2] = "";

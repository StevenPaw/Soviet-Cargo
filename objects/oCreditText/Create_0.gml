bigFont = fCreditBig;
smallFont = fCreditSmall;
spaceToHeader = 15;
spaceToTitle = 60;
spaceBetweenCredits = 30;
activeText = -1;
creditCount = 0;

CreditText[0] = "";
CreditLink[0] = "";

//Function to add new Credits
function newCredit(text, link) {
	CreditText[creditCount] = text;
	CreditLink[creditCount] = link;
	creditCount += 1;
}

//Creating all Credits (text, link)
newCredit("Created for the first gamedesign semester at", "");
newCredit("University of Applied Sciences Europe in Hamburg", "https://www.ue-germany.com/");
newCredit("", "");
newCredit("Entity-Art:", "");
newCredit("Hai Lam Dang", "");
newCredit("", "");
newCredit("Scripting:", "");
newCredit("Timur Lüdemann", "");
newCredit("", "");
newCredit("Leveldesign & UI:", "");
newCredit("Steffen Kahl", "https://stevenpaw.de/sp-portfolio/");
newCredit("", "");
newCredit("Soundtrack:", "");
newCredit("Valentin Muchow", "");
newCredit("", "");
newCredit("Sounds:", "");
newCredit("Kenney.nl", "https://www.kenney.nl/");
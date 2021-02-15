bigFont = fCreditBig;
smallFont = fCreditSmall;
smallBoldFont = fCreditSmallBold;
spaceToHeader = 15;
spaceToTitle = 60;
spaceBetweenCredits = 30;
activeText = -1;
creditCount = 0;

CreditText[0] = "";
CreditLink[0] = "";
CreditHeader[0] = false;

//Function to add new Credits
function newCredit(text, link, header) {
	CreditText[creditCount] = text;
	CreditLink[creditCount] = link;
	CreditHeader[creditCount] = header;
	creditCount += 1;
}

//Creating all Credits (text, link)
newCredit("Created for the first gamedesign semester at", "", false);
newCredit("University of Applied Sciences Europe in Hamburg", "https://www.ue-germany.com/" , false);
newCredit("", "", false);
newCredit("Entity-Art:", "", true);
newCredit("Hai Lam Dang", "https://www.pixiv.net/en/users/13745794" , false);
newCredit("", "", false);
newCredit("Scripting:", "", true);
newCredit("Timur Lüdemann", "https://www.linkedin.com/in/timur-l%C3%BCdemann-57b876206/", false);
newCredit("", "", false);
newCredit("Leveldesign & UI:", "", true);
newCredit("Steffen Kahl", "https://stevenpaw.de/sp-portfolio/", false);
newCredit("", "", false);
newCredit("Soundtrack:", "" , true);
newCredit("Valentin Muchow", "https://www.instagram.com/valle137m/", false);
newCredit("", "", false);
newCredit("Sounds:", "", true);
newCredit("Kenney.nl", "https://www.kenney.nl/" , false);
newCredit("Zapsplat", "https://www.zapsplat.com/", false);
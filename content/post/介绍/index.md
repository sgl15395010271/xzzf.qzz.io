---
title: 猜单词游戏
description: just have fun
date: 2026-06-18 00:00:00+0000
weight: 9998
tags:
    - 游戏项目
---

```cpp
#include<iostream>
#include<ctime>
#include <windows.h>
using namespace std;
typedef long long ll;
using namespace std;

// 红字
void red(char s) {
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_RED);
    cout << s;
    // 恢复白色
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);
}

// 绿字
void green(char s) {
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_GREEN);
    cout << s;
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);
}
// 黄字
void yellow(char s) {
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_RED | FOREGROUND_GREEN);
    cout << s;
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), 7);
}
string js="欢迎来到猜单词游戏,词库为1573(4字符单词)+749(5字符单词),你需要输入一个4字符单词或5字符单词,若位置正确,该字符显示为绿色,若位置不正确,但该字符在单词里,该字符显示为黄色,否则该字符显示为红色,词库可能存在问题,你也可以提出疑问,长度为5或6,第一个字符为?,后面为一个单词,不确定的字符用?代替,你也可以再猜测的单词前加入一个*,是该单词即使不在词库,只要长度合法,也能进入判断环节";
string s4[]={"0","July","abet","able","ably","abut","aced","ache","acid","acme","acre","acta","adam","addl","adop","afix","aged","agin","agog","agon","ahem","aide","ails","aimy","airn","airy","ajar","alar","alga","ally","alms","also","alto","alum","amaz","amid","amok","anew","ankh","anon","anti","apat","aper","apex","aqua","arch","aria","arid","armo","armt","army","arts","ashy","asky","atom","atop","aunt","auto","avow","awed","awry","axel","axle","ayre","baby","back","bade","bail","bait","bake","bald","bale","bali","balk","ball","balm","band","bane","bang","bani","bank","barf","bark","barn","base","bash","bask","bass","bath","bats","batt","baux","baza","bead","beam","bean","bear","beat","beau","beck","beef","beer","bell","belt","bend","bene","beni","bent","berg","best","beta","bevy","bias","bide","bien","bike","bill","bind","bird","bite","bith","blab","blam","blan","blem","blip","blob","bloc","blog","blot","blow","blub","blue","blur","boar","boat","bode","bogy","boil","bold","bole","boll","bolt","bomb","bond","bone","bong","boob","book","boom","boon","boot","bore","born","boss","bote","both","bott","boug","brad","brag","bran","brat","brav","bray","brew","brig","brim","brut","buck","budg","buff","bulb","bulk","bull","bunt","buoy","burl","burn","bury","bush","bust","busy","buzz","byte","cack","cadc","cage","cake","call","calm","camp","cane","cape","card","care","carr","cart","case","cash","cast","cate","cauc","caul","cave","cavy","cell","cent","cert","cess","chat","chaw","chef","chem","chew","chic","chin","chip","chit","choo","chop","chow","chub","chug","chum","ciao","ciel","cite","city","clad","clap","clar","clef","clin","clip","clob","clod","clog","clon","clot","cloy","club","clue","clug","coal","coat","coax","cobb","cock","coco","code","coff","cogn","coil","coin","cold","cole","coll","colo","colt","comb","come","comp","cone","cong","conk","conn","cons","cont","cook","cool","coop","cope","copy","cord","core","cork","corn","corp","corr","cost","cote","coup","cove","crab","cram","crap","cray","crew","crib","crit","crop","cube","cubs","cuck","cuff","curb","cure","curl","curt","cush","cust","cute","cyst","dace","daft","dagg","dagh","dair","dais","damn","damp","dand","dang","dapf","dare","dark","dash","data","date","daub","dawn","daze","dead","deal","dean","dear","debf","debt","deck","decl","deem","deep","deer","defy","denv","deny","desk","deso","desp","dest","deva","devo","dewk","dial","diam","dice","dick","dict","diet","dine","ding","dirt","disc","dish","disk","dits","dive","divi","dixk","dock","docu","dodd","dole","doll","dome","domi","done","dong","doom","door","dope","dorm","dose","dote","dove","down","dowr","doze","drag","dram","draw","drew","drib","drip","drop","drou","drow","drug","drum","dubb","duck","duct","duds","duet","duke","dull","dumb","dump","dune","dunk","durf","dust","duty","each","earl","earn","ease","east","easy","echo","edge","edit","eels","efet","egga","eigh","eire","elan","elba","else","emit","envy","epic","ergo","eros","errr","esse","etal","etch","euro","even","ever","eves","exam","exec","exil","exim","exit","expo","face","fact","fade","fail","fair","fake","fall","fame","fang","fare","farm","fast","fatn","faun","fave","fear","feat","feeb","feed","feel","feld","fema","fend","ferf","fern","fest","fibe","fick","fief","file","fill","film","find","fine","fire","firm","fish","fist","fitz","five","fixe","flag","flak","flan","flat","flee","flex","flip","flop","flor","flow","fluo","flur","flux","flya","foam","fobi","fold","folk","foll","fond","food","fool","foot","ford","fore","fork","form","fort","foul","four","fowl","foxe","frac","frag","fray","frea","free","freq","fret","froe","frog","from","frou","frow","fuel","full","fume","fund","funk","furf","fuse","fuss","fuzz","gain","gala","gale","gall","game","gamo","gang","gape","gapf","garb","gard","gare","garf","gasp","gate","gaud","gave","gaye","gaze","gear","geez","gelo","gemo","gene","gent","gerf","germ","gest","gett","gibe","gift","gild","gill","gimp","gird","girl","give","glad","glam","glea","glim","glis","gloo","glop","glow","glue","glut","gnat","gnaw","goad","goal","gody","gold","golf","gond","gone","gong","good","goof","goon","goop","gore","gosh","gost","gota","grab","grad","graf","gram","grav","gray","grid","grim","grip","grog","grow","grub","gull","gush","gust","gyma","gyre","hack","hade","hail","hair","half","hall","halt","hame","hand","hang","hank","hans","hard","hare","harm","hart","hash","hate","haul","have","hawk","haye","head","heal","heap","hear","heat","heck","heel","hell","helm","help","hemp","henn","hent","herb","herd","here","hero","hers","hert","hexn","hick","hide","high","hike","hill","hint","hire","hiss","hitn","hive","hoax","hock","hold","hole","holm","home","hone","hood","hoof","hook","hoop","hope","hora","horn","host","hour","hove","howe","huff","huge","hunt","hurl","hurt","hush","hyke","hype","iced","icky","icon","idea","idle","illi","inch","incl","info","ingo","innu","into","irem","iris","iron","isle","itch","item","jack","jade","jagg","jail","jane","jant","jazz","jeep","jeer","jell","jest","jibe","jiff","jigs","jilt","jive","joan","jock","jody","jogg","join","joke","jolt","josh","jowl","judo","jugg","juke","jump","juno","jury","just","jute","keen","keep","kest","kick","kill","kind","king","kite","kith","knee","knel","knit","knob","knok","knot","know","kola","koma","kook","kope","kore","kosk","koto","kowt","krab","kris","kron","kudo","kuhl","kull","kunk","kurf","kurt","kwik","labe","lace","lack","lady","lagg","lake","lame","lamp","land","lane","lang","lard","lark","last","late","laud","lava","lawn","lead","leaf","leak","lean","leap","left","lend","lens","lest","liar","lice","lick","lief","life","lift","ligu","like","line","link","lint","lion","lire","list","lite","live","load","loaf","loan","lobe","lock","loco","loge","lone","long","look","loop","loot","lord","lore","lose","loss","lost","loth","loud","love","lowe","luck","luke","lull","lump","lune","lung","lure","lush","lust","lute","luxe","lyre","mach","mack","made","maid","mail","main","make","male","mall","mane","manx","many","mark","marl","mars","mask","mass","mast","mate","math","matt","maul","maze","mead","meal","mean","meas","meat","meet","melt","mend","menu","merc","mere","mesh","mess","mete","mica","mice","micr","mild","mile","milk","mill","mime","mind","mine","mint","miss","mist","mite","moan","mock","mode","modi","mold","mole","moll","monk","mono","moon","more","morn","mort","moss","most","mote","move","much","muck","mule","mull","mush","must","mute","mutt","nail","name","nape","napk","narr","nash","nast","nave","navy","near","neat","neck","need","neem","nest","news","newt","next","nice","nick","nigh","nine","nite","nitr","nock","nogg","noil","noll","nomb","none","nono","nood","nook","noon","nope","norm","nose","note","oath","obey","oink","okay","once","only","onto","open","oper","oval","over","pace","paci","pack","page","paid","pain","pair","pale","palm","pane","pant","pare","park","part","pass","past","pate","patr","pawn","peak","pear","peat","peck","peel","peep","penn","pent","perf","perm","pert","phew","phiz","pick","picn","pier","pike","pile","pili","pill","pilo","pine","pink","pint","pipe","pith","piti","pity","plan","play","plea","plow","ploy","plug","plum","plus","poem","poin","poke","poll","pond","pont","pool","poor","pope","port","pose","posh","post","pota","pour","pout","powe","pray","pree","prep","prim","pris","priv","prob","prod","prof","prog","prom","prop","pros","prot","prow","puck","pude","puff","pull","pulp","punt","pure","purg","push","quak","qual","quat","quay","quip","quit","quiz","race","rack","rage","raid","rail","rain","rake","rand","rang","rank","rare","rash","rate","raze","read","real","reap","rear","reck","reef","reel","rely","rend","rent","repo","rest","rice","rich","ride","rife","rill","ring","rink","rise","risk","rite","road","rock","roll","roof","rook","room","root","rope","rose","rout","rubb","rude","rueg","ruin","rule","rung","rush","rusk","russ","rust","sack","safe","sail","sake","sale","salt","same","sand","sang","sash","sate","save","scab","scad","scan","scar","schd","scot","scud","scum","scun","scut","seal","seam","sear","seat","seed","seek","seem","seen","seep","self","sell","send","shad","sham","shan","shat","shed","shel","shen","shib","shid","ship","shir","shiv","shoe","shop","shot","show","shud","shun","shut","sick","side","sigh","sign","silk","sill","simp","sine","sing","sink","site","size","skid","skim","skin","skip","skir","skit","slab","slag","slam","slan","slap","slat","slay","slea","slew","slid","slim","slip","sloe","slop","slot","slow","slug","slum","smak","smat","smir","smit","smog","smoo","smop","snag","snap","snat","sned","snee","snip","snob","snog","snow","snub","soar","sock","soft","soil","sold","sole","soln","some","song","soon","soot","sore","sort","soul","soup","sour","spam","span","spat","spec","spen","sper","spet","spin","spit","spud","spue","spur","squa","sque","stab","stag","star","stat","stay","stea","stem","step","stim","stir","stit","stop","stra","stub","stud","stun","suck","suff","suit","sunk","sure","surf","surt","swab","swag","swan","swap","swat","sway","swel","swep","swif","swim","swob","swop","swot","tabl","tack","tail","take","tale","talk","tall","tame","tang","tank","tape","tard","tare","task","tatn","taut","teak","team","tear","tech","teen","teep","tele","tell","temp","tend","tent","term","test","text","than","that","thaw","thea","thee","them","then","theo","they","thin","thir","this","thro","thus","tick","tier","tile","till","tilt","time","tint","tiny","tire","toad","toil","tone","tong","took","tool","toom","tore","toss","tote","tour","towe","town","trap","tray","trea","tree","trek","trem","tria","trib","trid","trie","trig","trim","trio","trip","trod","trop","trot","trou","true","trug","tube","tuck","tuft","tulk","tuna","tune","turk","turn","turt","twin","twit","tyre","uber","ugly","unal","unap","unaw","unax","unay","unbi","unbo","unbr","unbu","unca","unch","uncl","unco","unit","unlo","unly","unmo","unna","unne","unni","unno","unpe","unpi","unpl","unpo","unpr","unpu","unra","unri","unro","unru","unsa","unsh","unsn","unsp","unsq","unss","unsu","unsw","unsy","unta","unte","unti","unto","untr","unts","unty","unwa","unwe","unwh","unwi","unwo","unwr","upon","urge","used","user","util","vaca","vagu","vain","vale","valv","vamp","vane","vant","vary","vase","vast","vave","veal","veer","vend","vent","vera","vers","vert","very","vest","vial","vice","vile","vilk","vill","vine","vint","viol","visa","visc","vise","void","vole","volt","volv","vote","wade","wage","wagw","wait","wake","wale","walk","wall","wand","wang","want","ward","ware","warm","warn","warp","warr","wash","wasp","wast","wave","weak","wean","wear","weed","week","weep","weld","welk","well","went","west","whal","wham","what","when","wher","whil","whip","whit","wick","wide","wife","wild","will","wind","wine","wing","wink","winy","wipe","wire","wise","wish","with","wolf","wood","wool","word","work","worm","worn","wrap","wras","wrig","yard","year","your"}; 
string s5[]={"0","aback","abase","abash","abate","abbey","abbot","abhor","abide","abled","abode","about","above","absce","abyss","acorn","acrid","acryl","actor","acute","adapt","adder","adept","adopt","adore","adorn","adult","aerie","afire","afoul","after","again","agape","agate","agent","agile","aglow","agree","ahead","aidan","ailer","aisle","aitch","alarm","album","alert","alias","alibi","alien","align","alike","alive","allay","allot","allow","alloy","aloft","alone","along","aloof","alpha","alter","amass","amber","amble","ameba","amend","amiss","amity","amuse","anear","angel","anger","angle","angry","angst","ankle","annoy","annul","anode","answe","antic","anvil","apple","apply","apron","aptly","arbor","arbys","arcus","arena","argon","arias","arise","armad","armor","array","arson","artel","ashby","aside","asker","assay","asset","aster","astir","atlas","atmel","atoll","attic","audio","audit","augur","avail","avant","avert","avian","avoid","await","awake","award","aware","awash","awful","axion","azure","babel","baber","bacca","bagel","baise","balan","baled","baler","balky","bally","balmy","bandy","bangs","banjo","banky","bansh","barbs","barel","barge","barky","barns","baron","barre","basen","basic","basin","baste","batch","bathe","bathy","baton","bayou","beach","beamy","beast","beaty","bedel","beefy","befit","began","begat","begin","begot","begum","being","belch","belfy","belie","below","bench","bendy","beret","berry","beset","betta","bevel","bible","bigot","bilge","bingo","binio","blabs","black","blade","blame","bland","blank","blare","blast","blaze","bleak","bleat","blend","bless","blimp","blind","bling","bloke","blond","blood","bloom","blush","board","boost","booze","bough","bound","brace","brack","braid","brain","brake","brand","brass","brawl","bread","break","breed","bribe","brick","bride","brief","brine","bring","brink","brisk","brite","broad","broil","brook","broom","broth","brown","bruin","brunt","brush","build","bunch","burst","cable","cache","camel","canal","canny","caper","catch","cause","cease","cedar","chair","chalk","charm","chart","chase","cheat","check","chess","chest","chief","child","chill","chock","chord","chore","chuck","cigar","clack","claim","class","clean","clear","cleat","clerg","click","clift","climb","clock","close","cloth","cloud","clout","clove","cluck","clump","clung","coach","coast","cobra","colla","color","comic","coral","couch","cough","could","count","court","cover","crack","crade","craft","crane","crank","crash","crate","crave","crawl","crazy","creak","cream","crepe","crime","crisp","criss","cross","crowd","crown","cruel","crumb","crump","crush","curse","curve","cycle","dance","death","decay","decor","delay","dense","depth","doubt","douse","dowse","dozen","draft","drain","drake","drama","dread","dream","drear","dress","drift","drill","drink","drive","dross","drunk","dutch","eagle","early","earth","eight","elder","elfin","ember","empty","enema","enemy","enjoy","enter","equal","erase","error","essay","event","every","exact","exist","extra","faint","fault","feign","feint","fello","fence","ferry","fetch","fever","field","fifth","fifty","fight","final","first","flame","flare","flash","fleet","flesh","flick","fling","float","flock","flood","floor","floss","flota","fluid","flush","focus","force","forum","found","frame","franc","frank","fraud","freak","fresh","friar","frizz","frond","front","frost","fruit","funny","gauge","gaunt","giant","glade","glare","glass","glaze","glide","glint","grade","grain","grant","grape","graph","grasp","grass","grate","grave","graze","great","green","greet","grief","griff","grill","grind","groom","grope","gross","group","grunt","guard","guess","guest","guide","guild","guilt","habit","happy","haunt","heart","heavy","horse","hotel","house","human","hurry","ideal","igloo","image","imply","index","indie","issue","jeans","jewel","joint","judge","juice","knelt","knife","knock","label","labor","lapse","large","later","latte","laugh","layer","learn","lease","least","leave","level","light","limit","local","logic","loose","lough","louse","loyal","lucky","lunch","magic","major","march","match","maybe","mercy","merge","merit","merry","metal","meter","minor","model","money","month","moral","motor","mouse","mouth","music","nerve","never","night","noble","noise","north","notch","novel","nurse","paint","peace","pique","place","plain","plank","plant","pleat","plumb","plump","point","pound","press","price","prick","pride","print","prior","prize","prune","quell","quest","quick","raise","reach","revel","robin","round","scale","scare","scoff","scold","scoop","scope","score","scrap","scree","screw","scrub","scuff","scull","shake","shall","shape","shard","share","sharp","shave","sheep","sheer","shift","shine","shock","shoot","shore","short","skate","skirt","slack","slash","sleek","sleep","sleet","slice","sling","slung","slunk","slurp","small","smart","smash","smell","smelt","smoke","smosh","smote","snare","snarl","sneak","sniff","snort","snuff","solid","sound","souse","south","space","spade","spare","spark","spawn","speak","spear","speed","spell","spend","sphin","spire","sprit","sprog","spunk","squad","squar","squid","stack","staff","stain","stair","stake","stale","stamp","stand","start","steal","steam","steel","steep","steer","steri","stick","stiff","still","sting","stock","stoll","stoma","stone","stool","store","stork","storm","story","stout","stove","strap","stray","strew","strip","strob","strow","study","stuff","stung","stunt","surge","swear","sweat","sweep","sweet","swell","swing","swirl","swish","sword","swore","taste","teach","theft","their","title","toast","touch","trace","track","trade","trail","train","tramp","trash","tread","treat","trend","trick","trite","troll","troop","trunk","trust","twirl","twist","unman","unpar","unsta","unste","unsti","unsto","unstr","unsub","usual","villa","waste","watch","water","weigh","whack","where","which","whirl","whisk","white","woman","world","worry","worth","would","wreck","wrest","write","wrong","wrote","young","youth"};
bool ch(string x,string y,ll len)
{
	for(int i=0;i<len;i++)
	{
		if(x[i]=='?') continue;
		else{
			if(x[i]!=y[i]) return 0;
		}
	}
	return 1;
}
int main()
{
	ll sum5=749;
	ll sum4=1573;
	cout<<js<<endl;
	string s;
	srand(time(0));
	ll n=rand()%2,len=0;
	//n=0;
	string ans;
	if(n==0) 
	{
		n=rand()%sum4;
		ans=s4[n];
		len=4;
	}
	else 
	{
		n=rand()%sum5;
		ans=s5[n];
		len=5;
	}
	ll step=0;
	//cout<<"ans="<<ans<<endl;
	cout<<"本局需猜测单词为"<<len<<"字符单词"<<endl;
	while(cin>>s)
	{
		bool okk=0;
		++step;
		bool ok=1;
		if(s==ans)
		{
			cout<<"答案正确,你用了"<<step<<"步"; 
			Sleep(2000); 
			return 0;
		}
		if(s[0]=='*')
		{
			okk=1;
			s.erase(0,1);
		}
		if(s[0]=='?')
		{
			if(!(s.size()!=5||s.size()!=6))
			{
				cout<<"提问有误";
				continue; 
			}
			s.erase(0,1);
			if(len==4)
			{
				if(s.size()!=4) 
				{
					cout<<"提问有误"<<endl;
					continue; 
				}
				cout<<"4字符单词:";
				for(int i=1;i<=sum4;i++)
				{
					if(ch(s,s4[i],4)) cout<<s4[i]<<" ";	
				}			
			}
			else
			{
				if(s.size()!=5) 
				{
					cout<<"提问有误"<<endl;
					continue; 
				}
				cout<<endl<<"5字符单词:";
				for(int i=1;i<=sum5;i++)
				{
					if(ch(s,s5[i],5)) cout<<s5[i]<<" ";
				}				
			}

			cout<<endl;
		}  
		else if(ans.size()==4)
		{
			for(int i=1;i<=sum4;i++)
			{
				if(s==s4[i]||okk)
				{
					ok=0;
					ll a[4]={0,0,0,0};
					for(int i=0;i<4;i++)
					{
						for(int j=0;j<4;j++)
						{
							if(s[i]==ans[j])
							{
								if(i==j) a[i]=4;
								else a[i]=(a[i]==4?4:3);
							}
						}
					}
					for(int i=0;i<4;i++)
					{
						if(a[i]==4) green(s[i]);
						else if(a[i]==3) yellow(s[i]);
						else red(s[i]);
					}
					cout<<endl;
					break;
				}
			}
			if(ok) cout<<"重新输出,你输入的单词在词库中不存在"<<endl; 
		}
		else if(ans.size()==5)
		{
			for(int i=1;i<=sum5;i++)
			{
				if(s==s5[i]||okk)
				{
					ok=0;
					ll a[5]={0,0,0,0};
					for(int i=0;i<5;i++)
					{
						for(int j=0;j<5;j++)
						{
							if(s[i]==ans[j])
							{
								if(i==j) a[i]=4;
								else a[i]=(a[i]==4?4:3);
							}
						}
					}
					for(int i=0;i<5;i++)
					{
						if(a[i]==4) green(s[i]);
						else if(a[i]==3) yellow(s[i]);
						else red(s[i]);
					}
					cout<<endl;
					break;
				}
			}
			if(ok) cout<<"重新输出,你输入的单词在词库中不存在"<<endl; 
		}
	}
	return 0;
}

```

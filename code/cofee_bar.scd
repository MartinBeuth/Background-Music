s.boot;
	Server.killAll;


----------------------------------------technical----------------------------------------------------------------------------------
~pourcoffee={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/pour_coffee.wav");
	var player=PlayBuf.ar(2, sampleload, -5.midiratio,loop:1);
	var width=LFSaw.kr(1/10).range(-2,1.1);
	var position=LFSaw.kr(1/41).range(-1,1);
	var vol=LFSaw.kr(1/80).range(0.01,0.05);


	Splay.ar(player.scramble,width,vol,center:position);
}

~pourcoffee.play;

~cups={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/cups.wav");
	var player=PlayBuf.ar(2, sampleload, -1.midiratio,loop:1);
	var width=LFSaw.kr(1/10).range(-2,1.1);
	var position=LFSaw.kr(1/37).range(-1,1);
	var vol=LFSaw.kr(1/80).range(0.04,0.15);


	Splay.ar(player.scramble,width,vol,center:position);
}

~cups.play;

~coffeemill={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/coffee_mill.wav");
	var player=PlayBuf.ar(2, sampleload, -1.midiratio,loop:1);
	var width=LFSaw.kr(1/30).range(-2,1.1);
	var position=LFSaw.kr(1/19).range(-1,1);
	var vol=LFSaw.kr(1/80).range(0.04,0.15);


	Splay.ar(player.scramble,width,vol,center:position);
}

~coffeemill.play;

~morecups={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/more_cups.wav");
	var player=PlayBuf.ar(2, sampleload, -1.midiratio,loop:1);
	var width=LFSaw.kr(1/30).range(-2,1.1);
	var position=LFSaw.kr(1/23).range(-1,1);
	var vol=LFSaw.kr(1/80).range(0.04,0.12);


	Splay.ar(player.scramble,width,vol,center:position);
}

~morecups.play;

~machinesready={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/machines_ready.wav");
	var player=PlayBuf.ar(2, sampleload, -3.midiratio,loop:1);
	var width=LFSaw.kr(1/30).range(-2,0);
	var position=LFSaw.kr(1/31).range(-1,1);
	var vol=LFSaw.kr(1/80).range(0.01,0.03);


	Splay.ar(player.scramble,width,vol,center:position);
}

~machinesready.play;

~plates={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/plates.wav");
	var player=PlayBuf.ar(2, sampleload, -3.midiratio,loop:1);
	var width=LFSaw.kr(1/20).range(-2,0);
	var position=LFSaw.kr(1/29).range(-1,1);
	var vol=LFSaw.kr(1/73).range(0.04,0.1);


	Splay.ar(player.scramble,width,vol,center:position);
}

~plates.play;

----------------------------------------voices----------------------------------------------------------------------------------

~somewater={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/some_water.wav");
	var player=PlayBuf.ar(2, sampleload, -3.midiratio,loop:1);
	var width=LFSaw.kr(1/40).range(-2,1.1);
	var position=LFSaw.kr(1/11).range(-1,1);
	var vol=LFSaw.kr(1/45).range(0.01,0.15);

	Splay.ar(player.scramble,width,vol,center:position);

}

~somewater.play;

~hotchoc={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/hot_chocolate.wav");
	var player=PlayBuf.ar(2, sampleload, -2.midiratio,loop:1);
	var width=LFSaw.kr(1/40).range(-2,1.1);
	var position=LFSaw.kr(1/13).range(-1,1);
	var vol=LFSaw.kr(1/45).range(0.01,0.2);

	Splay.ar(player.scramble,width,vol,center:position);

}

~hotchoc.play;

~male={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/male_voice.wav");
	var player=PlayBuf.ar(2, sampleload, 1.midiratio,loop:1);
	var width=LFSaw.kr(1/43).range(-2,1.1);
	var position=LFSaw.kr(1/71).range(-1,1);
	var vol=LFSaw.kr(1/15).range(0.01,0.09);

	Splay.ar(player.scramble,width,vol,center:position);

}

~male.play;

----------------------------------------barrista----------------------------------------------------------------------------------

~barrista={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/baked_goods.wav");
	var player=PlayBuf.ar(2, sampleload, -1.midiratio,loop:1);
	var width=LFSaw.kr(1/43).range(-2,1.1);
	var position=LFSaw.kr(1/11).range(-1,1);
	var vol=LFSaw.kr(1/15).range(0.01,0.09);

	Splay.ar(player.scramble,width,vol,center:position);

}

~barrista.play;

~barrista_two={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/own_blend.wav");
	var player=PlayBuf.ar(2, sampleload, -2.midiratio,loop:1);
	var width=LFSaw.kr(1/43).range(-2,1.1);
	var position=LFSaw.kr(1/13).range(-1,1);
	var vol=LFSaw.kr(1/15).range(0.01,0.05);

	Splay.ar(player.scramble,width,vol,center:position);

}

~barrista_two.play;

~barrista_three={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/anecdote.wav");
	var player=PlayBuf.ar(2, sampleload, 1.midiratio,loop:1);
	var width=LFSaw.kr(1/43).range(-2,1.1);
	var position=LFSaw.kr(1/17).range(-1,1);
	var vol=LFSaw.kr(1/15).range(0.01,0.05);

	Splay.ar(player.scramble,width,vol,center:position);

}

~barrista_three.play;

----------------------------------------chatter----------------------------------------------------------------------------------
~chatter={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/chatter.wav");
	var player=PlayBuf.ar(2, sampleload, -2.midiratio,loop:1);
	var width=LFSaw.kr(1/53).range(-2,1.1);
	var position=LFSaw.kr(1/71).range(-1,1);
	var vol=LFSaw.kr(1/11).range(0.01,0.03);

	Splay.ar(player.scramble,width,vol,center:position);

}

~chatter.play;

~chatter_two={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/chatter_two.wav");
	var player=PlayBuf.ar(2, sampleload, -3.midiratio,loop:1);
	var width=LFSaw.kr(1/53).range(-2,1.1);
	var position=LFSaw.kr(1/71).range(-1,1);
	var vol=LFSaw.kr(1/7).range(0.01,0.03);

	Splay.ar(player.scramble,width,vol,center:position);

}

~chatter_two.play;

~chatter_three={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/chatter_three.wav");
	var player=PlayBuf.ar(2, sampleload, -2.midiratio,loop:1);
	var width=LFSaw.kr(1/53).range(-2,1.1);
	var position=LFSaw.kr(1/71).range(-1,1);
	var vol=LFSaw.kr(1/17).range(0.01,0.03);

	Splay.ar(player.scramble,width,vol,center:position);

}

~chatter_three.play;

----------------------------------------background----------------------------------------------------------------------------------

~ppltalking={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/ppl_talking.wav");
	var player=PlayBuf.ar(2, sampleload, -7.midiratio,loop:1);
	var width=LFSaw.kr(1/40).range(-2,1.1);
	var position=LFSaw.kr(1/991).range(-1,1);
	var vol=LFSaw.kr(1/180).range(0.06,0.14);

	Splay.ar(player.scramble,width,vol,center:position);

}

~ppltalking.play;


~jazz={
	var sampleload=Buffer.read(s, "/Users/Martin/Desktop/Kaffee/snds/jazz.wav");
	var player=PlayBuf.ar(2, sampleload, -10.midiratio,loop:1);
	var width=LFSaw.kr(1/40).range(-2,1.1);
	var position=LFSaw.kr(1/997).range(-1,1);
	var vol=LFSaw.kr(1/180).range(0.02,0.03);

	Splay.ar(player.scramble,width,vol,center:position);

}

~jazz.play;


--------------------------------------------------------------------------------------------------------------------------------
----------------------------------------filter----------------------------------------------------------------------------------





~filter_pourcoffee={
	var freq= LFSaw.kr(1/60).range(900,1200);
	Resonz.ar(~pourcoffee,freq,1);
}
~filter_pourcoffee.play;

~filter_cups={
	var freq= LFSaw.kr(1/45).range(900,1900);
	Resonz.ar(~cups,freq,1);
}
~filter_cups.play;

~filter_somewater={
	var freq= LFSaw.kr(1/61).range(500,1000);
	Resonz.ar(~somewater,freq,1);
}
~filter_somewater.play;

~filter_hotchoc={
	var freq= LFSaw.kr(1/59).range(500,1000);
	Resonz.ar(~hotchoc,freq,1);
}
~filter_hotchoc.play;

~filter_coffeemill={
	var freq= LFSaw.kr(1/47).range(800,1600);
	Resonz.ar(~coffeemill,freq,1);
}
~filter_coffeemill.play;

~filter_morecups={
	var freq= LFSaw.kr(1/51).range(900,2000);
	Resonz.ar(~morecups,freq,1);
}
~filter_morecups.play;

~filter_machinesready={
	var freq= LFSaw.kr(1/31).range(900,2200);
	Resonz.ar(~machinesready,freq,1);
}
~filter_machinesready.play;

~filter_plates={
	var freq= LFSaw.kr(1/71).range(1650,2000);
	Resonz.ar(~machinesready,freq,1);
}
~filter_plates.play;

~filter_male={
	var freq= LFSaw.kr(1/11).range(900,1550);
	Resonz.ar(~male,freq,1);
}
~filter_male.play;

~filter_chatter={
	var freq= LFSaw.kr(1/11).range(900,1550);
	Resonz.ar(~chatter,freq,1);
}
~filter_chatter.play;

~filter_chatter2={
	var freq= LFSaw.kr(1/17).range(900,1550);
	Resonz.ar(~chatter_two,freq,1);
}
~filter_chatter2.play;

~filter_chatter3={
	var freq= LFSaw.kr(1/19).range(900,1550);
	Resonz.ar(~chatter_three,freq,1);
}
~filter_chatter3.play;

~filter_barrista={
	var freq= LFSaw.kr(1/111).range(900,1550);
	Resonz.ar(~barrista,freq,1);
}
~filter_barrista.play;

~filter_barrista2={
	var freq= LFSaw.kr(1/113).range(800,1550);
	Resonz.ar(~barrista_two,freq,1);
}
~filter_barrista2.play;

~filter_barrista3={
	var freq= LFSaw.kr(1/117).range(700,1650);
	Resonz.ar(~barrista_three,freq,1);
}
~filter_barrista3.play;


-----------------------------------------------------------------------------------------------------------------------------
----------------------------------------mix----------------------------------------------------------------------------------

~master = {



	var n_water= LFSaw.kr(1/503).range(0,0.027);
	var n_pourcoffee= LFSaw.kr(1/499).range(0,0.1);
	var n_ppl= 0.011;
	var n_cups= LFSaw.kr(1/601).range(0.08,0.13);
	var n_coffeemill= LFSaw.kr(1/433).range(0,0.097);
	var n_morecups= LFSaw.kr(1/53).range(0.07,0.12);
	var n_machinesready= LFSaw.kr(1/43).range(0.03,0.06);
	var n_plates= LFSaw.kr(1/83).range(0.07,0.13);
	var n_male= LFSaw.kr(1/73).range(0.01,0.06);
	var n_jazz= LFSaw.kr(1/103).range(0.01,0.045);
	var n_chatter= LFDNoise3.kr(1/107).range(0.01,0.035);
	var n_chatter2= LFDNoise3.kr(1/79).range(0.01,0.035);
	var n_chatter3= LFDNoise3.kr(1/29).range(0.01,0.035);
	var n_barrista= LFDNoise3.kr(1/79).range(0.01,0.035);
	var n_barrista2= LFDNoise3.kr(1/107).range(0.01,0.038);
	var n_barrista3= LFDNoise3.kr(1/29).range(0.01,0.038);

	var fader_technical=LFTri.kr(1/43).range(-0.7,0.7);
	var fader_technical2=LFDNoise1.kr(1/47).range(-0.7,0.7);
	var fader_technical3=LFTri.kr(1/31).range(-0.7,0.7);
	var fader_technical4=LFDNoise1.kr(1/29).range(-0.7,0.7);
	var fader_technical5=LFTri.kr(1/57).range(-0.7,0.7);
	var fader_technical6=LFDNoise1.kr(1/13).range(-0.7,0.7);
	var fader_technical7=LFTri.kr(1/17).range(-0.7,0.7);
	var fader_technical8=LFDNoise1.kr(1/7).range(-0.7,0.7);
	var fader_technical9=LFTri.kr(1/23).range(-0.7,0.7);
	var fader_technical10=LFDNoise1.kr(1/57).range(-0.7,0.7);
	var fader_technical11=LFTri.kr(1/173).range(-0.7,0.7);

	var fader_voice=LFSaw.kr(1/23).range(-0.5,0.5);
	var fader_voice2=LFSaw.kr(1/137).range(-0.5,0.5);

	var fader_chatter1=LFDNoise3.kr(1/7).range(-1,1);
	var fader_chatter2=LFDNoise1.kr(1/11).range(-1,1);
	var fader_chatter3=LFDNoise3.kr(1/17).range(-1,1);
	var fader_chatter4=LFDNoise1.kr(1/23).range(-1,1);
	var fader_chatter5=LFDNoise3.kr(1/29).range(-1,1);
	var fader_chatter6=LFDNoise1.kr(1/37).range(-1,1);
	var fader_chatter7=LFDNoise3.kr(1/46).range(-1,1);
	var fader_chatter8=LFDNoise1.kr(1/93).range(-1,1);

	var fader_barrista1=LFDNoise3.kr(1/93).range(-1,1);
	var fader_barrista2=LFDNoise1.kr(1/46).range(-1,1);
	var fader_barrista3=LFDNoise3.kr(1/37).range(-1,1);
	var fader_barrista4=LFDNoise1.kr(1/22).range(-1,1);
	var fader_barrista5=LFDNoise3.kr(1/11).range(-1,1);

	var fader_general=LFSaw.kr(1/11).range(-1,1);
	var fader_general2=LFDNoise1.kr(1/31).range(-0.8,0.8);
	var fader_general3=LFDNoise3.kr(1/37).range(-0.5,0.2);
	var fader_general4=LFDNoise1.kr(1/41).range(-0.5,0.2);
	var fader_general5=LFDNoise3.kr(1/57).range(-0.5,0.4);
	var fader_general6=LFDNoise1.kr(1/53).range(-0.5,0.3);
	var fader_general7=LFDNoise3.kr(1/61).range(-0.5,0.35);
	var fader_general8=LFDNoise1.kr(1/31).range(-0.3,0.3);
	var fader_general9=LFDNoise3.kr(1/61).range(-0.4,0.3);
	var fader_general10=LFDNoise1.kr(1/71).range(-0.3,0.3);
	var fader_general11=LFDNoise3.kr(1/23).range(-0.1,0.1);
	var fader_general12=LFDNoise1.kr(1/101).range(-0.3,0.2);

	var fader_room1=LFSaw.kr(1/7).range(-0.5,0.5);
	var fader_room2=LFSaw.kr(1/123).range(-0.5,0.5);
	var fader_background=LFSaw.kr(1/199).range(-0.5,-0.5);



	var background=(n_ppl*~ppltalking);

	var mix_technical1=(n_pourcoffee*~filter_pourcoffee);
	var mix_technical2=(n_cups*~filter_cups);
	var mix_technical3=(n_coffeemill*~filter_coffeemill);
	var mix_technical4=(n_morecups*~filter_morecups);
	var mix_technical5=(n_machinesready*~filter_machinesready);
	var mix_technical6=(n_plates*~filter_plates);

	var mix_voice1=(n_water*~filter_somewater);
	var mix_voice2=(n_water*~filter_hotchoc);
	var mix_voice3=(n_male*~filter_male);

	var mix_chatter1=(n_chatter*~filter_chatter);
	var mix_chatter2=(n_chatter2*~filter_chatter2);
	var mix_chatter3=(n_chatter3*~filter_chatter3);

	var mix_barrista1=(n_barrista*~filter_barrista);
	var mix_barrista2=(n_barrista2*~filter_barrista2);
	var mix_barrista3=(n_barrista3*~filter_barrista3);

	var mix_music=(n_jazz*~jazz);


	var x_technical=XFade2.ar(mix_technical2,mix_technical1,fader_technical);
	var x_technical2=XFade2.ar(mix_technical3,mix_technical4,fader_technical2);
	var x_technical3=XFade2.ar(mix_technical5,mix_technical6,fader_technical4);
	var x_tech=XFade2.ar(x_technical,x_technical2,fader_technical3);
	var x_tech2=XFade2.ar(x_tech,x_technical3,fader_technical5);
	var x_tech3=XFade2.ar(x_technical2,x_tech,fader_technical6);
	var x_tech4=XFade2.ar(x_tech2,x_tech3,fader_technical7);
	var x_tech5=XFade2.ar(x_technical3,x_tech4,fader_technical8);
	var x_tech6=XFade2.ar(x_tech4,x_tech5,fader_technical9);
	var x_tech7=XFade2.ar(x_technical3,x_tech5,fader_technical10);
	var x_tech8=XFade2.ar(x_tech6,x_tech7,fader_technical11);



	var x_voice=XFade2.ar(mix_voice1,mix_voice2,fader_voice,1);
	var x_voice2=XFade2.ar(mix_voice3,mix_music,fader_voice2,1);


	var x_chatter1=XFade2.ar(mix_chatter1,mix_chatter2,fader_chatter1,1);
	var x_chatter2=XFade2.ar(mix_chatter1,x_chatter1,fader_chatter2,1);
	var x_chatter3=XFade2.ar(mix_chatter2,x_chatter1,fader_chatter3,1);
	var x_chatter4=XFade2.ar(x_chatter2,x_chatter3,fader_chatter4,1);
	var x_chatter5=XFade2.ar(mix_chatter3,x_chatter4,fader_chatter5,1);
	var x_chatter6=XFade2.ar(x_chatter4,x_chatter5,fader_chatter6,1);
	var x_chatter7=XFade2.ar(mix_chatter3,x_chatter5,fader_chatter7,1);
	var x_chatter8=XFade2.ar(x_chatter6,x_chatter7,fader_chatter8,1);


	var x_barrista1=XFade2.ar(mix_barrista1,mix_barrista2,fader_barrista1,1);
	var x_barrista2=XFade2.ar(mix_barrista1,x_barrista1,fader_barrista2,1);
	var x_barrista3=XFade2.ar(mix_barrista2,x_barrista1,fader_barrista3,1);
	var x_barrista4=XFade2.ar(x_barrista2,x_barrista3,fader_barrista4,1);
	var x_barrista5=XFade2.ar(mix_barrista3,x_barrista4,fader_barrista5,1);


	var in1=x_tech8;
	var in2=x_voice;
	var in3=x_voice2;
	var in4=x_chatter8;
	var in5=x_barrista5;

	var x_general=XFade2.ar(in1,in2,fader_general,1);
	var x_general2=XFade2.ar(x_general,in4,fader_general2,1);
	var x_general3=XFade2.ar(x_general2,in2,fader_general3,1);
	var x_general4=XFade2.ar(x_general2,x_general3,fader_general4,1);
	var x_general5=XFade2.ar(x_general4,in5,fader_general5,1);
	var x_general6=XFade2.ar(x_general4,x_general5,fader_general6,1);
	var x_general7=XFade2.ar(x_general5,in5,fader_general7,1);
	var x_general8=XFade2.ar(x_general6,x_general7,fader_general8,1);
	var x_general9=XFade2.ar(x_general8,in4,fader_general9,1);
	var x_general10=XFade2.ar(x_general8,x_general9,fader_general10,1);
	var x_general11=XFade2.ar(x_general9,in3,fader_general11,1);
	var x_general12=XFade2.ar(x_general10,x_general11,fader_general12,1);



	var roomnoise=Pan4.ar(x_general12,fader_room1,fader_room2);
	var roombackground=Pan4.ar(background,0,fader_background);


	var compressor= Compander.ar(roomnoise+roombackground,0.3,0.01,10,1,0.01,0.01);
	var normal=Limiter.ar(compressor,0.5);
	var spread=Splay.arFill(30,normal,1,1,0);

	Mix.fill(12,{spread});


}

~master.play;







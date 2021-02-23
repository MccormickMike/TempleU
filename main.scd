//Hallo!

/* --- some of my stuff! --- */

// YAWN - metal band some granular stuff, a bit of FFT processing, bit shifting, in-ear clicks
// https://www.youtube.com/watch?v=xQB6l7PKONM

// ternOP - improvising laptop/contrabass duo
// https://soundcloud.com/mike-mccormick-music/sets/ternop

// EIDOLON
// https://mikemccormickmusic.com/music/eidolon/

// SCJournals - "live coded" multimedia pieces
// https://www.youtube.com/playlist?list=PLj-xkY-L6IYkg6RrJxi7t2OivP2uSKuMH



/* --- some of your stuff! --- */


// http://joowonpark.net/tag/computer-music/

// NodeProxy Roles

(
Ndef(\test,{
	arg freq = 440;
	var sig = SinOsc.ar(freq) * 0.1;
	sig;

}).play;
)

Ndef(\test)[1] = \filter -> {arg in; in * LFPulse.kr(2)}

Ndef(\test)[25] = \filter -> {arg in; in + WhiteNoise.ar(0.1)}


Ndef(\test)[100] = \filter -> {arg in; in * SinOsc.kr(40)}



Ndef.clear

Ndef(\test).fadeTime = nil
Ndef(\test).set(\freq,440)
Ndef(\test).isPlaying


// Making Standalone Applications


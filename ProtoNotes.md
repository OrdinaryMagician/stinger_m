### Unnamed Weapon / Bigman Gun

 - Undocumented, shape-wise it's reminiscent of the Bigman's guns, so I'm
   going to repurpose it as pretty much that.
 - Texture made from scratch, some handpainting plus detail textures and
   various overlays from Mine.utx just for kicks.
 - It's big. Pretty much as big as a Redeemer, so you need two hands to use it.
 - Fires exploding boolets. Altfire is a rapid fire mode with a lot of recoil.

### Bonesaw?

 - The closest thing to whatever was described in the Unreal bible. Original
   model looked like it could spin, so I did just that.
 - Has "stab" (grab) and "slice" (spin) animations, close enough.
 - Bible describes a "Skaarj Blade" upgrade, guess since I'm using the
   Razorjack texture for them then it's already upgraded.

### Flame Gun

 - Changed up to not make it redundant since the Flamethrower is in too. It
   shoots fireballs, so it's more of a long range single shot weapon compared
   to the medium range dps barrage that is the flamethrower.
 - Altfire is a three-shot burst in a horizontal arc. Kinda like the "spray"
   attack mercs do.
 - The original was supposed to have 900 max ammo, give 100 per pickup and use
   10 per shot. This is dumb so I'm dividing all of that by 10.
 - The model had no UV mapping so I improvised a lot. Thankfully Blender's
   texture paint helped for most of it.

### Flamethrower / Napalm Gun

 - At some point in development, there was a bunch of tubes and stuff for a
   flamethrower. This weapon was never completed, and eventually was
   superseded by the biorifle.
 - What I'm doing here is basically reviving the whole thing, however, rather
   than using the piss-poor old "flamet" texture, I repurposed the JNapalm1
   texture that the "napalm gun" (the proto-biorifle) in 0.871 used.
 - So far the model has been a success, although I failed to notice that it was
   mirrored when I imported it, but it looks better with the little canister on
   the left side. Also I moved the hose to the back like in a proper
   flamethrower. The pickup model has a whole lot of stuff that was entirely my
   doing. It's got a bulkier backpack than the biorifle, that's for sure.
 - Actually I made an alternate model with the old texture. It had some shape
   changes to accomodate for it. I still think the texture sucks. It should be
   switchable, just like how you can change weapon sprites in Smooth Doom.

### Quadshot

 - Oh boy, I have quite the history with this damn thing. Before I even knew
   what it was supposed to be I somehow thought it was a plasma gun / fireball
   launcher and not a shotgun... Yeah.
 - I've done some prettifying here and there, replaced the incomplete hand with
   one from the Automag.
 - Barrel spin is still pump operated, but reload is break action because I
   felt like it.
 - Might smoothen some of the geometry on the fp mesh. Hexagonal barrels aren't
   exactly the best looking.
 - This damn thing has so many frames of animation now, whew. Also I sure blew
   the polycount budget on this, normally Unreal weapons have anywhere from
   200 to 350 polys, but this thing quadruples that (oops).
 - I fixed up the ammo pickup mesh so it has no holes, too.
 - Has some additional animations, mainly for future use in SWWM GZ.

### Impaler

 - Yeah, gonna be following the bible for this one, even if it sounds
   very challenging to make a "seeking beam that arcs between enemies".
 - I re-animated the model. It has a normal fire that shoots the gem, and the
   beam alt-fire too. In addition, a stab is available when out of ammo.
 - Instead of little sparkies here and there I used a fattened copy of the gem
   with an electricity texture.
 - The weapon will use two ammo types. One for individual gems, and another for
   the total charge of each gem (which will be used for the altfire).

### Stunner

 - This one can be used as-is.
 - Made a separate pickup model with holes filled.

### "Teleport gun"

 - Them teleport capsules.
 - Although I can leave this as-is I think I should change the hand.
 - Might also use the UT 220 model just for kicks, since it has an automag
   hand already. Would do it as an alternate skin, like the Flamethrower.

### Old Automag

 - Gotta decide on which version of the skin to use. I personally prefer the
   black one, as it'll difference it from the standard automag.
 - May want to change the hand (which will involve re-animating the gun, welp).
   At least doing that I have an excuse to fix some holes in the mesh.

### Sentry

 - The model clearly has frankenUVs, so I'm going to make actual textures for
   it. Also it's pretty undetailed so I'll fix that too while I'm at it, and
   give it nice anims and stuff, maybe make it multipart so it can rotate
   and whatnot.

### Peacemaker

 - Keep as-is, no changes needed.

### Detector

 - Same, no changes needed.

### Old Minigun / Autocannon

 - Unlike a certain someone I'm not going to butcher this into a "gatling gun".
 - In appearance it's more like some sort of four-barrel cannon, and bears
   resemblance to the Lasergun from Serious Sam, so I animated it to fire each
   barrel one by one like it. Plus an alt-fire that shoots all four, of course.
 - This will be the Redeemer equivalent, so it needs to be powerful as heck but
   have a low ammo count.

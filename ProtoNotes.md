### Unnamed Weapon / Bigman Gun / Demolisher

 - Undocumented, shape-wise it's reminiscent of the Bigman's guns, so I'm
   going to repurpose it as pretty much that.
 - Texture made from scratch, some handpainting plus detail textures and
   various overlays from Mine.utx just for kicks.
 - It's big. Pretty much as big as a Redeemer, so you need two hands to use it.
 - Fires exploding boolets. Altfire is a rapid fire mode with a lot of recoil.
 - Came up with a name for it.
 - Ammo models were improvised by editing the unused sconce part of the Jclip1
   texture.

### Bonesaw? / Razorclaw

 - The closest thing to whatever was described in the Unreal bible. Original
   model looked like it could spin, so I did just that.
 - Has "stab" (grab) and "slice" (spin) animations, close enough.
 - Bible describes a "Skaarj Blade" upgrade, guess since I'm using the
   Razorjack texture for them then it's already upgraded.
 - Also came up with a name for it.

### Flame Gun / Fireblaster

 - Changed up to not make it redundant since the Flamethrower is in too. It
   shoots fireballs, so it's more of a long range single shot weapon compared
   to the medium range dps barrage that is the flamethrower.
 - Altfire is a three-shot burst in a horizontal arc. Kinda like the "spray"
   attack mercs do.
 - The model had no UV mapping so I improvised a lot. Thankfully Blender's
   texture paint helped for most of it.
 - New name given, "flame gun" sounds too placeholder-y.
 - Uses same ammo as flamethrower.

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
 - Ammo is just a recolored explosive barrel.

### Quadshot

 - Oh boy, I have quite the history with this damn thing. Before I even knew
   what it was supposed to be I somehow thought it was a plasma gun / fireball
   launcher and not a shotgun... Yeah.
 - I've done some prettifying here and there, replaced the incomplete hand with
   one from the Automag.
 - Barrel spin is still pump operated, but reload is break action because I
   felt like it.
 - Smoothed out some of the geometry on the fp mesh. Hexagonal barrels aren't
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
 - This weapon is kind of OP, so it needs to be in the BFG replacement pool.
 - Supposedly meant to use the same ammo as the stinger, but... I'm giving it
   a separate one, for balance reasons.

### Stunner

 - This one can be used as-is (though I did fix some holes and stuff).
 - Made a separate pickup model with holes filled.
 - Has a similar regenerating ammo as the dispersion pistol.

### "Teleport gun"

 - Them teleport capsules.
 - Redid the whole thing with the modern hand model.
 - There is a pickup mesh, it's rudimentary but does the job.

### Old Automag / Proto Automag

 - Gun is re-animated in order to use the same hand as the final automag.
 - Uses the old black skin, but the off-hand gun when dual wielding will use
   the newer skin.

### Sentry

 - The source model had frankenUVs and didn't really look any good. So I've
   redone the whole thing. Since I didn't feel like making new textures this
   thing now mixes and matches a couple weapon skins.
 - It's composed of two models so the gun part can rotate independently.
 - Original version is available as a separate item. Gave it some stitched
   textures.

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
 - No ammo pickups.

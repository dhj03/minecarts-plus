# minecarts-plus

An addon for Minecraft BE that brings minecarts to their former glory.

## Background

As Minecraft has evolved over the years, so has the meta for transportation within the game. Modes involving horses, boats on ice, and elytra have all survived the test of time in one way or another, but many others have not been so lucky. The minecart is one such mode that has become more or less obsolete. Aside from how expensive railways are to build, minecarts are ridiculously slow, travelling slower than a car in a school zone... As such, there is little reason why a sane person would seriously consider transportation by rail today, especially in survival.

This addon hopes to change that, without introducing any new items, blocks, or entities. All that's involved is allowing a minecart's speed to be adjustible - from the single operating speed of 28.8km/h that we've known for over a decade, to a range between 0 and 108km/h. And with that, transportation by rail would once again become competitive, offering its own unique set of advantages.

## Installation

This is a behavio(u)r pack for Minecraft Bedrock Edition. For Minecraft Java Edition, consider Minecart Speed Plus or TrainCarts.

For most users, the `.mcpack` installation method is sufficient. To do this, convert the `Minecarts++` folder into a zip file, then rename the file extension to `.mcpack`. Then, double click the file and allow Minecraft BE to install the pack for you. Afterwards, it may be applied to any world or realm of your choice.

In some cases however, you may need to directly modify the files inside the addon. On Windows machines, behaviour packs are located in `C:\Users\[username]\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\behavior_packs`, where you will find the files for all your behaviour packs.

Upon applying a pack to a world, a copy will be made of the pack and made specific to the world such that any global changes made to the pack later will not affect how the pack operates in the world. This may be reversed by deleting the pack copy in the world folder. These folders are located in `...\com.mojang\minecraftWorlds`.

## Usage Guide

From here on out, we will refer to minecart speed in terms of blocks per ten ticks, where 1 b/tt = 2 m/s = 7.2 km/h. A minecart's operating speed is the speed at which it travels when at full power.

Just like in vanilla Minecraft, a minecart will spawn with an operating speed of 4. This addon will allow a minecart to change its operating speed to any integer between 0 and 15 inclusive. There are three main ways in which a minecart changes its operating speed: activator rails, light blocks, and functions + events.

### Activation

Activation is the core mechanism behind minecart acceleration, repurposing the activator rail. When at full power, passing over an activator rail will increment or decrement operating speed by 1, when powered on or off respectively.

Activation is registered per tick, so a minecart travelling at low power will register multiple activations when passing over a single activator rail. This behaviour is non-deterministic, and as such, it is imperative that activation occurs at full power in order to function reliably.

There are three modes of activation a minecart can run under: standard, vanilla, and none. Standard activation is the default mode, of which the behaviour is described above. Vanilla activation causes activator rails to behave as they do in vanilla Minecraft, hence the name. No activation causes activator rails to have no effect on a minecart, akin to a regular rail.

Activation mode is set for minecarts individually, using the functions that end in `actv`.

### Light Blocks

Light blocks set the exact operating speed of a minecart, rather than shifting as with activation. The value of the light block directly determines the new operating speed, as light block values are also integers ranging from 0 to 15 inclusive. The block must be exactly one block above the minecart in order to be detected, generally placed directly above a rail.

This behaviour is disabled for an individual minecart by giving it the `no_light` tag.

### Functions + Events

Functions and entity events provide an interface for direct control over a minecart. Operating speed may be set with the `s[num]` functions, or incremented and decremented with `speed_incr` and `speed_decr`. Functions may also customise other aspects of a minecart including hitbox, ticking, and despawning.

A collection of functions are responsible for activation when a minecart has an operating speed above 10. This is because at such speeds, a minecart is travelling at above 1 block per tick, and thus skipping rails underneath it. Detecting an activator rail therefore requires a (more costly) mechanism separate from the main activation system running when at lower speeds. These functions are not intended for manual execution, and executing them may cause undefined behaviour.

There is also a mechanism for temporarily limiting a minecart's speed to 10 when on diagonal tracks. This is to prevent derailments or rail collisions when traversing snap curves.

### Rail Placement

The placement of rails is very important to consider, as exceeding a certain speed in specific cases will lead to rail collisions or derailment. Here is a basic rundown of the recommended limits that apply:

4 - Continuous corners, continuous curves\
5 - Direct inclines, snap corners\
10 - Protruded inclines, snap curves\
15 - Cascading inclines, straight tracks, diagonal tracks\

Thanks to the `speed_limit_10` mechanism, snap curves may also be traversed when at a nominal operating speed above 10. This does NOT apply to protruded inclines, which will cause a collision or derailment.

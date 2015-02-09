Streamo
=======

A reasonably simple solution to stream to Twitch.tv from Linux, BSD or anything
else using X. Needs just a bourne-compatible shell and ffmpeg (compiled with
`--enable-x11grab`).

Installation
------------

    sudo make install

Usage
-----

You will need to acquire a stream key from Twitch if you have not already. You
can do so on your Twitch.tv dashboard under "Stream Key". Like it says there,
keep this key secret.

    streamo -h

will give you the current set of options as well as the default values. The
regular use-case should look something like this:

    streamo -k live_123_abc -f 60 -r 1920x1080 -c 1 -t 8

To just echo the ffmpeg command without executing it use `-e`:

    streamo -k live_123_abc -e

When using PulseAudio, you can use `pavucontrol` to assign the recording inputs
to monitor your audio output and your microphone as well as the corrosponing
volume levels.

TODO
----

- Proper ALSA support (selecting input devices)

